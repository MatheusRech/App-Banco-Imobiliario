import 'package:flutter/material.dart';

class Rota<T> {
  Rota({required this.path, required this.construtor}); 
  final String path;
  final WidgetBuilder construtor;
}