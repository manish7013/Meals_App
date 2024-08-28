import 'package:flutter/material.dart';
import '../widget/main_drawer.dart';

class FilterMeals extends StatelessWidget {
  const FilterMeals({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: SwitchListTile(
        value: false,
        onChanged: null,
        title: Text("Gluten - free "),
        subtitle: Text("Only include gluten free"),
      
      ),
      
      drawer: MainDrawer(),
    );
  }
}
