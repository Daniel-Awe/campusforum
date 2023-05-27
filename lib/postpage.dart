import 'package:flutter/material.dart';
import 'personalprofilepage.dart';
// 组件
import 'components/likesbutton.dart';
import 'components/time.dart';
import 'components/text.dart';
import 'components/showdialog.dart';
import 'components/time.dart';
import 'components/commentsbutton.dart';
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
          child: Text(item,style: TextStyle(color:  Colors.black.withOpacity(0.75)),),
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
    final Map<String, dynamic> userInfo = widget.userInfo;
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
                    Icon(Icons.edit, color: Colors.grey),
                    SizedBox(width: 8),
                    Text('写回答',style: TextStyle(color:  Colors.black.withOpacity(0.75)),),
                  ],
                ),
              ),
              PopupMenuItem<String>(
                value: 'invite',
                child: Row(
                  children: [
                    Icon(Icons.person_add, color: Colors.grey),
                    SizedBox(width: 8),
                    Text('邀请',style: TextStyle(color: Colors.black.withOpacity(0.75)),),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            sliver: SliverToBoxAdapter(
              child: Row(
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
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(top: 10, left: 20, right: 20),
            sliver: SliverToBoxAdapter(
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
          ),
          SliverPadding(
            padding: EdgeInsets.only(top: 10, left: 10, right: 10),
            sliver: SliverToBoxAdapter(
              child: article['image']!=''?Container(
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
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(top: 5, left: 10, right: 10),
            sliver: SliverToBoxAdapter(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Color.fromRGBO(220, 226, 235, 1.0),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        '#${article['tags']}',
                        style: TextStyle(color: Color.fromRGBO(99, 103, 133, 1.0)),
                      ),
                    ),
                  ),
                ],
              )
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(top: 15, left: 20, right: 20),
            sliver: SliverToBoxAdapter(
              child:  Row(
                children: [
                  ArticleComments(size: 20,),
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
          ),
          SliverPadding(
              padding: EdgeInsets.only(top: 15, left: 20, right: 20),
            sliver: SliverToBoxAdapter(
              child:  Container(
                decoration: BoxDecoration(color: Theme
                    .of(context)
                    .cardColor),
                child: IconTheme(
                  data: IconThemeData(color: Theme.of(context).colorScheme.secondary),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: [
                        Flexible(
                          child: TextField(
                            controller: _textEditingController,
                            decoration: InputDecoration.collapsed(
                              hintText: '评论',
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.send),
                          onPressed: () {
                            if (_textEditingController.text.isEmpty) {
                              PromptDialogFactory.create(
                                context,
                                '提示',
                                '你的输入为空',
                              );
                              return;
                            }
                            // 寻找作者在personaldata列表中的位置
                            int authorindex = 0;
                            for(int i = 0; i < all.length; i++){
                              if(widget.userInfo['name'] == all[i]['name']){
                                authorindex = i;
                                break;
                              }
                            }
                            // 寻找文章在post列表中的位置
                            int articleindex = 0;
                            for(int j = 0; j < all[authorindex]['post'].length; j++){
                              if(widget.article['text'] == all[authorindex]['post'][j]['text']){
                                articleindex = j;
                                break;
                              }
                            }
                            setState(() {
                              if(widget.userInfo['status'] == 'Flutter Developer'){
                                articleindex = admin[0]['post'].length-1;
                                all[authorindex]['post'][articleindex]['comments_data'].add({
                                  'text': _textEditingController.text,
                                  'time': DateTime.now().toString(),
                                  'name': '${admin[0]['name']}',
                                  'avatar': '${admin[0]['avatar']}',
                                  'likes': 0
                                });
                                admin[0]['post'][articleindex]['comments_data'].add({
                                  'text': _textEditingController.text,
                                  'time': DateTime.now().toString(),
                                  'name': '${admin[0]['name']}',
                                  'avatar': '${admin[0]['avatar']}',
                                  'likes': 0
                                });
                                print(authorindex);
                                print(articleindex);
                              }else{
                                all[authorindex]['post'][articleindex]['comments_data'].add({
                                  'text': _textEditingController.text,
                                  'time': DateTime.now().toString(),
                                  'name': '${admin[0]['name']}',
                                  'avatar': '${admin[0]['avatar']}',
                                  'likes': 0
                                });
                                print(authorindex);
                                print(articleindex);
                              }
                              article = all[authorindex]['post'][articleindex];
                            });
                            // print(article);
                            // print(article['comments_data'][1]);
                            print(DateTime.now().toString());
                            _textEditingController.text ='';
                          },
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    String time_comment = getTime(article['comments_data'][index]['time']);
                return Padding(
                  padding: EdgeInsets.only(top: 4,bottom: 3,left: 5,right: 5),
                  child: ListTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 7,),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 16,
                              backgroundImage: AssetImage('${article['comments_data'][index]['avatar']}'),
                            ),
                            SizedBox(width: 12,),
                            Text('${article['comments_data'][index]['name']}',style: TextStyle(fontSize: 15,color: Color.fromRGBO(100, 106, 141, 1.0)),),
                            SizedBox(width: 7,),
                            Text('·',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                            SizedBox(width: 7,),
                            Text(time_comment),
                          ],
                        ),
                        SizedBox(height: 9,),
                        Container(
                          child: Text('${article['comments_data'][index]['text']}',style: TextStyle(fontSize: 17),),
                        ),
                      ],
                    ),

                  ),

                );
              },
              childCount: article['comments_data'].length,
            ),
          ),
        ],

      ),
    );
  }
}