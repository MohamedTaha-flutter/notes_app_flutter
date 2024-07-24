import 'package:flutter/material.dart';
import 'package:notes_app/Widget/text_form_field_widget.dart';
import 'package:notes_app/styel/color.dart';

class ShowModelBottomSheetWidget extends StatelessWidget {
  ShowModelBottomSheetWidget({super.key});

  TextEditingController titleController = TextEditingController();

  TextEditingController contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextFormFieldWidget(
            contentVerticalPadding: 40,
            controller: titleController,
            label: const Text(
              "Title",
              style: TextStyle(color: mainColor),
            ),
            prefixIcon: const Icon(Icons.title, color: Colors.teal),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormFieldWidget(
            contentVerticalPadding: 60,
            controller: contentController,
            label: const Text(
              "content",
              style: TextStyle(color: mainColor),
            ),
            prefixIcon: const Icon(Icons.title, color: mainColor),
          ),
          const SizedBox(
            height: 120,
          ),
          SizedBox(
              width: double.infinity,
              child: MaterialButton(
                onPressed: () {},
                color: mainColor,
                child: const Text("Add"),
              ))
        ],
      ),
    );
  }
}
