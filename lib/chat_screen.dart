import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController =
      new TextEditingController(); //new

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Friendlychat"),
      ),
      body: _buildTextComposer(),
    );
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(color: Theme.of(context).accentColor),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: <Widget>[
            Flexible(
              fit: FlexFit.tight,
              child: FlatButton(
                child: Text("D"),
                onPressed: () {},
                color: Colors.red,
              ),
              // TextField(
              //   controller: _textController,
              //   onSubmitted: _handleSubmitted,
              //   decoration: new InputDecoration.collapsed(
              //     hintText: "Send a message",
              //   ),
              // ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: IconButton(
                icon: Icon(
                  Icons.send,
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }

  void _handleSubmitted(String text) {
    _textController.clear();
  }
}
