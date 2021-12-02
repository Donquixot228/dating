import 'package:dating/models/models.dart';
import 'package:dating/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('This is route : ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:

         case MatchesScreen.routeName:
           return MatchesScreen.route();
       case UsersScreen.routeName:
         return UsersScreen.route(user: settings.arguments as User);
       case ChatScreen.routeName:
         return ChatScreen.route(userMatch: settings.arguments as UserMatch);
     case OnboardingScreen.routeName:
       return OnboardingScreen.route();
      case ProfileScreen.routeName:
        return ProfileScreen.route();


      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
      ),
    );
  }
}
