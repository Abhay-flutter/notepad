import 'package:flutter/material.dart';

class CardFullScreen extends StatefulWidget {
  CardFullScreen(
      {super.key,
      required this.title,
      required this.description,
      required this.date,
      required this.color});

  final String title;
  final String description;
  final String date;
  final Color color;

  @override
  State<CardFullScreen> createState() => _CardFullScreenState();
}

class _CardFullScreenState extends State<CardFullScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        centerTitle: true,
        title: Text(widget.title, style: TextStyle(fontSize: 24)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(widget.date,
                    textAlign: TextAlign.justify,
                    style:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(widget.description,
                textAlign: TextAlign.justify, style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
