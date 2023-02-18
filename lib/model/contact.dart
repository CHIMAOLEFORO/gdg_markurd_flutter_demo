import 'package:flutter/material.dart';

class Contact {
  const Contact({
    required this.title,
    this.color = Colors.purpleAccent,
    this.subtitle = '',
  });

  final Color color;
  final String title;
  final String subtitle;
}
