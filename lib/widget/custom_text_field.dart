import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint,  this.maxLies=1, this.onSaved});
  final String hint;
  final int maxLies;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved:onSaved ,
      validator: (value){
        if(value?.isEmpty??true){

          return 'field is requird';
        }else{
          return null;
        }

      },
      maxLines: maxLies,
      
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hint,
        
        hintStyle: const TextStyle(color: kPrimaryColor),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
        
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: color?? Colors.white,
          ),
      );
  }
}