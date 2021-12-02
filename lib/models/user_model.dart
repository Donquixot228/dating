import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String name;
  final int age;
  final List<String> imageUrls;
  final List<String> interest;
  final String bio;
  final String jobTitle;

  const User({
    required this.id,
    required this.name,
    required this.age,
    required this.imageUrls,
    required this.bio,
    required this.jobTitle,
    required this.interest,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        age,
        imageUrls,
        bio,
        jobTitle,
      ];

  static List<User> users = [
    User(
      id: 1,
      name: "Alisa",
      age: 25,
      imageUrls: [
        'https://images.unsplash.com/photo-1637966498276-ba19172b1a06?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
        'https://images.unsplash.com/photo-1637966496285-ea1f91852c2b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60',
        'https://images.unsplash.com/photo-1637966497905-243274ff0b66?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
        'https://images.unsplash.com/photo-1637883705440-217a7790028a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MzN8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
        'https://images.unsplash.com/photo-1637883854518-6d1ed7a6929d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MzR8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
        'https://images.unsplash.com/photo-1637883705869-f49977d930fa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8Mjl8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60'
      ],
      interest: ['Music','Politics','Hiking'],
      bio:
          "tus error sit volums Sed ut perspiciatis unde omnis iste natus error sit volums Sed ut perspiciatis unde omnis iste natus error sit volums",
      jobTitle: 'Job Title Here',
    ),
    User(
      id: 2,
      name: "Anna",
      age: 35,
      imageUrls: [
        'https://images.unsplash.com/photo-1637966496285-ea1f91852c2b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60',
        'https://images.unsplash.com/photo-1637966497905-243274ff0b66?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
        'https://images.unsplash.com/photo-1637883705440-217a7790028a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MzN8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
        'https://images.unsplash.com/photo-1637883854518-6d1ed7a6929d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MzR8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
        'https://images.unsplash.com/photo-1638030115930-4892cd27cf11?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
      ],
      interest: ['Music','Politics','Hiking'],

      bio: "Sed ut perspiciatis unde omnis iste natus error sit volums",
      jobTitle: 'Job Title Here',
    ),
    User(
      id: 3,
      name: "Margo",
      age: 32,
      imageUrls: [
        'https://images.unsplash.com/photo-1637966495612-e4cad604d5b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MjZ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
        'https://images.unsplash.com/photo-1637794761531-ca4d8231bd36?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8Mzl8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
        'https://images.unsplash.com/photo-1637794760697-dbf9ece71c42?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8NDF8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
        'https://images.unsplash.com/photo-1637386694450-70e88f7ddbbf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8NTl8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
      ],
      bio: "Sed ut perspiciatis unde omnis iste natus error sit volums",
      interest: ['Music','Politics','Hiking'],

      jobTitle: 'Job Title Here',
    ),
    User(
      id: 4,
      name: "Lesya",
      age: 29,
      imageUrls: [
        'https://images.unsplash.com/photo-1637722876963-4c68ebce6d87?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8NTB8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
        'https://images.unsplash.com/photo-1637722875134-56b7ac0585de?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8NTN8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
        'https://images.unsplash.com/photo-1637722875241-39acc7a6c2c4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8NTJ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
        'https://images.unsplash.com/photo-1637722874000-7376f74a959a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8NTR8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
      ],
      bio: "Sed ut perspiciatis unde omnis iste natus error sit volums",
      interest: ['Music','Politics','Hiking'],

      jobTitle: 'Job Title Here',
    ),
    User(
      id: 5,
      name: "Lola",
      age: 22,
      imageUrls: [
        'https://images.unsplash.com/photo-1637386695817-0b76cacd4a69?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8NjB8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
        'https://images.unsplash.com/photo-1637722875134-56b7ac0585de?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8NTN8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
        'https://images.unsplash.com/photo-1637722875241-39acc7a6c2c4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8NTJ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
        'https://images.unsplash.com/photo-1637722874000-7376f74a959a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8NTR8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
      ],
      bio: "Sed ut perspiciatis unde omnis iste natus error sit volums",
      interest: ['Music','Politics','Hiking'],

      jobTitle: 'Job Title Here',
    ),
  ];
}
