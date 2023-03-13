import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fuerte_task/controller/user_profile_controller.dart';
import 'package:fuerte_task/view/auth/splash_screen.dart';
import 'package:fuerte_task/view/screens/bottom_nav.dart/bottom_navigation.dart';
import 'package:provider/provider.dart';

import 'controller/auth_controller.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => ProfileController()),

      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
        
          primarySwatch: Colors.blue,
        ),
        home:const SplashScreen(),
      ),
    );
  }
}

