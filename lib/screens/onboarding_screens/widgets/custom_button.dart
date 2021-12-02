import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final TabController tabController;
  final String text;
  const CustomButton({
    Key? key,
    required this.tabController,
    this.text = 'Start'
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
      ),
      child: ElevatedButton(
        onPressed: () {
          tabController.animateTo(tabController.index+1);
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
