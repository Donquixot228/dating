import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import 'widgets/widgets.dart';

class Biography extends StatelessWidget {
  final TabController tabController;

  const Biography({
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
                text: "Describe Yourself a bit",
              ),
              CustomTextField(
                tabController: tabController,
                text: 'Enter your BIO',
                controller: controller,
              ),
              SizedBox(
                height: 100,
              ),
              CustomTextHeader(
                tabController: tabController,
                text: "What do you like",
              ),
              Row(
                children: [
                  CustomTextContainer(
                    tabController: tabController,
                    text: 'Music',
                  ),
                  CustomTextContainer(
                    tabController: tabController,
                    text: 'Economics',
                  ),
                  CustomTextContainer(
                    tabController: tabController,
                    text: 'ART',
                  ),
                  CustomTextContainer(
                    tabController: tabController,
                    text: 'Politics',
                  ),
                ],
              ),
              Row(
                children: [
                  CustomTextContainer(
                    tabController: tabController,
                    text: 'Nature',
                  ),
                  CustomTextContainer(
                    tabController: tabController,
                    text: 'Hiking',
                  ),
                  CustomTextContainer(
                    tabController: tabController,
                    text: 'Footlball',
                  ),
                  CustomTextContainer(
                    tabController: tabController,
                    text: 'Movies',
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              StepProgressIndicator(
                totalSteps: 6,
                currentStep: 5,
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
