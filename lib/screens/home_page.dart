import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String urlPinkRoseImage =
      'https://www.almanac.com/sites/default/files/styles/primary_image_in_article/public/image_nodes/rose-pink.jpg?itok=R526N90N';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Happy Flower App"),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              getMessage(),
              style: TextStyle(
                fontSize: 36.0,
                fontFamily: 'Pacifico',
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Image(
              image: AssetImage('images/rose-pink.jpg'),
            ),
            Text(
              'Pink Rose',
              style: TextStyle(
                fontSize: 36.0,
                fontFamily: 'Pacifico',
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ], // end of array of children elements
        ),
      ),
    );
  }

  String getMessage() {
    String message = 'Happy ${getMonthName()}!';
    return message;
  }

  String getMonthName() {
    String dayType;
    int currentMonthNum;
    DateTime date = DateTime.now();
    currentMonthNum = date.month;
    List<String> monthStrArr = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December'
    ];
    String monthName;
    monthName = monthStrArr[currentMonthNum - 1];
    return monthName;
  }
}
