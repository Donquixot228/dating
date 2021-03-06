import 'package:dating/cubits/signup/signup_cubit.dart';
import 'package:dating/repositories/auth_repository.dart';
import 'package:dating/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'screens.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  static const String routeName = '/onboarding';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) =>
          BlocProvider(
            create: (_) => SignupCubit(authRepository: context.read<AuthRepository>()),
            child: OnboardingScreen(),
          ),
    );
  }

  static const List<Tab> tabs = <Tab>[
    Tab(text: 'Start'),
    Tab(text: 'Email'),
    Tab(text: 'Email Verification'),
    Tab(text: 'Demographics'),
    Tab(text: 'Pictures',),
    Tab(text: 'Biography',)
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Builder(builder: (BuildContext context) {
        final TabController tabController = DefaultTabController.of(context)!;
        tabController.addListener(() {
          if (!tabController.indexIsChanging) {}
        });
        return Scaffold(
          appBar: CustomAppBar(
            title: 'Arrow',
            hasAction: false,
          ),
          body: TabBarView(
            children: [
              Start(tabController: tabController),
              Email(tabController: tabController),
              EmailVerification(tabController: tabController),
              Demographics(tabController: tabController),
              Pictures(tabController: tabController),
              Biography(tabController: tabController),
            ],
          ),
        );
      }),
    );
  }
}
