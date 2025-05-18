import 'package:flutter/material.dart';
import 'package:ostad_assignments/countryinfo.dart';
import 'flagcard.dart';

class assignment_02_home extends StatefulWidget {
  const assignment_02_home({super.key});

  @override
  State<assignment_02_home> createState() => _assignment_02_homeState();
}

class _assignment_02_homeState extends State<assignment_02_home> {
  @override
  Widget build(BuildContext context) {
    final Pixel_Size = MediaQuery.of(context).size.width; //media query
    //Desktop/web size (Pixel size > 1024 ) = 4
    // Tablet Size ( 1024 >= Pixel size > 768) = 3
    // Mobile Size (Pixel size < 768) = 2

    int crossAxisCount;
    if (Pixel_Size > 1024) {
      crossAxisCount = 4;
    } else if (Pixel_Size >= 768) {
      crossAxisCount = 3;
    } else {
      crossAxisCount = 2;
    }

    return Scaffold(
      //appbar
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text(
          "Assignment 2",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      //gridview
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 5,
          mainAxisSpacing: 20,
        ),

        itemCount: countries.length,
        itemBuilder: (context, index){
          return flagcard(countrydetails: countries[index]);
        },
      ),
    );
  }
}
