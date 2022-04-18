// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:medica_app_ui/util/category_card.dart';
import 'package:medica_app_ui/util/doctor_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            // app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // name
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 16),
                      Text(
                        "Hello, ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "ROG-IO",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),

                  // profile picture
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(Icons.person),
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            // card -> How do you feel?
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.pink[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      // animation or cute picture
                      Container(
                        height: 100,
                        width: 100,
                        child: Lottie.network(
                            'https://assets3.lottiefiles.com/packages/lf20_go0wc4l3.json'),
                      ),
                      SizedBox(
                        width: 20,
                      ),

                      // how do you feel - get started button
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'How do you feel?',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 12),
                            Text(
                              'Fill out your medical card right now',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(height: 8),
                            Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Colors.deepPurple[300],
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: Text(
                                  'Get Started',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )),
            ),

            SizedBox(height: 25),

            // search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: 'How can we help?',
                  ),
                ),
              ),
            ),

            SizedBox(height: 25),

            // horizontal listview -> categories
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryCard(
                    categoryName: 'Dentist',
                    iconImagePath: 'lib/icons/tooth.png',
                  ),
                  CategoryCard(
                    categoryName: 'Surgeon',
                    iconImagePath: 'lib/icons/surgeon.png',
                  ),
                  CategoryCard(
                    categoryName: 'Pharmacist',
                    iconImagePath: 'lib/icons/medicine.png',
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            // doctor list
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Doctor List',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  DoctorCard(
                    doctorImagePath: 'lib/images/doctor1.jpg',
                    rating: '4.9',
                    doctorName: 'Dr. Sandra Merrilyn',
                    doctorProfession: 'Therapist',
                  ),
                  DoctorCard(
                    doctorImagePath: 'lib/images/doctor2.jpg',
                    rating: '4.4',
                    doctorName: 'Dr. Jerrard Williamson',
                    doctorProfession: 'Surgeon',
                  ),
                  DoctorCard(
                    doctorImagePath: 'lib/images/doctor3.jpg',
                    rating: '4.5',
                    doctorName: 'Dr. Daley Catherina',
                    doctorProfession: 'Dentisit',
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
