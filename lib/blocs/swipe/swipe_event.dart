part of 'swipe_bloc.dart';

abstract class SwipeEvent extends Equatable {
  const SwipeEvent();
}

class LoadUsersEvent extends SwipeEvent{
final List<User> users;

LoadUsersEvent({required this.users});

  @override
  List<Object?> get props => [users];

}


//будем передавать одного юзера
class SwipeLeftEvent extends SwipeEvent{
  final User user;

  SwipeLeftEvent({required this.user});

  @override
  List<Object?> get props => [user];

}

class SwipeRightEvent extends SwipeEvent{
  final User user;

  SwipeRightEvent({required this.user});

  @override
  List<Object?> get props => [user];

}