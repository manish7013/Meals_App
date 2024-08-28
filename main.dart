import 'package:flutter/material.dart';
import 'screen/tab_screen.dart';
import 'model/meal_data.dart' as data;
import 'model/meal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Meal> dummyMeals = data.dummyMeals;
  List<Meal> favouriteMeals = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Delimeals",
      theme: ThemeData(
        primaryColor: Colors.orange,
        canvasColor: const Color.fromARGB(255, 249, 233, 207),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.orange,
        ).copyWith(
          secondary: Colors.blue,
        ),
      ),
      home: TabScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
