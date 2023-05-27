import 'package:flutter/material.dart';

class ahsk extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          GestureDetector(
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(author['avatar']),
                  radius: 16,
                ),
                SizedBox(width: 7,),
                Text(
                  '${author['name']}',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => PersonalProfilePage(userInfo: author,)));
            },
          ),
          SizedBox(height: 7),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 2,horizontal: 2),
              child: GestureDetector(
                child: Text(
                  '${article['title']}',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> PostPage(userInfo: author, article: article)));
                },
              )
          ),
          SizedBox(height: 5,),
          Text(
            '    ${article['text']}',
            maxLines: isExpandedList[index] ? null : 3,
            overflow: isExpandedList[index] ? null : TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.grey[800],
              fontSize: 15,
            ),
          ),
          SizedBox(height: 3,),
          GestureDetector(
            child: Text(
              isExpandedList[index] ? '收起' : '展开',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              setState(() {
                isExpandedList[index] = !isExpandedList[index];
              });
            },
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8),
            height: 180,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('${article['image']}'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(8)
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child:Row(
              children: [
// MyIconButton(
//   icon: Icons.comment,
//   defaultColor: Colors.grey,
//   pressedColor: Colors.grey,
// ),
                ArticleScreen(
                  article: article,
                ),
                SizedBox(width: 3,),
                Text(
                  '${article['likes']}',
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(width: 9,),
                Icon(
                  Icons.comment,
                  color: Colors.grey,
                ),
                SizedBox(width: 3,),
                Text(
                  '${article['comments']}',
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(width: 9,),
                Icon(
                  Icons.share,
                  color: Colors.grey,
                ),
                Spacer(),
                Text(
                  '${article['time']}',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
        ],
      ),
    )
  }
}





//个人主页
import 'package:flutter/material.dart';
import 'Data/personaldata.dart';

class ProfilePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _ProfileState();
}
class _ProfileState extends State<ProfilePage>{
  @override
  final Map<String, dynamic> userInfo = admin[0];
  Widget build(BuildContext context){
    return Scaffold(
      body:Stack(
        children: [
          Image.asset(
            'assets/background.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AppBar(
                title: Text('我的',style: TextStyle(fontWeight: FontWeight.bold),),
                centerTitle: true,
                backgroundColor: Colors.transparent,
              ),
              Container(
                  padding: EdgeInsets.symmetric(vertical: 50,horizontal: 16),
                  height: 360,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.center,
                      colors: [
                        Color.fromRGBO(0, 0, 0, 0.3),
                        Color.fromRGBO(0, 0, 0, 0.3),
                      ],
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 40.0,
                            backgroundImage: AssetImage('${userInfo['avatar']}'),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${userInfo['name']}',
                                  style: TextStyle(
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ),
                                ),
                                SizedBox(height: 10.0),
                                Text(
                                  '${userInfo['school']}',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 10.0),
                              ],
                            ),
                          ),
                          Column(
                              children: [
                                SizedBox(height: 15,),
                                Row(
                                  children: [
                                    SizedBox(width: 25,),
                                    Column(
                                      children: [
                                        Text('粉丝', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                                        SizedBox(height: 5,),
                                        Text('${userInfo['fans']}', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                    SizedBox(width: 8,),
                                    Column(
                                      children: [
                                        Text('关注', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                                        SizedBox(height: 5,),
                                        Text('${userInfo['following']}', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                      ],
                                    )
                                  ],
                                )
                              ]
                          )
                        ],
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 15),
                          padding: EdgeInsets.symmetric(vertical: 15,horizontal: 25),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(240, 240, 240, 0.75),
                              borderRadius: BorderRadius.circular(30.0)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'About Me',
                                style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 7.0),
                              Text(
                                '${userInfo['intro']}',
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 18.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
              ),
              Expanded(
                child: DefaultTabController(
                  length: 2,
                  child: Scaffold(
                    appBar: TabBar(
                      labelColor: Colors.red,
                      unselectedLabelColor: Colors.black,
                      indicatorColor: Colors.red,
                      tabs: [
                        Tab(text: '帖子'),
                        Tab(text: '喜欢'),
                      ],
                    ),
                    body: TabBarView(
                      children: [
                        ListView.builder(
                          itemCount: userInfo['post'].length,
                          itemBuilder: (BuildContext context, int index) {
                            final Map<String, dynamic> post = userInfo['post'][index];
                            return Container(
                              padding: EdgeInsets.symmetric(vertical: 16.0),
                              margin: EdgeInsets.symmetric(horizontal: 16.0),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    width: 1.0,
                                    color: Colors.grey.withOpacity(0.3),
                                  ),
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 7,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: 5,bottom: 7),
                                          child: Text(
                                            '${post['title']}',
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 22.0, fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 20.0,
                                              height: 20.0,
                                              child: CircleAvatar(
                                                radius: 14.0,
                                                backgroundImage: AssetImage('${userInfo['avatar']}'),
                                              ),
                                            ),
                                            SizedBox(width: 7.0),
                                            Text(
                                              '${userInfo['name']}',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontSize: 14.0),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 10,),
                                        Text(
                                          '${post['text']}',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(height: 8.0),
                                        Row(
                                          children: [
                                            Icon(Icons.comment, color: Colors.grey,size: 17,),
                                            SizedBox(width: 4.0),
                                            Text('${post['comments']}',),
                                            SizedBox(width: 16.0),
                                            Icon(Icons.thumb_up, color: Colors.grey,size: 17,),
                                            SizedBox(width: 4.0),
                                            Text('${post['likes']}',),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      margin: EdgeInsets.only(left: 12.0,top: 24),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(10.0),
                                            child: '${post['image']}'!=null? Image.asset(
                                              '${post['image']}',
                                              fit: BoxFit.cover,
                                            ):null,
                                          ),
                                          SizedBox(height: 12.0),
                                          Text('${post['time']}', style: TextStyle(color: Colors.grey,fontSize: 10.5),),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                        ListView.builder(
                          itemCount: userInfo['likes'].length,
                          itemBuilder: (BuildContext context, int index) {
                            final Map<String, dynamic> likes = userInfo['likes'][index];
                            int num = all.indexWhere((element) => element['name'] == likes['name']);
                            return Container(
                              padding: EdgeInsets.symmetric(vertical: 16.0),
                              margin: EdgeInsets.symmetric(horizontal: 16.0),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    width: 1.0,
                                    color: Colors.grey.withOpacity(0.3),
                                  ),
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 7,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: 5,bottom: 10),
                                          child: Text(
                                            '${likes['title']}',
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 22.0, fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 20.0,
                                              height: 20.0,
                                              child: CircleAvatar(
                                                radius: 14.0,
                                                backgroundImage: AssetImage('${all[num]['avatar']}'),
                                              ),
                                            ),
                                            SizedBox(width: 7.0),
                                            Text(
                                              '${all[num]['name']}',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontSize: 14.0),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          '${likes['text']}',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(height: 8.0),
                                        Row(
                                          children: [
                                            Icon(Icons.comment, color: Colors.grey,size: 17,),
                                            SizedBox(width: 4.0),
                                            Text('${likes['comments']}',),
                                            SizedBox(width: 16.0),
                                            Icon(Icons.thumb_up, color: Colors.redAccent,size: 17,),
                                            SizedBox(width: 4.0),
                                            Text('${likes['likes']}',),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      margin: EdgeInsets.only(left: 12.0,top: 16),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(10.0),
                                            child: '${likes['image']}'!=null? Image.asset(
                                              '${likes['image']}',
                                              fit: BoxFit.cover,
                                            ):null,
                                          ),
                                          SizedBox(height: 8.0),
                                          Text('${likes['time']}', style: TextStyle(color: Colors.grey,fontSize: 10.5),),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}























import 'package:flutter/material.dart';
import 'personalprofilepage.dart';
// 组件
import 'components/likesbutton.dart';
import 'components/time.dart';
import 'components/text.dart';
import 'components/showdialog.dart';
//数据
import 'Data/personaldata.dart';
import 'Data/globalcolors.dart';

class PostPage extends StatefulWidget{
  final Map<String, dynamic> userInfo;
  final Map<String, dynamic> article;

  PostPage({required this.userInfo, required this.article});
  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage>{
  String selectedMenuItem = '';
  final List<String> menuItems = ['举报', '收藏', '调整字号'];
  TextEditingController _textEditingController = TextEditingController();

  //菜单
  void _showPopupMenu() async {
    final result = await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(100, 100, 0, 0),
      items: menuItems.map((item) {
        return PopupMenuItem(
          child: Text(item),
          value: item,
        );
      }).toList(),
    );
    if (result != null) {
      setState(() {
        selectedMenuItem = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    late Map<String, dynamic> userInfo = widget.userInfo;
    late Map<String, dynamic> article = widget.article;
    String time = getTime(article['time']);
    return Scaffold(
      appBar: AppBar(
        title: Text('浙科校友圈',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: themeColors[colorindex],
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          PopupMenuButton<String>(
            onSelected: (String value) {
              // Handle menu item selection
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'write_answer',
                child: Row(
                  children: [
                    Icon(Icons.edit, color: Colors.black),
                    SizedBox(width: 8),
                    Text('写回答'),
                  ],
                ),
              ),
              PopupMenuItem<String>(
                value: 'invite',
                child: Row(
                  children: [
                    Icon(Icons.person_add, color: Colors.black),
                    SizedBox(width: 8),
                    Text('邀请'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 15, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  GestureDetector(
                    child: CircleAvatar(
                      radius: 24,
                      backgroundImage: AssetImage('${userInfo['avatar']}'),
                    ),
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>PersonalProfilePage(userInfo: userInfo))
                      );
                    },
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          child: Text(
                            '${userInfo['name']}',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=>PersonalProfilePage(userInfo: userInfo))
                            );
                          },
                        ),
                        SizedBox(height: 2),
                        Text(time,style: TextStyle(color: Colors.grey,fontSize: 15),),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                              onPressed: _showPopupMenu,
                              icon: Icon(Icons.more_horiz,color: Colors.grey,)
                          )
                        ],
                      )
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 16),
                    Text(
                      '${article['text']}',
                      style: TextStyle(
                        fontSize: 20,
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
              //显示图片，如果图片为空，则不显示
              article['image']!=''?Container(
                  width: 200,
                  padding: EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40)
                  ),
                  child: Image.asset(
                    '${article['image']}',
                    width: 200,
                  )
              ):Container(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6,vertical: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Color.fromRGBO(220, 226, 235, 1.0),
                ),
                child: Text(
                  '#${article['tags']}',
                  style: TextStyle(color: Color.fromRGBO(99, 103, 133, 1.0)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  children: [
                    Icon(Icons.comment_outlined,color: Colors.grey,) ,
                    SizedBox(width: 8),
                    ComponentText(content: int.parse(article['comments'])),
                    SizedBox(width: 14),
                    ArticleScreen(article: article,),
                    SizedBox(width: 8),
                    ComponentText(content: int.parse(article['likes'])),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.share_outlined,color: Colors.grey,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(height: 1,),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey
                ),
              ),
              Container(
                child: ListView.builder(
                  itemCount: article['comments_data'].length,
                  itemBuilder: (BuildContext context, int index) {
                    return Text('123');
                  },
                ),
              ),
              //底部输入框

            ],
          ),
        ),
      ),
    );
  }

// Widget _buildTextComposer() {
//   return ;
// }
//
// void _handleSubmitted(String text) {
//   if (_textEditingController.text.isEmpty) {
//     PromptDialogFactory.create(
//         context,
//         '提示',
//         '你的输入为空',
//     );
//     return;
//   }
//   // 寻找作者在personaldata列表中的位置
//   int authorindex = 0;
//   for(int i = 0; i < all.length; i++){
//     if(widget.userInfo['name'] == all[i]['name']){
//       authorindex = i;
//       break;
//     }
//   }
//   // 寻找文章在post列表中的位置
//   int articleindex = 0;
//   for(int j = 0; j < all.length; j++){
//     if(widget.userInfo['name'] == all[j]['name']){
//       articleindex = j;
//       break;
//     }
//   }
//   setState(() {
//     all[authorindex]['post'][articleindex]['comments_data'].add({
//       'text': _textEditingController.text,
//       'time': DateTime.now().toString(),
//       'name': admin[0]['name'],
//       'image': admin[0]['image'],
//       'likes': 0
//     });
//     article = all[authorindex]['post'][articleindex];
//   });
// }
}

child: Container(
padding: const EdgeInsets.fromLTRB(20, 20, 15, 0),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Row(
children: [
GestureDetector(
child: CircleAvatar(
radius: 24,
backgroundImage: AssetImage('${userInfo['avatar']}'),
),
onTap: (){
Navigator.push(context,
MaterialPageRoute(builder: (context)=>PersonalProfilePage(userInfo: userInfo))
);
},
),
SizedBox(width: 16),
Expanded(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
GestureDetector(
child: Text(
'${userInfo['name']}',
style: TextStyle(
fontSize: 18,
fontWeight: FontWeight.bold,
),
),
onTap: (){
Navigator.push(context,
MaterialPageRoute(builder: (context)=>PersonalProfilePage(userInfo: userInfo))
);
},
),
SizedBox(height: 2),
Text(time,style: TextStyle(color: Colors.grey,fontSize: 15),),
],
),
),
Expanded(
child: Row(
mainAxisAlignment: MainAxisAlignment.end,
children: [
IconButton(
onPressed: _showPopupMenu,
icon: Icon(Icons.more_horiz,color: Colors.grey,)
)
],
)
)
],
),
Padding(
padding: const EdgeInsets.only(bottom: 16),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
SizedBox(height: 16),
Text(
'${article['text']}',
style: TextStyle(
fontSize: 20,
height: 1.4,
),
),
],
),
),
//显示图片，如果图片为空，则不显示
article['image']!=''?Container(
width: 200,
padding: EdgeInsets.only(bottom: 16),
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(40)
),
child: Image.asset(
'${article['image']}',
width: 200,
)
):Container(),
Container(
padding: EdgeInsets.symmetric(horizontal: 6,vertical: 4),
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(2),
color: Color.fromRGBO(220, 226, 235, 1.0),
),
child: Text(
'#${article['tags']}',
style: TextStyle(color: Color.fromRGBO(99, 103, 133, 1.0)),
),
),
Padding(
padding: const EdgeInsets.symmetric(vertical: 16),
child: Row(
children: [
Icon(Icons.comment_outlined,color: Colors.grey,) ,
SizedBox(width: 8),
ComponentText(content: int.parse(article['comments'])),
SizedBox(width: 14),
ArticleScreen(article: article,),
SizedBox(width: 8),
ComponentText(content: int.parse(article['likes'])),
Expanded(
child: Row(
mainAxisAlignment: MainAxisAlignment.end,
children: [
Icon(Icons.share_outlined,color: Colors.grey,),
],
),
),
],
),
),
Divider(height: 1,),
Container(
height: 20,
decoration: BoxDecoration(
color: Colors.grey
),
child: Text('${article['comments_data'].length}'),
),
Container(
height: 800,
child: ListView.builder(
// reverse: true,
itemCount: 1,
itemBuilder: (BuildContext context, int index) {
return Text('123');
},
),
),
],
),
),