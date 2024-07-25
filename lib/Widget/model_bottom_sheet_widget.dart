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
      child: Container(
        height: 800,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
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
                height: 10,
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
              const SizedBox(
                height: 80,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: MaterialButton(
                    onPressed: () {},
                    color: mainColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)
                    ),
                    child: const Text("Add"),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
