import 'package:dating/blocs/images_b/images_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import 'widgets/widgets.dart';

class Pictures extends StatelessWidget {
  final TabController tabController;

  const Pictures({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextHeader(
                  tabController: tabController, text: 'Add 2 or More Pictures'),
              SizedBox(
                height: 10,
              ),
              BlocBuilder<ImagesBloc, ImagesState>(
                builder: (context, state) {
                  if (state is ImagesInitial) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (state is ImagesLoaded) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            CustomImageContainer(tabController: tabController),
                            CustomImageContainer(tabController: tabController),
                            CustomImageContainer(tabController: tabController),
                          ],
                        ),
                        Row(
                          children: [
                            CustomImageContainer(tabController: tabController),
                            CustomImageContainer(tabController: tabController),
                            CustomImageContainer(tabController: tabController),
                          ],
                        ),
                      ],
                    );
                  } else {
                    return Text('Go Wrong');
                  }
                },
              ),
            ],
          ),
          Column(
            children: [
              StepProgressIndicator(
                totalSteps: 6,
                currentStep: 4,
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
