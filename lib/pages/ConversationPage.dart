import 'package:flutter/material.dart';
import 'package:messiochat/widgets/ChatAppBar.dart';
import 'package:messiochat/widgets/InputWidget.dart';
import 'package:messiochat/widgets/ChatListWidget.dart';

class ConversationPage extends StatefulWidget {
  @override
  _ConversationPageState createState() => _ConversationPageState();
  const ConversationPage();

}

class _ConversationPageState extends State<ConversationPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: ChatAppBar(),
          body: Stack(children: <Widget>[
            Column(
              children: <Widget>[
                ChatListWidget(),
                InputWidget()
              ],
            ),
          ]
          )
      )
    );
  }
}