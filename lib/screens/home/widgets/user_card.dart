
import 'package:dating/models/models.dart';
import 'package:dating/widgets/widgets.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final User user;

  const UserCard({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 1.4,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    user.imageUrls[0],
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 4,
                    blurRadius: 4,
                    offset: Offset(1, 2),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(100, 0, 0, 0),
                    Color.fromARGB(0, 0, 0, 0),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
            Positioned(
              left: 20,
              bottom: 30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${user.name}, ${user.age}",
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(color: Colors.white),
                  ),
                  Text(
                    "${user.jobTitle}",
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.normal),
                  ),

                  Row(
                    children: [
                      UserImageSmall(
                        imageUrl: user.imageUrls[1],
                      ),
                      UserImageSmall(
                        imageUrl: user.imageUrls[2],
                      ),
                      UserImageSmall(
                        imageUrl: user.imageUrls[3],
                      ),
                      UserImageSmall(
                        imageUrl: user.imageUrls[4],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Icon(Icons.info_outline,size: 25,color: Theme.of(context).primaryColor,),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,color: Colors.white,
                        ),
                        width: 35,
                        height: 35,
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
