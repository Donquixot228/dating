import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import 'widgets/widgets.dart';

class Demographics extends StatelessWidget {
  final TabController tabController;

  const Demographics({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextHeader(
                tabController: tabController,
                text: "Whats\'s your gender?",
              ),
              SizedBox(
                height: 10,
              ),
              CustomCheckBox(
                tabController: tabController,
                text: 'MALE',
              ),
              CustomCheckBox(
                tabController: tabController,
                text: 'FEMALE',
              ),
              SizedBox(
                height: 100,
              ),
              CustomTextHeader(
                tabController: tabController,
                text: "Whats\'s your age?",
              ),
              CustomTextField(
                  controller: controller,
                  tabController: tabController,
                  text: 'Enter your Age'),
            ],
          ),
          Column(
            children: [
              StepProgressIndicator(
                totalSteps: 6,
                currentStep: 3,
                selectedColor: Colors.blueAccent,
                unselectedColor: Theme.of(context).backgroundColor,
              ),
              SizedBox(height: 10),
              CustomButton(tabController: tabController, text: 'Next Step'),
            ],
          ),
        ],
      ),
    );
  }
}
