import 'dart:developer';

import 'package:dating/blocs/swipe/swipe_bloc.dart';
import 'package:dating/models/models.dart';
import 'package:dating/screens/screens.dart';
import 'package:dating/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Discover',),
      body: BlocBuilder<SwipeBloc, SwipeState>(
        builder: (context, state) {
          if (state is SwipeInitial) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is SwipeLoaded) {
            return Column(
              children: [
                InkWell(onDoubleTap: (){
                  Navigator.pushNamed(context, UsersScreen.routeName,arguments: state.users[0]);
                },
                  child: Draggable(
                    child: UserCard(user: state.users[0]),
                    feedback: UserCard(user: state.users[0]),
                    childWhenDragging: UserCard(user: state.users[1]),
                    onDragEnd: (drag) {
                      if (drag.velocity.pixelsPerSecond.dx < 0) {
                        context.read<SwipeBloc>()
                          ..add(SwipeLeftEvent(user: state.users[0]));
                        log('Swoped left');
                      } else {
                        context.read<SwipeBloc>()
                          ..add(SwipeRightEvent(user: state.users[0]));
                        log('Swoped right');
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 60,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {context.read<SwipeBloc>()
                          ..add(SwipeLeftEvent(user: state.users[0]));
                        log('Swoped left');},
                        child: ChoiceButton(
                          width: 60,
                          height: 60,
                          size: 25,
                          hasGradient: false,
                          color: Colors.red,
                          icon: Icons.clear_rounded,
                        ),
                      ),
                      InkWell(
                        onTap: () {

                        },
                        child: ChoiceButton(
                          width: 80,
                          height: 78,
                          size: 30,
                          hasGradient: true,
                          color: Colors.white,
                          icon: Icons.favorite,
                        ),
                      ),
                      InkWell(
                        onTap: () {context.read<SwipeBloc>()
                          ..add(SwipeRightEvent(user: state.users[0]));
                        log('Swoped right');},
                        child: ChoiceButton(
                          width: 60,
                          height: 60,
                          size: 25,
                          hasGradient: false,
                          color: Theme.of(context).primaryColor,
                          icon: Icons.watch_later,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          } else {
            return Text('Something went wrong');
          }
        },
      ),
    );
  }
}
