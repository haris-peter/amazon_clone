import 'package:amazone_clone/constants/global_variables.dart';
import 'package:amazone_clone/features/auth/screens/auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:amazone_clone/router.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'Amazon clone',
      theme: ThemeData(
        colorScheme:
            const ColorScheme.light(primary: GlobalVariables.secondaryColor),
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        appBarTheme: const AppBarTheme(
            elevation: 0, iconTheme: IconThemeData(color: Colors.black)),
        useMaterial3: true,
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home:const AuthScreen(),
    );
  }
}
