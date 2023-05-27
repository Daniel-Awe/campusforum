
import 'package:flutter/material.dart';
import 'Data/chatdata.dart';
import 'personalprofilepage.dart';

class ChatPage extends StatefulWidget {
  final Map<String,dynamic> dialoguer;
  int chatindex;
  ChatPage({required this.dialoguer,required this.chatindex});
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  int num =0;
  late List<Message> messages = chatInfo[widget.chatindex];
  TextEditingController textEditingController = TextEditingController();
  late Map<String,dynamic> dialoguer = widget.dialoguer;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue, // 设置主题颜色
        colorScheme: ThemeData().colorScheme.copyWith(
            secondary: Colors.blue), // 设置强调颜色
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
          ),
          backgroundColor: Colors.white,
          title: Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(widget.dialoguer['avatar']),
                    radius: 20,
                  ),
                  SizedBox(width: 10,),
                  Text(dialoguer['name'],style: TextStyle(fontSize: 18,color: Colors.black),)
                ],
              ),
              onTap: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context)=>PersonalProfilePage(userInfo: dialoguer)));
              }
            )
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 15,),
            //聊天记录
            Expanded(
              child: ListView.builder(
                // reverse: true,
                itemCount: messages.length,
                itemBuilder: (BuildContext context, int index) {
                  return buildMessageItem(messages[index]);
                },
              ),
            ),
            Divider(height: 1),
            //底部输入框
            Container(
              decoration: BoxDecoration(color: Theme
                  .of(context)
                  .cardColor),
              child: _buildTextComposer(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMessageItem(Message message) {
    return Container(
      padding: EdgeInsets.all(8.0),
      margin: message.isMe? EdgeInsets.only(left: 40,right: 10):EdgeInsets.only(left: 10,right: 40),
      child: Row(
        // mainAxisAlignment: message.isMe
        //     ? MainAxisAlignment.end
        //     : MainAxisAlignment.start,
        mainAxisAlignment: message.isMe
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        children: [
          if (!message.isMe) ...[
            CircleAvatar(
              backgroundImage: AssetImage(message.avatar),
            ),
            SizedBox(width: 8.0),
          ],
          Flexible(
            child: Container(
              decoration: BoxDecoration(
                color: message.isMe
                    ? Colors.purple.withOpacity(0.15)
                    : Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(16.0),
              ),
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Text(
                message.text,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ),
          if (message.isMe) ...[
            SizedBox(width: 8.0),
            CircleAvatar(
              backgroundImage: AssetImage(message.avatar),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(color: Theme.of(context).colorScheme.secondary),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Flexible(
              child: TextField(
                controller: textEditingController,
                decoration: InputDecoration.collapsed(
                  hintText: 'Type a message',
                ),
                onSubmitted: _handleSubmitted,
              ),
            ),
            IconButton(
              icon: Icon(Icons.send),
              onPressed: () => _handleSubmitted(textEditingController.text),
            ),
          ],
        ),
      ),
    );
  }

  void _handleSubmitted(String text) {
    if (text.isEmpty) {
      // Fluttertoast.showToast(msg: 'Please enter a message.');
      return;
    }

    setState(() {
      num = messages.length;
      messages.insert(
        num,Message(
        text: text,
        isMe: true,
        avatar: myavatar,
      ),
      );
      textEditingController.clear();
    });
  }
}

