import 'package:fitness_tracker/constants/colors.dart';
import 'package:fitness_tracker/utils/responsive.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
final bool isDesktop = Responsive.isDesktop(context);

    return Row(
      children: [

if (!isDesktop)
GestureDetector(
  onTap: () {
    Scaffold.of(context).openDrawer();
  },
  child: Padding(padding: EdgeInsets.all(8),
  child: Icon(Icons.menu,
  color: greyColor,
  size: 25,
  ),
  ),
),

        Expanded(child: TextField(
          style: TextStyle(
            color: greyColor,
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: cardBackgroundColor,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.transparent,
              )
            ),
            labelStyle: TextStyle(
              color: greyColor,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Theme.of(context).primaryColor,)
            ),
            contentPadding: EdgeInsets.symmetric(
              vertical: 5,
            ),
            hintText: "Search",
            hintStyle: TextStyle(
              color: greyColor,
            ),
            prefixIcon: Icon(Icons.search,
            color: greyColor,
            size: 21,)
          ),
        )),

        // show the summery page if the screen size is  not a desktop size in endDrawer
        if(!isDesktop)
        InkWell(
          onTap: () {
            Scaffold.of(context).openEndDrawer();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset("assets/icons/user.png",
              width: 40,
              ),
              
            ),
          ) 

        )

      ],
    );
  }
}