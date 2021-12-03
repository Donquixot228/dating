import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final bool hasAction;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.hasAction = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Row(
        children: [
          Expanded(
            child: Image.asset(
              'assets/images_b/logo.png',
              height: 50,
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              title,
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
        ],
      ),
      actions: hasAction
          ? [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.message,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.person,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ]
          : null,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(56);
}
