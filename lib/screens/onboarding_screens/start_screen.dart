import 'package:dating/screens/onboarding_screens/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Start extends StatelessWidget {
  final TabController tabController;

  const Start({
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
            children: [
              Container(
                height: 200,
                width: 200,
                child: SvgPicture.asset('assets/images_b/h.svg'),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Welcome To Arrow ',
                style: Theme.of(context).textTheme.headline2,
              ),
              SizedBox(height: 50),
              Text(
                'Nemo enim chfasdlfnjasdhf asjdfmkla asdjkfo jasdfop ajsdkf  jadsfojasdfjasidf asdfjaiosf ijsf asjidfojkoasd f',
                textAlign: TextAlign.center,
                style:
                    Theme.of(context).textTheme.headline6!.copyWith(height: 1),
              ),
            ],
          ),
          CustomButton(tabController: tabController),
        ],
      ),
    );
  }
}
