import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final TabController tabController;
  final String text;
  final TextEditingController? emailController;
  final TextEditingController? passwordController;

  const CustomButton({
    Key? key,
    required this.tabController,
    this.text = 'Start',
    this.emailController,
    this.passwordController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
      ),
      child: ElevatedButton(
        onPressed: () async {
          if (emailController != null && passwordController != null) {
            await FirebaseAuth.instance
                .createUserWithEmailAndPassword(
                  email: emailController!.text,
                  password: passwordController!.text,
                )
                .then((value) => print('User Added'))
                .catchError((e) => print('Faelied'));
          }
          tabController.animateTo(tabController.index + 1);
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
