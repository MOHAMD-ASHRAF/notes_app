import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widget/color_list_view.dart';

class EditNoteColors extends StatefulWidget {
  const EditNoteColors({Key? key, required this.note}) : super(key: key);
  final NoteModel note;

  @override
  State<EditNoteColors> createState() => _EditNoteColorsState();
}

class _EditNoteColorsState extends State<EditNoteColors> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 26*2,
      child: ListView.builder(
          itemCount: kColors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder:  (context , index){
            return  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                onTap: (){
                  currentIndex = index;
                  widget.note.color = kColors[index].value;
                  setState(() {

                  });
                },
                child: ColorItem(
                  isActive: currentIndex == index, color: kColors[index],
                ),
              ),
            );
          }),
    );
  }
}