import 'package:emart_seller/const/string.dart';
import 'package:emart_seller/views/auth_screen/login_screen.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
// import 'firebase_options.dart';

void main() {
  // await Firebase.initializeApp(
    // options: DefaultFirebaseOptions.currentPlatform,
// );
// WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appnmae,
      home: LoginScreen(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        )
      ),
  
    );
  }
}

