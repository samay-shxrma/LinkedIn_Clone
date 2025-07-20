import 'package:flutter/material.dart';
import 'package:myapp/modules/home/controlller/post_controller.dart';
import 'package:myapp/modules/home/view/home_screen.dart';
import 'package:myapp/modules/messages/view/message-list.screen.dart';
import 'package:myapp/modules/splash/view/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => PostController())],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: SplashScreen(),
      ),
    );
  }
}
