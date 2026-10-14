
import 'package:coffeeshop/feature/splash/widegets/glass_background_card.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});



  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          color: Colors.red
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset("assets/images/bg_login_v1.png",fit: BoxFit.cover,),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Theme.of(context).scaffoldBackgroundColor.withOpacity(0.8),
                      Theme.of(context).scaffoldBackgroundColor.withOpacity(0),
                      Theme.of(context).scaffoldBackgroundColor.withOpacity(0.5),
                      Theme.of(context).scaffoldBackgroundColor.withOpacity(0.7),
                      Theme.of(context).scaffoldBackgroundColor.withOpacity(0.8)
                    ]
                  ),

                  )
                ),
              ),

            Positioned.fill(
              child: SingleChildScrollView(
                keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,

                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      children: [
                        Row(
                          children: [ 
                            GlassBackgroundCard(child: Icon(Icons.arrow_back)),
                            Spacer()
                          ],
                        ),
                        SizedBox(height: 20,),
                        GlassBackgroundCard(
                          child: SizedBox(
                            width: size.width * 0.9,
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/imag_logo.png"
                                  ,fit: BoxFit.cover,
                                  width: 120,
                                ),
                                Text("កាហ្វេអង្គរ",style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                    fontFamily: "KhmerNotoSerif",
                                    fontSize: 24
                                ),),
                                Text("Angkor Coffee",style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                    fontSize: 16
                                ),),
                                Text("Welcome to Angkor Coffee",style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                  fontSize: 24
                                )),
                                SizedBox(height: 20,),
                                SizedBox(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Email",
                                      prefixIcon: Icon(Icons.email),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12)
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20,),
                                SizedBox(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Password",
                                      prefixIcon: Icon(Icons.lock),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12)
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Text("Forget password?",style: Theme.of(context).textTheme.bodyLarge,),
                                SizedBox(height: 20,),
                                SizedBox(
                                  width: size.width * 0.9,
                                  height: size.height * 0.06,
                                  child: ElevatedButton(
                                      onPressed: (){},
                                      child: Text("Sign In",
                                        style: Theme.of(context).textTheme.bodyLarge,)),
                                )
                              ],
                            ),
                          )
                        ),
                        SizedBox(height: 20,),
                        Text("Or",style: Theme.of(context).textTheme.bodyLarge,),
                        SizedBox(height: 20,),
                        SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GlassBackgroundCard(child: Image.asset("assets/images/google_icon.png")),
                              SizedBox(width: 20,),
                              GlassBackgroundCard(child: Image.asset("assets/images/facebook_icon.png")),
                              SizedBox(width: 20,),
                              GlassBackgroundCard(child: Image.asset("assets/images/app_icon.png")),
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        SizedBox(
                          child: RichText(
                            text: TextSpan(
                              style: Theme.of(context).textTheme.bodyLarge,
                              children: [
                                TextSpan(
                                  text: "Do not have an account? "
                                ),
                                TextSpan(
                                  text: "Sign Up",
                                  style: const TextStyle(
                                    color: Color(0xFFFFB74D),
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.pushNamed(context, '/register');
                                    },
                                ),
                              ]
                            ),
                          ),
                        )
                        
                        


                      ],
                    )
                  )
                )
              ),
            )
          ],
        ),
      )

      );
  }
}
