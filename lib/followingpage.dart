import 'package:flutter/material.dart';
import 'personalprofilepage.dart';
import 'Data/personaldata.dart';
//组件
import 'components/showdialog.dart';
import 'components/customappbar.dart';
import 'Data/globalcolors.dart';

class FollowingPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _FollowingPageState();
}

class _FollowingPageState extends State<FollowingPage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: CustomAppBar(
          title: '关注',
          color: themeColors[colorindex],
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        body: ListView.builder(
          itemCount: admin[0]['followingList'].length,
          itemBuilder: (BuildContext context, int index) {
            String name = admin[0]['followingList'][index];
            int i=0;
            for(i=0;i<all.length;i++){
              if(name==all[i]['name']){
                break;
              }
            }
            final Map<String, dynamic> item = all[i];
            return Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(item['avatar']),
                      // backgroundImage: NetworkImage(item['avatar']),
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
                    subtitle: Text(
                      item['intro'],
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
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
                          '已关注',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              // color: item['isFollowing'] ? Colors.black54 : Colors.white,
                              color: Colors.red
                          ),
                        ),
                      ),
                      onTap: () {
                        ConfirmDialogFactory.create(
                          context,
                          '提示',
                          '是否取消关注？',
                              () {
                            setState(() {
                              admin[0]['followingList'].removeAt(index);
                            });
                            print('点击了确定按钮');
                          },
                          cancerEvent: () {
                            // 点击取消按钮后执行的事件
                            // 可以在这里编写需要执行的逻辑代码
                            print('点击了取消按钮');
                          },
                        );
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
