import 'package:flutter/material.dart';

List<BoxShadow> softUiShadow = [
  const BoxShadow(
    color: Color.fromARGB(255, 219, 173, 173),
    offset: Offset(-5, -5),
    spreadRadius: 1,
    blurRadius: 15,
  ),
  BoxShadow(
    color: const Color.fromARGB(255, 172, 116, 116).withOpacity(.6),
    offset: const Offset(5, 5),
    spreadRadius: 1,
    blurRadius: 15,
  ),
];