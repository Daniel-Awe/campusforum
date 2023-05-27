import 'package:flutter/material.dart';
import 'personaldata.dart';

//头像
String myavatar = admin[0]['avatar'];
//消息的信息格式
class Message {
  final String text;
  final bool isMe;
  final String avatar;

  Message({
    required this.text,
    required this.isMe,
    required this.avatar,
  });
}

List <Map<String, dynamic>> chatperson = all.sublist(30,39);

//消息内容
List<List<Message>> chatInfo = [
  [
    Message(text: '你去哪里，不来上课吗？', isMe: false, avatar: chatperson[0]['avatar']),
    Message(text: "I'm on my way", isMe: true, avatar: myavatar),
    Message(text: "快点啊，老师来点名了！！", isMe: false, avatar: chatperson[0]['avatar']),
  ],
  [
    Message(text: '那个热搜榜第一，有点离谱。第二真是爱蔡徐坤', isMe: false, avatar: chatperson[1]['avatar']),
    Message(text: "哈哈哈哈，笑死", isMe: true, avatar: myavatar),
    Message(text: "你要资料吗？我发你", isMe: false, avatar: chatperson[1]['avatar']),
  ],
  [
    Message(text: '我们之前用的就是她讲的这本书', isMe: false, avatar: chatperson[2]['avatar']),
    Message(text: '所以很合适', isMe: false, avatar: chatperson[2]['avatar']),
    Message(text: '你们有可能换书了', isMe: false, avatar: chatperson[2]['avatar']),
    Message(text: '你可以看一部分内容', isMe: false, avatar: chatperson[2]['avatar']),
    Message(text: "看看怎么样", isMe: true, avatar: myavatar),
  ],
  [
    Message(text: '去打球吗？', isMe: false, avatar: chatperson[3]['avatar']),
    Message(text: "后面操场，下午2点", isMe: false, avatar: chatperson[3]['avatar']),
  ],
  [
    Message(text: '你们组队了吗', isMe: false, avatar: chatperson[4]['avatar']),
    Message(text: '没组队的话我和你们一起', isMe: false, avatar: chatperson[4]['avatar']),
    Message(text: "介么疯狂的么", isMe: true, avatar: myavatar),
  ],
  [
    Message(text: '我喜欢蔡徐坤，怎么办', isMe: false, avatar: chatperson[5]['avatar']),
    Message(text: "怎么办，你要我怎么办？？", isMe: true, avatar: myavatar),
    Message(text: "明天去看演唱会吗？一起呗", isMe: false, avatar: chatperson[5]['avatar']),
    Message(text: "介么疯狂的么", isMe: true, avatar: myavatar),
  ],
  [
    Message(text: '最近又有新冠了，戴好口罩', isMe: false, avatar: chatperson[6]['avatar']),
    Message(text: '小心点，别被感染了', isMe: false, avatar: chatperson[6]['avatar']),
    Message(text: "你也是", isMe: true, avatar: myavatar),
    Message(text: "下午一起健身吗？或者跑步，我都行。", isMe: false, avatar: chatperson[6]['avatar']),
    Message(text: "冲冲冲！", isMe: true, avatar: myavatar),
  ],
  [
    Message(text: '这周六能见面的吧', isMe: false, avatar: chatperson[7]['avatar']),
    Message(text: "这周六去浙大", isMe: true, avatar: myavatar),
    Message(text: "对啊，浙大玉泉校区，我也去啊", isMe: false, avatar: chatperson[7]['avatar']),
    Message(text: "哦哦哦，对哦，我都忘了", isMe: true, avatar: myavatar),
    Message(text: "怎么说，几点出发嘞？", isMe: true, avatar: myavatar),
  ],
  [
    Message(text: '2022年NBA总决赛，G4的库里43分10板。扶大厦之将倾 挽狂澜于既倒', isMe: false, avatar: chatperson[8]['avatar']),
  ],
];

