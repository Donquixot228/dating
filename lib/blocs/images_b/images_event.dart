part of 'images_bloc.dart';

abstract class ImagesEvent extends Equatable {
  const ImagesEvent();
}

class LoadImages extends ImagesEvent{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class UpdateImages extends ImagesEvent{
  final List<dynamic> imageUlrs;

  UpdateImages(this.imageUlrs);

  @override
  // TODO: implement props
  List<Object?> get props => [imageUlrs];
}