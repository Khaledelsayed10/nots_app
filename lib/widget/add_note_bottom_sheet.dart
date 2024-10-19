import 'package:flutter/material.dart';
import 'package:note_app/widget/custom_button.dart';
import 'package:note_app/widget/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32,),
            CustomTextField(
              hint: 'Titel',
            ),
            SizedBox(height: 16,),
              CustomTextField(
              hint: 'Content',
              maxLies: 5,
            ),
            SizedBox(height:20 ,),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}
