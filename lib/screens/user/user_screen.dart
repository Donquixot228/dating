import 'package:dating/models/models.dart';
import 'package:dating/widgets/choice_button.dart';
import 'package:flutter/material.dart';

class UsersScreen extends StatelessWidget {

  final User user;
  const UsersScreen({required this.user});
  static const String routeName = '/users';

  static Route route({required User user}) {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) =>  UsersScreen(user: user),
    );
  }






  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: NetworkImage(user.imageUrls[0]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ChoiceButton(
                          color: Colors.black,
                          icon: Icons.clear_rounded,
                        ),
                        ChoiceButton(
                          width: 80,
                          height: 80,
                          size: 30,
                          color: Colors.white,
                          icon: Icons.favorite,
                          hasGradient: true,
                        ),
                        ChoiceButton(
                          color: Theme.of(context).primaryColor,
                          icon: Icons.watch_later,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${user.name}, ${user.age}',
                  style: Theme.of(context).textTheme.headline2,
                ),
                Text(
                  '${user.jobTitle}',
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'About',
                  style: Theme.of(context).textTheme.headline3,
                ),
                Text(
                  '${user.bio}',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(height: 2),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Interests',
                  style: Theme.of(context).textTheme.headline3,
                ),
                Row(
                  children: user.interest
                      .map(
                        (interest) => Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.only(
                            top: 5,
                            right: 5,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: LinearGradient(colors: [
                              Theme.of(context).primaryColor,
                              Colors.red,
                            ]),
                          ),
                          child: Text(
                            interest,
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
