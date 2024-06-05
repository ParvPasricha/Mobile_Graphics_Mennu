import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'BROWSE CATEGORIES',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Text(
                "Not sure about exactly which recipe you're looking for? Do a search, or dive into our most popular categories.",
                textAlign: TextAlign.center,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'BY MEAT',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CategoryImage('images/beef.jpg', 'BEEF'),
                  CategoryImage('images/chicken.jpeg', 'CHICKEN'),
                  CategoryImage('images/pork.jpeg', 'PORK'),
                  CategoryImage('images/seafood.jpg', 'SEAFOOD'),
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'BY COURSE',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CourseImage('images/main_dishes.jpeg', 'Main Dishes'),
                  CourseImage('images/salad.jpeg', 'Salad Recipes'),
                  CourseImage('images/side_dishes.jpeg', 'Side Dishes'),
                  CourseImage('images/crockpot.jpeg', 'Crockpot'),
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'BY DESSERT',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CourseImage('images/ice_cream.jpeg', 'Ice Cream'),
                  CourseImage('images/brownies.jpeg', 'Brownies'),
                  CourseImage('images/pies.jpeg', 'Pies'),
                  CourseImage('images/cookies.jpeg', 'Cookies'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryImage extends StatelessWidget {
  final String imagePath;
  final String label;

  const CategoryImage(this.imagePath, this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipOval(
          child: Image.asset(imagePath, width: 80, height: 80, fit: BoxFit.cover),
        ),
        Text(
          label,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class CourseImage extends StatelessWidget {
  final String imagePath;
  final String label;

  const CourseImage(this.imagePath, this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ClipOval(
          child: Image.asset(imagePath, width: 80, height: 80, fit: BoxFit.cover),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: 80,
            padding: const EdgeInsets.symmetric(vertical: 4),
            color: Colors.transparent,
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}