
import 'package:coffeeshop/app/app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter/material.dart';


Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    ProviderScope(
        child: CoffeeShopApp()
    )
  );

}

