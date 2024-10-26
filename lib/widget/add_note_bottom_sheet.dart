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
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState>formkey=GlobalKey();
  String ?title,subTitle;
  
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 32,),
          CustomTextField(
            onSaved: (value){
              title=value;
            },
            hint: 'Titel',
          ),
          const SizedBox(height: 16,),
            CustomTextField(
               onSaved: (value){
              subTitle=value;
            },
            hint: 'Content',
            maxLies: 5,
          ),
          const SizedBox(height:20 ,),
          CustomButton(
            onTap: () {
               if(formkey.currentState!.validate()){
                formkey.currentState!.save();
               }else{
                 autovalidateMode=AutovalidateMode.always;
                 setState(() {
                   
                 });
               }
            },
           
          ),
        ],
      ),
    );
  }
}
