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
    double clipReaction;//ratio of height and width
    if (Pixel_Size > 1024) {
      crossAxisCount = 4;
      clipReaction = 0.95;
    } else if (Pixel_Size >= 768) {
      crossAxisCount = 3;
      clipReaction = 0.7;
    }
    else if(Pixel_Size < 550){
      crossAxisCount = 2;
      clipReaction = 0.55;
    }
    else {
      crossAxisCount = 2;
      clipReaction = 0.5;
    }

    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.green,
      ),
      //appbar
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white, size: 30),
        backgroundColor: Colors.green,
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search, size: 35, color: Colors.white,))
        ],
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
          childAspectRatio: clipReaction,//height and width ratio
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
