part of 'images_bloc.dart';

abstract class ImagesState extends Equatable {
  const ImagesState();
}

class ImagesInitial extends ImagesState {
  @override
  List<Object> get props => [];
}

class ImagesLoaded extends ImagesState{
  final List<dynamic> imageUrls;

  ImagesLoaded({this.imageUrls = const []});
  @override
  // TODO: implement props
  List<Object?> get props => [imageUrls];
}
