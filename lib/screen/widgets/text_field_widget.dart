import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {

  final String hintText;
   final IconData iconText;
   final bool obscureText;

   const TextFieldWidget({
     super.key,
     required this.hintText,
     required this.iconText,
     this.obscureText = false,
   });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
    child: TextField(
      decoration: InputDecoration(
        hintText: hintText,
        // type text
        hintStyle: const TextStyle(
          fontSize: 16,
          color: Color(0xff3E2723),
          fontWeight: FontWeight.w100,
          fontFamily: "GoogleSan"
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(13),
          borderSide: const BorderSide(
            color: Color(0xff3E2723),
          ),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(13),
          borderSide: const BorderSide(
            color: Color(0xff3E2723),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(13),
          borderSide: const BorderSide(
            color: Color(0xff3E2723),
          ),
        ),
        prefixIcon: Icon(iconText,color: Color(0xff3E2723),),
        suffixIcon: obscureText ? IconButton(
          onPressed: () {},
          icon: const Icon(Icons.visibility_off,color: Color(0xff3E2723),),
        ) : null,
      ),

    ),
    );
  }
}
