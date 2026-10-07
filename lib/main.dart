
import 'package:coffeeshop/screen/login_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:coffeeshop/screen/splash_screen.dart';
import 'package:flutter/material.dart';


Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: "https://kfqzrgpvnhforukdghrc.supabase.co",
    anonKey: "sb_publishable_gHYTsqfWrQTM1_bZi7Mlug_vSiMbev0"
  );

  runApp(const MyApp());
}

final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      home: LoginScreen(),
    );
  }
}

