import 'package:coffeeshop/main.dart';
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
              top: 150,
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

            Positioned(
              top: 290,
              left: 0,
              right: 0,
              bottom: 0,


              child: Container(
                decoration: BoxDecoration(
                ),
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
                    Container(
                      padding: EdgeInsets.all(24),
                      decoration: BoxDecoration(

                      ),
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              hintText: "Email",
                              hintStyle: TextStyle(
                                fontSize: 16,
                                color: Color(0xff3E2723),
                                fontWeight: FontWeight.w100,
                                fontFamily: "GoogleSan"
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Color(0xff3E2723),
                                  width: 1
                                ),
                              ),
                              prefixIcon: Icon(Icons.person,color: Color(0xff3E2723),)

                            ),

                          ),
                          SizedBox(height: 20,),
                          TextField(
                            decoration: InputDecoration(
                                hintText: "Password",
                                hintStyle: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff3E2723),
                                    fontWeight: FontWeight.w100,
                                    fontFamily: "GoogleSan"
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: Color(0xff3E2723),
                                      width: 1
                                  ),
                                ),
                                prefixIcon: Icon(Icons.lock,color: Color(0xff3E2723),),
                                suffixIcon: Icon(Icons.visibility_off,color: Color(0xff3E2723),)
                            ),

                          ),
                          SizedBox(height: 20,),
                          Container(
                            width: size.width * 0.9,
                            decoration: BoxDecoration(

                            ),
                            child: ElevatedButton(

                                onPressed: (){},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xff3E2723),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 30,vertical: 15)
                                ),
                                child: Text("Sign In",
                                    style: TextStyle(fontSize: 16, color: Color(0xffffffff),
                                        fontWeight: FontWeight.w100,
                                        fontFamily: "GoogleSan",

                                    )
                                )
                            ),
                          )

                        ],
                      ),
                    )


                  ],
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