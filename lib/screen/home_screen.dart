import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Widget/Notes_Widget.dart';
import '../Widget/model_bottom_sheet_widget.dart';
import '../styel/color.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
          statusBarColor: Colors.black45,
        ),
        title: const Text(
          "Notes ",
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
                    Icons.search,
                    size: 30,
                  )))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => const NotesWidget(),
          separatorBuilder: (context, index) => const SizedBox(
            height: 10,
          ),
          itemCount: 15,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) =>  ShowModelBottomSheetWidget());
        },
        backgroundColor: mainColor,
        child: const Icon(Icons.add),
      ),
    );
  }
}
