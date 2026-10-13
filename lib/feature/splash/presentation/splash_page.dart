import 'package:coffeeshop/app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(

          ),
          child: Stack(
            children: [
            Positioned.fill(
              child: Image.asset("assets/images/background_splash.png",fit: BoxFit.cover,),
            ),
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 200,),
                      Image.asset("assets/images/imag_logo.png",width: 200,),
                      Text("កាហ្វេអង្គរ",style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontFamily: " KhmerNotoSerif",
                        fontSize: 45
                      ),),
                      Text("Angkor Coffee ",style: Theme.of(context).textTheme.titleLarge,),
                      Spacer()

                    ],
                  )
                ),
              )
            ],
          ),
        )
      )
    );
  }
}
