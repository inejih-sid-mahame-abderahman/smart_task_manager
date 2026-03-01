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
          actions: [
            IconButton(
              icon: Icon(Icons.add, size: 30, color: Colors.blueAccent),
              onPressed: () => _opentaskaddingDialog(context),
            ),
          ],
        ),
        body: ListView(
          children: [
            SizedBox(height: 20),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  _buildChip("All", isSelected: true),
                  const SizedBox(width: 8), // Space between chips
                  _buildChip("Work"),
                  const SizedBox(width: 8),
                  _buildChip("Personal"),
                  const SizedBox(width: 8),
                  _buildChip("Shopping"),
                ],
              ),
            ),

            SizedBox(height: 30),
            _buildTaskItemcards("Design a new logo for the company"),
            _buildTaskItemcards("Prepare presentation for Monday's meeting"),
            _buildTaskItemcards("Buy groceries for the week"),
          ],
        ),
      ),
    );
  }

  Widget _buildChip(String label, {bool isSelected = false}) {
    return ChoiceChip(
      label: Text(label),
      selected: isSelected,
      onSelected: (bool selected) {
        // Handle selection here
      },
      // Customize colors to match your purple theme
      selectedColor: const Color(0xFF6B4EFF),
      labelStyle: TextStyle(
        color: isSelected ? Colors.white : Colors.black,
        fontWeight: FontWeight.bold,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    );
  }

  Widget _buildTaskItemcards(String task_title) {
    return ListTile(
      leading: Icon(Icons.task),
      title: Text(task_title),
      trailing: Icon(Icons.more_vert),
    );
  }

  Future _opentaskaddingDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Add New Task"),
          content: TextField(
            decoration: InputDecoration(hintText: "Enter task title"),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Add Task"),
            ),
          ],
        );
      },
    );
  }
}
