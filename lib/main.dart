
//APP主题：校园论坛
//APP名称：浙科圈  英文名：ZUST-Circle


import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
//主要页面
import 'apppage.dart';
import 'register.dart';
//数据
import 'Data/globalcolors.dart';
import 'Data/mysqldata.dart';
import 'Data/personaldata.dart';
//组件
import 'components/showdialog.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp( MyApp());
}

//登录页面
class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp>{
  //账号与密码
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  //单选框
  bool _isChecked = false;

  @override

  void initState() {
    super.initState();
    fetchUsers();
  }

  //初始化admin列表
  void initAdminList(int loginIndex){
    //admin的列表
    admin[0]['name'] = usersdata[loginIndex]['Username'];
    admin[0]['sex'] = usersdata[loginIndex]['Gender'];
    admin[0]['email'] = usersdata[loginIndex]['Email'];
    admin[0]['avatar'] = 'assets/admin/admin${loginIndex+1}.jpg';
    //遍历admin的文章，更新名字为当前登录者的名字
    for(int i =0;i<admin[0]['post'].length;i++){
      admin[0]['post'][i]['name'] = usersdata[loginIndex]['Username'];
      all[all.length-1]['post'][i]['name'] = usersdata[loginIndex]['Username'];
    }
    //all的列表
    all[all.length-1]['name'] = usersdata[loginIndex]['Username'];
    all[all.length-1]['sex'] = usersdata[loginIndex]['Gender'];
    all[all.length-1]['email'] = usersdata[loginIndex]['Email'];
    all[all.length-1]['avatar'] = 'assets/admin/admin${loginIndex+1}.jpg';
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                Text('数媒211 项敬畏 1210680014',style: TextStyle(color: Colors.black,fontSize: 18),),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 35,
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(4)
                  ),
                  child: TextButton(
                    onPressed: (){print(usersdata);},
                    child: Text('connect mysql',style: TextStyle(fontSize: 14,color: Colors.white),),
                  )
                )
              ],
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 4,
          ),
          body: SingleChildScrollView(
            child: Center(
                child: Builder(
                  builder: (context)=>Container(
                    height: 1000,
                    padding: EdgeInsets.fromLTRB(20, 70, 20, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            CircleAvatar(
                              radius: 70,
                              backgroundImage: AssetImage(admin[0]['avatar']),
                            ),
                            Container(
                              width: 156,
                              height: 156,
                              decoration: BoxDecoration(
                                border: Border.all(width: 3,color: themeColors[colorindex]),
                                color: Colors.transparent,
                                shape: BoxShape.circle,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 30),
                        TextField(
                          controller: _usernameController,
                          decoration: InputDecoration(
                            labelText: '账号',
                            hintText: '请输入账号',
                            prefixIcon: Icon(Icons.person),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: '密码',
                            hintText: '请输入密码',
                            prefixIcon: Icon(Icons.lock),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Checkbox(
                              value: _isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  _isChecked = value!;
                                });
                              },
                            ),
                            Text('我已阅读并同意服务协议'),
                          ],
                        ),
                        SizedBox(height: 48,),
                        Container(
                          width: 400,
                          height: 53,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: themeColors[colorindex]
                          ),
                          child: TextButton(
                            onPressed: (){
                              if(!Login(usersdata, _usernameController.text, _passwordController.text)){
                                PromptDialogFactory.create(
                                  context,
                                  '提示',
                                  '你的账号或密码输入有误，请重新输入',
                                );
                              }else if(_isChecked==false){
                                PromptDialogFactory.create(
                                  context,
                                  '提示',
                                  '请你阅读并勾选下方条款',
                                );
                              }else if(_isChecked && Login(usersdata, _usernameController.text, _passwordController.text)){
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return CupertinoAlertDialog(
                                      title: Text('提示'),
                                      content: Text('登录成功!'),
                                      actions: [
                                        CupertinoDialogAction(
                                          child: const Text('取消'),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                        CupertinoDialogAction(
                                          child: const Text('确定'),
                                          onPressed: ()  {
                                            Navigator.push(context,
                                            MaterialPageRoute(builder: (context)=>AppPage()));
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                );
                                //初始化列表
                                initAdminList(loginIndex);
                              }
                            },
                            child: Text(
                              '登录',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                  onPressed: (){
                                    Navigator.push(context,
                                    MaterialPageRoute(builder: (context)=>RegisterPage()));
                                  },
                                  child: Text('新用户注册', style: TextStyle(color: Colors.grey),)
                              ),
                              TextButton(
                                  onPressed: (){},
                                  child: Text('短信验证码登录', style: TextStyle(color: Colors.grey))
                              ),
                              TextButton(
                                  onPressed: (){
                                    fetchUsers();
                                    print(usersdata);
                                  },
                                  child: Text('忘记密码', style: TextStyle(color: Colors.grey))
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  color: Color.fromRGBO(201, 201, 201, 1),
                                  thickness: 1,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 25),
                                child: Text('第三方登录'),
                              ),
                              Expanded(
                                child: Divider(
                                  color: Color.fromRGBO(201, 201, 201, 1),
                                  thickness: 1,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 15,),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 50),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  // 处理点击事件
                                },
                                child: Container(
                                  width: 45,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                        offset: Offset(0, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage('assets/login/qq.jpg'),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  // 处理点击事件
                                },
                                child: Container(
                                  width: 45,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                        offset: Offset(0, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage('assets/login/wechat.jpg'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
            ),
          )
      ),
    );
  }
}



