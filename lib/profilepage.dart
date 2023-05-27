import 'package:flutter/material.dart';
import 'followerpage.dart';
import 'followingpage.dart';
import 'mycollections.dart';
import 'myposts.dart';
import 'settingspage.dart';
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
                padding: EdgeInsets.only(top: 50,bottom: 20),
                height: 240,
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
                        SizedBox(width: 25,),
                        CircleAvatar(
                          radius: 40.0,
                          backgroundImage: AssetImage('${userInfo['avatar']}'),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '${admin[0]['name']}',
                                    style: TextStyle(
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white
                                    ),
                                  ),
                                  SizedBox(width: 7,),
                                  userInfo['sex'] == 'male'?Icon(Icons.male, color: Colors.blueAccent,):Icon(Icons.female,color: Colors.red,),
                                ],
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
                      ],
                    ),
                    Column(
                        children: [
                          SizedBox(height: 25,),
                          Row(
                            children: [
                              SizedBox(width: 10,),
                              Expanded(
                                  child: GestureDetector(
                                    child: Column(
                                      children: [
                                        Text('粉丝', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                                        SizedBox(height: 5,),
                                        Text('${userInfo['followerList'].length}', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                    onTap: (){
                                      Navigator.push(context, 
                                      MaterialPageRoute(builder: (context)=>FollowerPage()));
                                    },
                                  )
                              ),
                              Expanded(
                                  child: GestureDetector(
                                    child: Column(
                                      children: [
                                        Text('关注', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                                        SizedBox(height: 5,),
                                        Text('${userInfo['followingList'].length}', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                    onTap: (){
                                      Navigator.push(context, 
                                          MaterialPageRoute(builder: (context)=>FollowingPage()));
                                    },
                                  )
                              ),
                              Expanded(
                                  child: GestureDetector(
                                    child: Column(
                                      children: [
                                        Text('帖子', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                                        SizedBox(height: 5,),
                                        Text('${userInfo['post'].length}', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                    onTap: (){
                                      Navigator.push(context, 
                                      MaterialPageRoute(builder: (context)=>myPosts()));
                                    },
                                  )
                              ),
                              Expanded(
                                  child: GestureDetector(
                                    child: Column(
                                      children: [
                                        Text('收藏', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                                        SizedBox(height: 5,),
                                        Text('${userInfo['likes'].length}', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                    onTap: (){
                                      Navigator.push(context, 
                                      MaterialPageRoute(builder: (context)=>myCollections()));
                                    },
                                  )
                              ),
                              SizedBox(width: 10,),
                            ],
                          )
                        ]
                    ),
                  ],
                )
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 0, 0, 0.3),
                  ),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.95),
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              leading: Icon(Icons.rule),
                              title: Text('社区规范'),
                              trailing: Icon(Icons.keyboard_arrow_right),
                            ),
                            ListTile(
                              leading: Icon(Icons.help),
                              title: Text('新手帮助'),
                              trailing: Icon(Icons.keyboard_arrow_right),
                            ),
                            ListTile(
                              leading: Icon(Icons.group),
                              title: Text('邀请校友'),
                              trailing: Icon(Icons.keyboard_arrow_right),
                            ),
                          ],
                        )
                      ),
                      SizedBox(height: 16.0),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.95),

                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: ListTile(
                          leading: Icon(Icons.settings),
                          title: Text('设置'),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: (){
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>SettingsPage()));
                          },
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.95),
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              leading: Icon(Icons.info),
                              title: Text('关于我们'),
                              trailing: Icon(Icons.keyboard_arrow_right),
                            ),

                            ListTile(
                              leading: Icon(Icons.feedback),
                              title: Text('意见反馈'),
                              trailing: Icon(Icons.keyboard_arrow_right),
                            ),
                          ],
                        ),
                      ),
                    ],
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