import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


// 提示对话框封装
class PromptDialogFactory{
  static Future create(BuildContext context, String title, String text) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text(title),
          content: Text(text),
          actions: [
            CupertinoDialogAction(
              child: const Text('确定'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}


// 确认对话框封装
class ConfirmDialogFactory{
  static Future create(BuildContext context, String title, String text, void Function() okEvent,
      {void Function()? cancerEvent}) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text(title),
          content: Text(text),
          actions: [
            CupertinoDialogAction(
              child: const Text('取消'),
              onPressed: () {
                cancerEvent ??= (){};
                cancerEvent!();
                Navigator.pop(context);
              },
            ),
            CupertinoDialogAction(
              child: const Text('确定'),
              onPressed: () async {
                if (okEvent is Future Function()) {
                  // 如果okEvent是异步函数，则使用await等待其结果
                  await (okEvent)();
                  Navigator.pop(context);
                } else {
                  // 如果okEvent是非异步函数，则直接执行
                  okEvent();
                  Navigator.pop(context);
                }
              },
            ),
          ],
        );
      },
    );
  }
}

// showDialog(
// context: context,
// builder: (BuildContext context) {
// return AlertDialog(
// title: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text('提示:', style: TextStyle(fontSize: 15),),
// SizedBox(height: 3,),
// Text('是否要关注该作者？', style: TextStyle(fontSize: 17),)
// ],
// ),
// actions: [
// TextButton(
// style: ElevatedButton.styleFrom(
// elevation: 4,
// backgroundColor: Colors.white,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(10),
// side: BorderSide(color: Colors.red, width: 1.5),
// ),
// ),
// child: Text('取消',style: TextStyle(color: Colors.redAccent),),
// onPressed: () {
// Navigator.of(context).pop();
// },
// ),
// ElevatedButton(
// style: ElevatedButton.styleFrom(
// elevation: 4,
// backgroundColor: Colors.white,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(10),
// side: BorderSide(color: Colors.red, width: 1.5),
// ),
// ),
// child: Text('确定',style: TextStyle(color: Colors.redAccent),),
// onPressed: () {
// // 点击确定后，从列表中删除该关注对象
// setState(() {
// admin[0]['followingList'].add(name);
// });
// Navigator.of(context).pop();
// },
// ),
// ],
// );
// },
// );