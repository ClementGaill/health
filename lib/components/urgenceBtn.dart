import 'package:flutter/material.dart';
import 'package:health/main.dart';

ElevatedButton urgenceBtn(BuildContext context) {
  return ElevatedButton(
    onPressed: () {}, 
    child: Text('Urgence', style: Theme.of(context).textTheme.headlineMedium),
    style: ElevatedButton.styleFrom(
      backgroundColor: errorColor,
      minimumSize: const Size(double.infinity, 60)
    ),
  );
}