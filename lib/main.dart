import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import 'screens/card_form_screen.dart';
void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey = "Stripe public key";

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stripe Payment',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.black45,
        ),
        colorScheme: Theme.of(context).colorScheme.copyWith(
          primary: Colors.black45
        ),
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
