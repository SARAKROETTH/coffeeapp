import 'package:coffeeshop/main.dart';
import 'package:flutter/material.dart';



class SplashScreen extends StatelessWidget {
   SplashScreen({super.key});

   final imagelUrl = supabase.storage.from("coffee-image").getPublicUrl("background_splash.png");
   final logoUrl = supabase.storage.from("coffee-image").getPublicUrl("logo_image.png");
   final lotusUrl = supabase.storage.from("coffee-image").getPublicUrl("lotus_logo.png");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(

        ),
        child: Stack(
          children: [
            Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                child: Image.network(imagelUrl.toString(),fit: BoxFit.cover,)),
            Positioned(
              left: 0,
                right: 0,
                top: 200,
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                  ),
                  child: Image.network(logoUrl.toString(),fit: BoxFit.cover,),
                ),
                Text(
                  "កាហ្វេអង្គរ",style: TextStyle(
                  fontSize: 32,
                  color: Color(0xff3E2723),
                  fontWeight: FontWeight.bold,
                  fontFamily: "KhmerNotoSerif"
                ),
                ),
                Text(
                  "Coffee Angkor",style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff3E2723),
                  fontWeight: FontWeight.bold,
                  fontFamily: "GoogleSan",
                  letterSpacing: 2
                ),),
                
              ],
            )),
            Positioned(
              bottom: 60,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                width: 200,
                decoration: BoxDecoration(

                ),
                child: Image.network(lotusUrl.toString(),fit: BoxFit.cover,),
                            ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
