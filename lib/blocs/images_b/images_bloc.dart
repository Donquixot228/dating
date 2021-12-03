import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dating/repositories/database/database_repository.dart';
import 'package:equatable/equatable.dart';

part 'images_event.dart';

part 'images_state.dart';

class ImagesBloc extends Bloc<ImagesEvent, ImagesState> {
  DataBaseRepository _dataBaseRepository;
  StreamSubscription? _databaseSubscription;

  ImagesBloc({required DataBaseRepository dataBaseRepository})
      : _dataBaseRepository = dataBaseRepository,
        super(ImagesInitial()) {
    on<LoadImages>((event, emit) {
      _databaseSubscription?.cancel();
      _dataBaseRepository.getUser().listen((user)=>add(UpdateImages(user.imageUrls)));
    });
    on<UpdateImages>((event, emit) {
    emit(ImagesLoaded(imageUrls: event.imageUlrs));
    });
  }
}
