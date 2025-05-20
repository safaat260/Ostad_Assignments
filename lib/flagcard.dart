import 'package:flutter/material.dart';
import 'package:ostad_assignments/countryinfo.dart';

class flagcard extends StatelessWidget {
  final Countryinfo countrydetails;
  const flagcard({super.key, required this.countrydetails});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 3,
        color: Colors.grey.shade100,
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                child: Image.asset(
                  height: 200,
                  countrydetails.countryimage,
                  fit: BoxFit.fill,
                ),
              ),
            ),

            //countryname
            Text(
              countrydetails.countryname,
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),

            //countrysubtitle
            Text(
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              softWrap: false,
              countrydetails.subtitle,
              style: TextStyle(fontSize: 20, color: Colors.grey, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Book A Ticket",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Icon(Icons.explore, size: 20, color: Colors.blue),
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
