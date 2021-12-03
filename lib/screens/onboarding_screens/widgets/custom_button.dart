import 'package:dating/cubits/signup/signup_cubit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class CustomButton extends StatelessWidget {
  final TabController tabController;
  final String text;


  const CustomButton({
    Key? key,
    required this.tabController,
    this.text = 'Start',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
      ),
      child: ElevatedButton(
        onPressed: () {
          tabController.animateTo(tabController.index + 1);
          if(tabController.index == 2){
            context.read<SignupCubit>().signupWithCredential();
          }
        },
        child: Container(
            width: double.infinity,
            child: Center(
                child: Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: Colors.white),
            ))),
      ),
    );
  }
}
