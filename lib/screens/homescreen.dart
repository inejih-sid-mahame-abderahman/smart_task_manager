import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu, size: 30),
          title: Text(
            "my tasks",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: [Icon(Icons.add, size: 50, color: Colors.blueAccent)],
        ),
        body: ListView(
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "All",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "All",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            ListTile(
              leading: Icon(Icons.task),
              title: Text('clear your teeth'),
              trailing: Icon(Icons.more_vert),
            ),
            ListTile(
              leading: Icon(Icons.task),
              title: Text('clean you cloths'),
              trailing: Icon(Icons.more_vert),
            ),
            ListTile(
              leading: Icon(Icons.task),
              title: Text('clear your room'),
              trailing: Icon(Icons.more_vert),
            ),
          ],
        ),
      ),
    );
  }
}
