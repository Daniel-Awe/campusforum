import 'package:flutter/material.dart';

class SettingsCards{
  static Future create(BuildContext context, IconData icon, String title, {void Function()? callback}) async {
    return ListTile(
      leading: Icon(icon,color: Colors.white,),
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 18),
      onTap: () {
        if (callback != null) {
          callback?.call(); // 传递参数index，这里示例传递0，根据实际情况传递相应的索引值
        }
      },
    );
  }
}

class SettingsCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color? iconColor;
  final Function? onTap; // 将回调函数声明为可选参数

  SettingsCard({required this.icon, required this.title, this.iconColor, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon,color: iconColor,),
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 18),
      onTap: () {
        if (onTap != null) {
          onTap?.call(); // 传递参数index，这里示例传递0，根据实际情况传递相应的索引值
        }
      },
    );
  }
}