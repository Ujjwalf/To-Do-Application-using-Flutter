import 'package:flutter/material.dart';

import 'my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey.shade500,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Add a new task",
                  hintStyle: TextStyle(fontSize: 16, color: Colors.black)),
            ),

            // buttons -> save + cancel

            const SizedBox(
              height: 13,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // save button
                MyButton(text: "Save", onPressed: onSave),

                const SizedBox(width: 55),

                // cancel button
                MyButton(
                  text: "Cancel",
                  onPressed: onCancel,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
