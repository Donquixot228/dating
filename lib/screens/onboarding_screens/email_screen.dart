import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import 'widgets/widgets.dart';

class Email extends StatelessWidget {
  final TabController tabController;

  const Email({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              CustomTextHeader(
                tabController: tabController,
                text: "What\' Your email Address",
              ),
              CustomTextField(
                tabController: tabController,
                text: 'Enter yout email',
                controller: emailController,
              ),
              SizedBox(
                height: 100,
              ),
              CustomTextHeader(
                tabController: tabController,
                text: "What\' Your password",
              ),
              CustomTextField(
                  tabController: tabController,
                  text: 'Enter yout password',
                  controller: passwordController),
            ],
          ),
          Column(
            children: [
              StepProgressIndicator(
                totalSteps: 6,
                currentStep: 1,
                selectedColor: Colors.blueAccent,
                unselectedColor: Theme.of(context).backgroundColor,
              ),
              SizedBox(height: 10),
              CustomButton(
                tabController: tabController,
                text: 'Next Step',
                emailController: emailController,
                passwordController: passwordController,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
