import 'package:campus/chatpage.dart';
import 'package:campus/personalprofilepage.dart';
import 'package:flutter/material.dart';
import 'Data/personaldata.dart';
import 'Data/chatdata.dart';

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
// //消息内容
// List<List<Message>> chatInfo = [
//   [
//     Message(text: '你去哪里，不来上课吗？', isMe: false, avatar: followed[0]['avatar']),
//     Message(text: "I'm on my way", isMe: true, avatar: myavatar),
//     Message(text: "快点啊，老师来点名了！！", isMe: false, avatar: myavatar),
//   ],
//   [
//     Message(text: '那个热搜榜第一，有点离谱。第二真是爱蔡徐坤', isMe: false, avatar: followed[1]['avatar']),
//     Message(text: "哈哈哈哈，笑死", isMe: true, avatar: myavatar),
//     Message(text: "你要资料吗？我发你", isMe: false, avatar: myavatar),
//   ],
//   [
//     Message(text: '我喜欢蔡徐坤，怎么办', isMe: false, avatar: followed[0]['avatar']),
//     Message(text: "怎么办，你要我怎么办？？", isMe: true, avatar: myavatar),
//     Message(text: "明天去看演唱会吗？一起呗", isMe: false, avatar: myavatar),
//     Message(text: "介么疯狂的么", isMe: true, avatar: myavatar),
//   ],
//   [
//     Message(text: '我喜欢蔡徐坤，怎么办', isMe: false, avatar: followed[0]['avatar']),
//     Message(text: "怎么办，你要我怎么办？？", isMe: true, avatar: myavatar),
//     Message(text: "明天去看演唱会吗？一起呗", isMe: false, avatar: myavatar),
//     Message(text: "介么疯狂的么", isMe: true, avatar: myavatar),
//   ],
//   [
//     Message(text: '我喜欢蔡徐坤，怎么办', isMe: false, avatar: followed[0]['avatar']),
//     Message(text: "怎么办，你要我怎么办？？", isMe: true, avatar: myavatar),
//     Message(text: "明天去看演唱会吗？一起呗", isMe: false, avatar: myavatar),
//     Message(text: "介么疯狂的么", isMe: true, avatar: myavatar),
//   ],
//   [
//     Message(text: '我喜欢蔡徐坤，怎么办', isMe: false, avatar: followed[0]['avatar']),
//     Message(text: "怎么办，你要我怎么办？？", isMe: true, avatar: myavatar),
//     Message(text: "明天去看演唱会吗？一起呗", isMe: false, avatar: myavatar),
//     Message(text: "介么疯狂的么", isMe: true, avatar: myavatar),
//   ],
//   [
//     Message(text: '我喜欢蔡徐坤，怎么办', isMe: false, avatar: followed[0]['avatar']),
//     Message(text: "怎么办，你要我怎么办？？", isMe: true, avatar: myavatar),
//     Message(text: "明天去看演唱会吗？一起呗", isMe: false, avatar: myavatar),
//     Message(text: "介么疯狂的么", isMe: true, avatar: myavatar),
//   ],
//   [
//     Message(text: '我喜欢蔡徐坤，怎么办', isMe: false, avatar: followed[0]['avatar']),
//     Message(text: "怎么办，你要我怎么办？？", isMe: true, avatar: myavatar),
//     Message(text: "明天去看演唱会吗？一起呗", isMe: false, avatar: myavatar),
//     Message(text: "介么疯狂的么", isMe: true, avatar: myavatar),
//   ],
//   [
//     Message(text: '我喜欢蔡徐坤，怎么办', isMe: false, avatar: followed[0]['avatar']),
//     Message(text: "怎么办，你要我怎么办？？", isMe: true, avatar: myavatar),
//     Message(text: "明天去看演唱会吗？一起呗", isMe: false, avatar: myavatar),
//     Message(text: "介么疯狂的么", isMe: true, avatar: myavatar),
//   ],
// ];

