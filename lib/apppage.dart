import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
//主要底部导航跳转页面
import 'homepage.dart';
import 'searchpage.dart';
import 'publishpage.dart';
import 'messagepage.dart';
import 'profilepage.dart';
//次级页面
import 'settingspage.dart';
import 'followingpage.dart';
import 'followerpage.dart';
import 'editprofilepage.dart';
//数据
import 'Data/personaldata.dart';
import 'Data/globalcolors.dart';



//页面切换
final List<Widget> _pages = [
  HomePage(),
  SearchPage(),
  PublishArticlePage(),
  MessagePage(),
  ProfilePage()
];

//主体
int _currentIndex = 0;
class AppPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _AppPageState();
}
class _AppPageState extends State<AppPage>{

  void onTabTapped(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          appBar: _appbar[_currentIndex] as PreferredSizeWidget?,
          body: _pages[_currentIndex],
          drawer: SizedBox(
            width: MediaQuery.of(context).size.width * 0.85,
            child: MyDrawer(),
          ),
          bottomNavigationBar: BottomNavigationBar(
            iconSize: 28,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.blue,
            currentIndex: _currentIndex,
            onTap: onTabTapped,
            items: [
              BottomNavigationBarItem(
                icon: new Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.add_box_outlined),
                label: 'Post',
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.message),
                label: 'message',
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          ),
        )
    );
  }
}

//_appbar
late List<Widget?> _appbar = [

  //home 首页
  AppBar(
    title: Text('Welcome to ZUST~', style: TextStyle(color: Colors.black),),
    backgroundColor: Colors.white,
    leading: Builder(builder: (context) {
      return GestureDetector(
        child: CustomLeading(),
        onTap: () {
          // 打开抽屉菜单
          Scaffold.of(context).openDrawer();
        },
      );
    }),
  ),
  //search 搜索
  AppBar(
    backgroundColor: Colors.white,
    title: Text(
      '搜索与板块',
      style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.black
      ),
    ),
    centerTitle: true,
    leading: Builder(builder: (context) {
      return GestureDetector(
        child: CustomLeading(),
        onTap: () {
          // 打开抽屉菜单
          Scaffold.of(context).openDrawer();
        },
      );
    }),
  ),
  //post 发布
  AppBar(
    backgroundColor: Colors.white,
    title: Text(
      '搜索与板块',
      style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.black
      ),
    ),
    centerTitle: true,
    leading: Builder(builder: (context) {
      return GestureDetector(
        child: CustomLeading(),
        onTap: () {
          // 打开抽屉菜单
          Scaffold.of(context).openDrawer();
        },
      );
    }),
  ),
  //message 消息
  AppBar(
    title: Text(
      'Chat',
      style: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
          color: Colors.black
      ),
    ),
    centerTitle: false,
    backgroundColor: Colors.white,
    actions: [
      IconButton(onPressed: () => {}, icon: Icon(Icons.search, size: 26, color: Colors.black,),),
    ],
    leading: Builder(builder: (context) {
      return GestureDetector(
        child: CustomLeading(),
        onTap: () {
          // 打开抽屉菜单
          Scaffold.of(context).openDrawer();
        },
      );
    }),
  ),
  null,
  //profile 个人信息
  AppBar(
    title: Text('个人主页', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
    centerTitle: true,
    backgroundColor: Colors.white,
    elevation: 4,
    leading: Builder(builder: (context) {
      return GestureDetector(
        child: CustomLeading(),
        onTap: () {
          // 打开抽屉菜单
          Scaffold.of(context).openDrawer();
        },
      );
    }),
    actions: [
      IconButton(
          onPressed: (){},
          icon: Icon(Icons.share,color: Colors.black,)
      )
    ],
  ),
];
//AppBar, 头部
class CustomLeading extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          left: 15,
          top: 10,
          child: CircleAvatar(
            backgroundImage: AssetImage(admin[0]['avatar']),
            radius: 18,
          ),
        ),

        Container(
          margin: EdgeInsets.only(left: 10),
          child: CircleAvatar(
            radius: 22,
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.blue,
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: themeColors[colorindex],
                  width: 2,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

//drawer，侧边栏
final followingindex = admin[0]['followingList'].length;
final followerindex = admin[0]['followerList'].length;
class MyDrawer extends StatelessWidget {
  //文字大小
  final size = 18;
  final Map<String, dynamic> userInfo = admin[0];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.only(left: 20,right: 20,top: 50,bottom: 50),
        child: Column(
          children: [
            // 模块一
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('${admin[0]['avatar']}'),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '${userInfo['name']}',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '${userInfo['email']}',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      GestureDetector(
                        child: RichText(
                          text: TextSpan(
                            text: '正在关注 ',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                            children: [
                              TextSpan(
                                text: '${userInfo['followingList'].length}',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () => {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => FollowingPage()))
                        },
                      ),
                      SizedBox(width: 10,),
                      GestureDetector(
                          child:  RichText(
                            text: TextSpan(
                              text: '被关注 ',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                              children: [
                                TextSpan(
                                  text: '${userInfo['followerList'].length}',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: () => {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => FollowerPage()))
                          }
                      )
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            // 模块二
            Expanded(
              child: Container(
                color: Colors.white,
                child: ListView(
                  children: [
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text('个人资料', style: TextStyle(fontSize: 16),),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfilePage()));
                      },
                    ),
                    ListTile(
                        leading: Icon(Icons.history),
                        title: Text('浏览历史', style: TextStyle(fontSize: 16),),
                        onTap: () => {

                        }
                    ),
                    ListTile(
                      leading: Icon(Icons.person_add, color: Colors.blueAccent,),
                      title: Text('邀请校友', style: TextStyle(fontSize: 16),),
                      onTap: (){
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.rule),
                      title: Text('社区规范', style: TextStyle(fontSize: 16),),
                      onTap: (){},
                    ),
                    ListTile(
                      leading: Icon(Icons.help),
                      title: Text('帮助', style: TextStyle(fontSize: 16),),
                      onTap: (){},
                    ),
                    ListTile(
                      leading: Icon(Icons.drafts),
                      title: Text('我的草稿箱', style: TextStyle(fontSize: 16),),
                      onTap: (){},
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            // 模块三
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('设置',style: TextStyle(fontSize: 16),),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage() ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('关于我们',style: TextStyle(fontSize: 16),),
              onTap: (){

              },
            )
          ],
        ),
      ),
    );
  }
}