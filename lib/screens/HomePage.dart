import 'package:flutter/material.dart';
import 'package:mynewapp/models/hairspecialist.dart';

import '../components/categories.dart';
import '../components/packages.dart';
import '../components/title_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              //title for packages
              TitleSection(
                text: "\t Prepared Packages",
                press: () {},
              ),
              SizedBox(
                height: 10,
              ),
              // packages
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Packages(
                      image: "images/1.jpg",
                      category: "Bridal",
                      numOfOffers: 5,
                      press: () {},
                    ),
                    Packages(
                      image: "images/1.jpg",
                      category: "Bridal",
                      numOfOffers: 8,
                      press: () {},
                    ),
                  ],
                ),
              ), //For packages
              SizedBox(
                height: 20,
              ),
              TitleSection(
                text: "\t Categories",
                press: () {},
              ),
              SizedBox(
                height: 10,
              ),
              Categories(),
              SizedBox(
                height: 10,
              ),
              TitleSection(
                text: "\t Hair Specialist",
                press: () {},
              ),
              SingleChildScrollView(
                child: Row(
                  children: [
                    ...List.generate(
                        demoo.length,
                        (index) => shower(
                              specialist: demoo[index],
                            ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class shower extends StatelessWidget {
  const shower(
      {super.key,
      this.width = 140,
      this.aspectRatio = 1.02,
      required this.specialist});

  final double width, aspectRatio;
  final Specailist specialist;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: SizedBox(
        width: width,
        child: Column(
          children: [
            SizedBox(
              width: 140,
              height: 150,
              child: AspectRatio(
                aspectRatio: 1.02,
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xffc38a9e).withOpacity(0.4),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(specialist.images[0]),
                ),
              ),
            ),
            Text(specialist.title),
            Container(
              child: Text(specialist.description),
            )
          ],
        ),
      ),
    );
  }
}
