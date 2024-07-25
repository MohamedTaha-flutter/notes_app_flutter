import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:notes_app/Widget/text_form_field_widget.dart';

import '../styel/color.dart';

class EditNotesScreen extends StatelessWidget {
  EditNotesScreen({super.key});

  TextEditingController titleController = TextEditingController();

  TextEditingController contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
          statusBarColor: Colors.black45,
        ),
        title: const Text(
          "Edit  Notes ",
          style: TextStyle(fontSize: 27),
        ),
        actions: [
          Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.08),
                  borderRadius: BorderRadius.circular(8)),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit,
                    size: 30,
                  )))
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),

          TextFormFieldWidget(
            maxLine: 1,
            controller: titleController,
            label: const Text(
              "Title",
              style: TextStyle(color: mainColor),
            ),
            prefixIcon: const Icon(Icons.title, color: Colors.teal),
          ),
          const SizedBox(
            height: 60,
          ),
          TextFormFieldWidget(
            maxLine: 7,
            controller: contentController,
            label: const Text(
              "content",
              style: TextStyle(color: mainColor),
            ),
            prefixIcon: const Icon(Icons.title, color: mainColor),
          ),

        ],
      ),
    );
  }
}
