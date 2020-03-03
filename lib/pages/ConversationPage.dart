import 'package:flutter/material.dart';
import 'package:messiochat/widgets/ChatAppBar.dart';
import 'package:messiochat/widgets/InputWidget.dart';
import 'package:messiochat/widgets/ChatListWidget.dart';
import 'package:messiochat/config/Palette.dart';
import 'package:messiochat/pages/ConversationBottomSheet.dart';

class ConversationPage extends StatefulWidget {
  @override
  _ConversationPageState createState() => _ConversationPageState();
  const ConversationPage();

}

class _ConversationPageState extends State<ConversationPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          key: _scaffoldKey,
          appBar: ChatAppBar(),
          body: Container(
            color: Palette.chatBackgroundColor,
            child: Stack(children: <Widget>[
              Column(
                children: <Widget>[
                  ChatListWidget(),
                  GestureDetector(
                      child: InputWidget(),
                    onPanUpdate: (details){
                        if (details.delta.dy < 0){
                          _scaffoldKey.currentState.showBottomSheet<Null>((BuildContext context){
                            return ConversationBottomSheet();
                          });

                        }
                    },
                  )
                ],
              ),
            ]
            ),
          )
      )
    );
  }
}