import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dating/models/models.dart';
import 'package:equatable/equatable.dart';

part 'swipe_event.dart';

part 'swipe_state.dart';

class SwipeBloc extends Bloc<SwipeEvent, SwipeState> {
  SwipeBloc() : super(SwipeInitial()) {
    on<LoadUsersEvent>(_loadUsersToState);
    on<SwipeLeftEvent>((event, SwipeState) => _swipeLeftToState(event, state));
    on<SwipeRightEvent>((event, SwipeState) =>
        _swipeRightToState(event, state));
  }

  Future<void> _loadUsersToState(LoadUsersEvent event,
      Emitter<SwipeState> emit) async {
    emit(
      SwipeLoaded(users: event.users),
    );
  }

  Future<void> _swipeLeftToState(SwipeLeftEvent event,
      SwipeState state,) async {
    if (state is SwipeLoaded) {
      try {
        emit(
          SwipeLoaded(
            users: List.from(state.users)
              ..remove(event.user),
          ),
        );
      } catch (_) {}
    }
  }

  Future<void> _swipeRightToState(SwipeRightEvent event,
      SwipeState state) async {
    if (state is SwipeLoaded) {
      try {
        emit(
          SwipeLoaded(
            users: List.from(state.users)
              ..remove(event.user),
          ),
        );
      } catch (_) {}
    }
  }
}