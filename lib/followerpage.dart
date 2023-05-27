import 'package:flutter/material.dart';
import 'Data/personaldata.dart';
import 'personalprofilepage.dart';
//组件
import 'components/follow.dart';
import 'components/showdialog.dart';
import 'Data/globalcolors.dart';
import 'components/customappbar.dart';

class FollowerPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _FollowerPageState();
}

class _FollowerPageState extends State<FollowerPage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: CustomAppBar(
          title: '粉丝',
          color: themeColors[colorindex],
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        body: ListView.builder(
          itemCount: admin[0]['followerList'].length,
          itemBuilder: (BuildContext context, int index) {
            String name = admin[0]['followerList'][index];
            //筛选出该人的个人信息
            int i=0;
            for(i=0;i<all.length;i++){
              if(name==all[i]['name']){
                break;
              }
            }
            final Map<String, dynamic> item = all[i];
            //查看该人是否已经关注
            bool _isfollow = Isfollowed(name);
            return Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Column(
                children: [

                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(item['avatar']),
                      radius: 28,
                    ),
                    title: Text(
                      item['name'],
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    subtitle: Row(
                      children: [
                        item['post'].length>0?Text(
                          '笔记 '+ item['post'].length.toString() + ' | ' + '粉丝 ' + item['fans'].toString() ,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ):Text(
                          '粉丝 ' + item['fans'].toString() ,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PersonalProfilePage(userInfo: item,)));
                    },
                    trailing: InkWell(
                      child: Container(
                        width: 70,
                        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.red),
                            // color: item['isFollowing'] ? Colors.white : Colors.red,
                            color: Colors.white
                        ),
                        child: Text(
                          '回粉',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            // color: item['isFollowing'] ? Colors.black54 : Colors.white,
                            color: Colors.red,

                          ),
                        ),
                      ),
                      onTap: () {
                        if(_isfollow == false){
                          ConfirmDialogFactory.create(
                            context,
                            '提示',
                            '是否关注此作者？',
                                () {
                              setState(() {
                                admin[0]['followingList'].add(name);
                              });
                              print('点击了确定按钮');
                            },
                            cancerEvent: () {
                              // 点击取消按钮后执行的事件
                              // 可以在这里编写需要执行的逻辑代码
                              print('点击了取消按钮');
                            },
                          );
                        }else{
                          PromptDialogFactory.create(
                            context,
                            '提示',
                            '你已关注过此作者',
                          );
                        }
                      },
                    ),
                  ),
                  Divider(height: 1, thickness: 1, indent: 72, endIndent: 16, color: Colors.grey[300]),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}