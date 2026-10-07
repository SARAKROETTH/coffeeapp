import 'package:flutter/material.dart';

class ButtonLoginWidget extends StatelessWidget {

  final String text;
  final String image;
  const ButtonLoginWidget({
    super.key,
    required this.text,
    required this.image
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(

      ),
      child: ElevatedButton(
          onPressed: (){
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13)
            ),

          ),

          child:Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 20,

                  decoration: BoxDecoration(

                  ),
                  child: Image.asset(image,fit: BoxFit.cover,),

                ),
                SizedBox(width: 10,),
                Text(text,style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff3E2723),
                    fontWeight: FontWeight.bold,
                    fontFamily: "GoogleSan"
                ),)

              ],
            ),
          )),
    );
  }
}
