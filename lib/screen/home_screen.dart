import 'package:coffeeshop/screen/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F3EA),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
        
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("Good Morning",style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff3E2723),
                      fontWeight: FontWeight.bold,
                      fontFamily: "GoogleSan"
                    ),),
                    Spacer(),
                    Container(
                      width: 40,
                      height: 40,
                      
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),

                      )
                        ,child: Icon(Icons.notifications,color: Color(0xff3E2723),),
                    )
                  ],
                ),
                Text("Enjoy your coffee with khmer flavor",style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff3E2723),
                  fontWeight: FontWeight.w100,
                  fontFamily: "GoogleSan"
                ),),

                SizedBox(height: 10,),

                TextField(
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff3E2723),
                    fontWeight: FontWeight.w100,
                    fontFamily: "GoogleSan"
                  ),
                  decoration: InputDecoration(
                    hintText: "Search",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                      borderSide: const BorderSide(
                        color: Color(0xff3E2723),
                      ),
                    )
                  ),
                )

                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
