import 'package:flutter/material.dart';
import 'package:mynewapp/HomePageComp/catergories/Nails.dart';
import 'package:mynewapp/HomePageComp/catergories/coloring.dart';
import 'package:mynewapp/HomePageComp/catergories/extensions.dart';
import 'package:mynewapp/HomePageComp/catergories/haircut.dart';

import 'catergories/facial.dart';
import 'catergories/makeup.dart';
import 'catergories/photography.dart';
import 'catergories/styling.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {super.key, required this.icon, required this.text, required this.press});
  final GestureTapCallback press;
  final String icon, text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: 55,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffc38a9e).withOpacity(.8),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(icon),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories1 = [
      {"icon": "icons/scissors.png", "text": "HairCut", "pressed": HairCut()},
      {"icon": "icons/brush.png", "text": "Coloring", "pressed": Coloring()},
      {"icon": "icons/styling.png", "text": "Styling", "pressed": Styling()},
      {
        "icon": "icons/extensions.png",
        "text": "Extensions",
        "pressed": Extensions()
      },
    ];
    List<Map<String, dynamic>> categories2 = [
      {"icon": "icons/nails.png", "text": "Nails", "pressed": Nails()},
      {"icon": "icons/facial.png", "text": "Facials", "pressed": Facial()},
      {"icon": "icons/makeup.png", "text": "MakeUp", "pressed": Makeup()},
      {
        "icon": "icons/camera.png",
        "text": "Photography",
        "pressed": Photography()
      },
    ];
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 10,
            ),
            ...List.generate(
              categories1.length,
              (index) => CategoryCard(
                icon: categories1[index]["icon"],
                text: categories1[index]["text"],
                press: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return categories1[index]["pressed"];
                    },
                  ));
                },
              ),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 10,
            ),
            ...List.generate(
              categories2.length,
              (index) => CategoryCard(
                icon: categories2[index]["icon"],
                text: categories2[index]["text"],
                press: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return categories2[index]["pressed"];
                    },
                  ));
                },
              ),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        )
      ],
    );
  }
}
