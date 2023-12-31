import 'package:flutter/material.dart';

class Details extends StatelessWidget {
   final String title;
  final String description;
  final String imageUrl;
// Add the selectedDate parameter

  Details({
    required this.title,
    required this.description,
    required this.imageUrl,
 // Receive the selected date
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detailed Content'),
      ),
       body: SingleChildScrollView( // Wrap the content in a SingleChildScrollView
        child: Column(
          children: [
            Image.network(imageUrl), // Display the image
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                description,
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}