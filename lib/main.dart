import 'package:flutter/material.dart';
import 'package:gdg_makurdi_intro/screens/contacts_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: ContactsList(),
    );
  }
}
