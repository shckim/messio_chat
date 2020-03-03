import 'package:flutter/material.dart';
import 'package:messiochat/config/Palette.dart';
import 'pages/ConversationPageList.dart';
import 'pages/ConversationSlide.dart';

void main() => runApp(Messio());

class Messio extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Messio',
      theme: ThemeData(
        primaryColor: Palette.primaryColor,
      ),
      home: ConversationPageSlide(),
    );
  }
}