// List <Map<String, dynamic>> followed =[
//   {
//     'avatar': 'assets/avatar/avatar_1.jpg',
//     'name': 'John',
//     'age': 25,
//     'chat': '这是最近图书馆的自习预约系统'
//   },
//   {
//     'avatar': 'assets/avatar/avatar_2.jpg',
//     'name': 'Jane',
//     'age': 30,
//     'chat': '这是最近图书馆的自习预约系统'
//   },
//   {
//     'avatar': 'assets/avatar/avatar_3.jpg',
//     'name': 'Ikun',
//     'age':19,
//     'chat': '你也是蔡徐坤的粉丝吗？'
//   },
//   {
//     'avatar': 'assets/avatar/avatar_4.jpg',
//     'name': 'Daniel',
//     'chat': '学校这项制度有点小离谱'
//   },
//   {
//     'avatar': 'assets/avatar/avatar_5.jpg',
//     'name': 'Peter',
//     'chat': '我天，最近又有新冠了？'
//   },
//   {
//     'avatar': 'assets/avatar/avatar_6.jpg',
//     'name': 'James',
//     'chat': '哈喽哈喽~'
//   },
//   {
//     'avatar': 'assets/avatar/avatar_7.jpg',
//     'name': 'Aaron',
//     'chat': '希望能够成功'
//   },
//   {
//     'avatar': 'assets/avatar/avatar_8.jpg',
//     'name': 'Edison',
//     'chat': 'G4的2022总决赛'
//   },
//   {
//     'avatar': 'assets/avatar/avatar_9.jpg',
//     'name': 'Hank',
//     'chat': 'NBA季后赛开始了'
//   }
// ];

class MessagePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _MessagePageState();
}
class _MessagePageState extends State<MessagePage>{
  //头像数据
  @override
  Widget build(BuildContext context){
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: EdgeInsets.only(top: 10, left: 10, right: 10),
          sliver: SliverGrid.count(
            crossAxisCount: 4,
            children: [
              GridTile(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.camera_alt,size: 32, color: Colors.greenAccent,),
                    SizedBox(height: 8),
                    Text("评论"),
                  ],
                ),
              ),
              GridTile(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.photo, size: 32, color: Colors.yellow,),
                    SizedBox(height: 8),
                    Text("@我"),
                  ],
                ),
              ),
              GridTile(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.chat, size: 32,color: Colors.redAccent,),
                    SizedBox(height: 8),
                    Text("收到的赞"),
                  ],
                ),
              ),
              GridTile(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.settings, size: 32,color: Colors.lightBlueAccent,),
                    SizedBox(height: 8),
                    Text("系统通知"),
                  ],
                ),
              ),
            ],
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.only(left: 20,top: 10,bottom: 5),
          sliver: SliverToBoxAdapter(
            child: Text(
              '推荐关注',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 20),
          sliver: SliverToBoxAdapter(
            child: Container(
              height: 60,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: recommendList.length,
                itemBuilder: (context, index) {
                  final Map<String, dynamic> item = recommendList[index];
                  return GestureDetector(
                    child: Container(
                      margin: EdgeInsets.only(left: 7),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 5,
                            top: 5.2,
                            child: index ==0? Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.add,
                                color: Colors.grey,
                                size: 30,
                              ),
                            ): CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage(recommendList[index]['avatar']),
                            ),
                          ),
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.fromBorderSide(BorderSide(
                                color: Colors.pinkAccent,
                                width: 2,
                                style: BorderStyle.solid,
                              )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: (){
                      index == 0? null: Navigator.push(context, MaterialPageRoute(builder: (context)=>PersonalProfilePage(userInfo: item,)));
                  },
                  );
                },
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.only(left: 20,top: 5,bottom: 15),
          sliver: SliverToBoxAdapter(
            child: Text(
              '消息列表',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
                (context, index) {
              return GestureDetector(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(chatperson[index]['avatar']),
                  ),
                  title: Text(
                    chatperson[index]['name'],
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    chatInfo[index][0].text,
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>ChatPage(dialoguer: chatperson[index], chatindex: index)));
                },
              );
            },
            childCount: chatperson.length,
          ),
        ),
      ],
    );
  }
}



