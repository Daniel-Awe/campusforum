
import 'package:campus/Data/globalcolors.dart';
import 'package:campus/themecolorspage.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'components/settingscard.dart';
import 'components/showdialog.dart';

class SettingsPage extends StatelessWidget {

  List<IconData> iconList = [
    Icons.security,
    Icons.access_alarm,
    Icons.notifications,
    Icons.color_lens,
    Icons.format_size,
    Icons.help,
    Icons.account_circle,
    // Icons.share,
    Icons.info_outline
    // 添加更多图标
  ];
  List<String> titleList = [
    '账号安全',
    '隐私设置',
    '通知设置',
    '颜色模式',
    '字号大小',
    '帮助与关心',
    '个人信息收集清单',
    // '第三方共享个人信息清单',
    '关于浙科圈'
  ];
  final int index =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('设置', style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1)
        ),
        child: Column(
          children: [
            SizedBox(height: 5,),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.95),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  children: [
                    SettingsCard(icon: iconList[0], title: titleList[0]),
                    SettingsCard(icon: iconList[1], title: titleList[1]),
                  ],
                )
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.95),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  children: [
                    SettingsCard(icon: iconList[2], title: titleList[2]),
                    ListTile(
                      leading: Icon(Icons.color_lens,color: Colors.grey),
                      title: Text('颜色模式',style: TextStyle(color: Colors.black),),
                      trailing: Icon(Icons.arrow_forward_ios, color:Colors.grey,size: 18),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ThemeColorsPage()));
                      },
                    ),
                    SettingsCard(icon: iconList[4], title: titleList[4]),
                  ],
                )
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.95),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  children: [
                    SettingsCard(icon: iconList[5], title: titleList[5]),
                    SettingsCard(icon: iconList[6], title: titleList[6]),
                  ],
                )
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.95),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  children: [
                    SettingsCard(icon: iconList[7], title: titleList[7]),
                    ListTile(
                      leading: Icon(Icons.logout,color: Colors.red),
                      title: Text('退出登录',style: TextStyle(color: Colors.red),),
                      trailing: Icon(Icons.arrow_forward_ios, color:Colors.grey,size: 18),
                      onTap: (){
                        ConfirmDialogFactory.create(
                          context,
                          '提示',
                          '你确定要退出登录吗？',
                              () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context)=>MyApp()));
                          },
                          cancerEvent: () {
                            // 点击取消按钮后执行的事件
                            // 可以在这里编写需要执行的逻辑代码
                            print('点击了取消按钮');
                          },
                        );
                      },
                    ),
                  ],
                )
            ),
          ],
        ),
      )
    );
  }
}
