import 'package:coffeeshop/main.dart';
import 'package:coffeeshop/screen/widgets/button_login_widget.dart';
import 'package:coffeeshop/screen/widgets/social_login_button.dart';
import 'package:coffeeshop/screen/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final imageUrl = supabase.storage.from("coffee-image").getPublicUrl("background_login.png");
  final imageLotusConnerUrl = supabase.storage.from("coffee-image").getPublicUrl("Lotus_conner.png");
  final imageLogoUrl = supabase.storage.from("coffee-image").getPublicUrl("logo_image.png");


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFF8F3EA),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(

        ),
        child: Stack(
          children: [
            SizedBox(
              width: size.width,
              height: 350,
              child: Image.network(imageUrl,fit: BoxFit.cover,),
            ),

            Positioned(
              top: 140,
              left: 0,
              right: 0,
              bottom: 0,
              child: ClipPath(
                clipper: LoginWaveClipper(),
                child: Container(
                  color: Color(0xFFF8F3EA),
                  child: Stack(
                    children: [
                      Positioned(
                          top: 60,
                          left: 0,
                          child: Opacity(
                            opacity: 1,
                            child: Transform.rotate(
                              angle: 3.14 * 90 /180,
                              child: Image.network(imageLotusConnerUrl,fit: BoxFit.cover,width: 70,),
                            ) ,
                          )
                      ),
                      Positioned(
                          top: 68,
                          right: 0,
                          child: Opacity(
                            opacity: 1,
                            child: Transform.rotate(
                              angle: -3.14 ,
                              child: Image.network(imageLotusConnerUrl,fit: BoxFit.cover,width: 70,),
                            ) ,
                          )
                      ),

                      Positioned(
                        left: 0,
                        right: 0,
                        top: 20,
                        child: Container(
                            width: 200,
                            decoration: BoxDecoration(

                            ),
                            child: Column(
                              children: [
                                Image.network(imageLogoUrl,fit: BoxFit.cover, width: 90,),
                                Text(
                                  "កាហ្វេអង្គរ",style: TextStyle(
                                    fontSize: 24,
                                    color: Color(0xff3E2723),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "KhmerNotoSerif"
                                ),),
                                Text("Angkor Coffee"
                                    ,style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff3E2723),
                                        fontFamily: "GoogleSan",
                                        letterSpacing: 2
                                    ))
                              ],
                            )),
                      ),


                    ],
                  ),
                ),
              ),
            ),

            Positioned.fill(
              top: 255,
              left: 0,
              right: 0,

              child: SafeArea(

                child: Container(
                  decoration: BoxDecoration(

                  ),
                  child: SingleChildScrollView(
                    keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                    physics: NeverScrollableScrollPhysics(),
                    child: Column(
                      children: [
                        Text("Welcome Back",style: TextStyle(
                            fontSize: 24,
                            color: Color(0xff3E2723),
                            fontWeight: FontWeight.bold,
                            fontFamily: "GoogleSan"
                        ),),
                        Text("sign in to continue",style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff3E2723),
                            fontWeight: FontWeight.w100,
                            fontFamily: "GoogleSan"
                        ),),
                        SizedBox(height: 10,),
                        TextFieldWidget(hintText: "Email", iconText: Icons.person),
                        TextFieldWidget(hintText: "Password", iconText: Icons.lock,obscureText: true),
                        SizedBox(height: 10,),
                        Container(
                          width: size.width ,
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 12),
                          decoration: BoxDecoration(

                          ),
                          child: ElevatedButton(
                              onPressed: (){},

                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff3E2723),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13)
                                )
                              ),
                            child: Text("Sign in",style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: "GoogleSan"
                            ),),


                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 12),
                          child: Row(
                            children: [
                              Expanded(child: Divider(color: Color(0xff3E2723),)),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text("Or",style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff3E2723),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "GoogleSan"
                                ),),
                              ),
                              Expanded(child: Divider(color: Color(0xff3E2723),)),
                            ],
                          ),
                        ),
                        ButtonLoginWidget(text: "Sign in with google", image: "assets/images/google_icon.png"),
                        SizedBox(height: 10,),
                        ButtonLoginWidget(text: "Sign in with facebook", image: "assets/images/facebook_icon.png"),
                        SizedBox(height: 10,)











                      ],
                    ),
                  )
                ),
              ),


            ),



          ],
        ),
      ));
  }


}

class LoginWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.moveTo(0, 85);

    path.cubicTo(
      size.width * 0.18,
      70,
      size.width * 0.28,
      45,
      size.width * 0.40,
      22,
    );

    path.cubicTo(
      size.width * 0.46,
      6,
      size.width * 0.50,
      0,
      size.width * 0.54,
      6,
    );

    path.cubicTo(
      size.width * 0.66,
      35,
      size.width * 0.76,
      70,
      size.width,
      85,
    );

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}