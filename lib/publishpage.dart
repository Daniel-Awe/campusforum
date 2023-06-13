import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:shared_preferences/shared_preferences.dart';
//页面
import 'postpage.dart';
//数据
import 'Data/personaldata.dart';
import 'Data/globalcolors.dart';
//组件
import 'components/showdialog.dart';


class PublishArticlePage extends StatefulWidget {
  const PublishArticlePage({Key? key}) : super(key: key);

  @override
  _PublishArticlePageState createState() => _PublishArticlePageState();
}

class _PublishArticlePageState extends State<PublishArticlePage> with AutomaticKeepAliveClientMixin {
  bool isposted = false;
  //选择板块
  String selectedMenuItem = '选择板块';
  final List<String> menuItems = ['身边趣事', '创作分析', '吐槽爆料', '时事新闻', '情感', '嘻哈', '学业疑难', '日常生活', '校内兼职', '实习', '游戏娱乐', '家教'];
  TextEditingController _textEditingController = TextEditingController();
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
  String _text = ''; // 将_text定义在类级别

  //相册图片选择
  bool get wantKeepAlive => true;
  int colorIndex = 0;
  File? selectedImage; // 用于存储选择的图片
  String? imagePath = '';//图片路径

  Future<String?> _getImagePath() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? imagePath = prefs.getString('selectedImagePath');
    return imagePath;
  }
 //打开相册功能
  Future<void> _pickImage() async {
    final imagePicker = ImagePicker();
    final pickedImage = await imagePicker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        selectedImage = File(pickedImage.path);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _restoreSelectedImage();
    _restoreText();

    main();
  }

  void main() async {
    String? imagePath = await _getImagePath();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    if(isposted){
      _clearSelectedImage();
    }else{
      _saveSelectedImage();
    }
    if(isposted){
      _clearText();
    }else{
      _saveTextChanged();
    }
    super.dispose();
  }

  Future<void> _saveSelectedImage() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    if (selectedImage != null) {
      prefs.setString('selectedImagePath', selectedImage!.path);
    } else {
      prefs.remove('selectedImagePath');
    }
  }
  Future<void> _restoreSelectedImage() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? imagePath = prefs.getString('selectedImagePath');

    if (imagePath != null) {
      setState(() {
        selectedImage = File(imagePath);
      });
    }
  }
  Future<void> _clearSelectedImage() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('selectedImagePath');
  }

  //显示文字个数
  int _textcount = 0;
  int _maxtextcount =800;
  Future<void> _restoreText() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final savedText = prefs.getString('savedText');
    if (savedText != null) {
      setState(() {
        _text = savedText;
        _textcount = _text.length;
        _textEditingController.text = savedText;
      });
    }
  }
  Future<void> _saveTextChanged() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    if (_text != null) {
      prefs.setString('savedText', _text);
    } else {
      prefs.remove('savedText');
    }
  }
  Future<void> _clearText() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('savedText');
  }

  @override
  Widget build(BuildContext context) {
    super.build(context); // 使用 AutomaticKeepAliveClientMixin 需要调用 super.build(context)

    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                IconButton(onPressed: _showPopupMenu, icon: Icon(Icons.menu)),
                TextButton(
                  onPressed: _showPopupMenu,
                  child: Text(selectedMenuItem,style: TextStyle(fontSize: 18,color: Colors.black),),
                ),
              ],
            ),
          ),
          Padding(
            padding:EdgeInsets.only(left: 15,bottom: 7),
            child: Text(
              '板块格式说明',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _textEditingController,
                      onChanged: (value) {
                        setState(() {
                          _text = value;
                          _textcount = _text.length;
                        });
                      },
                      maxLines: null,
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '请输入正文内容',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16,vertical: 4),
            child: Text('${_textcount}'+'/'+'${_maxtextcount}',style: TextStyle(color: Colors.grey),),
          ),
          //打开相册功能 ！！！！！
          GestureDetector(
            onTap: () {
              _pickImage(); // 打开相册选择图片
            },
            child: Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              padding: selectedImage == null? EdgeInsets.all(40): null,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                  style: BorderStyle.solid,
                ),
              ),
              child: selectedImage != null
                  ? Image.file(selectedImage!, fit: BoxFit.cover) // 显示选择的图片
                  : Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 7.5,
                    height: 2,
                    child: Container(
                      color: Colors.grey, // 十字的颜色
                    ),
                  ),
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: 8,
                    width: 2,
                    child: Container(
                      color: Colors.grey, // 十字的颜色
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            height: 48,
            width: 600,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: themeColors[colorindex],
            ),
            child: TextButton(
              onPressed: () {
                if(selectedMenuItem == '选择板块'){
                  PromptDialogFactory.create(
                    context,
                    '提示',
                    '你还没有选择板块',
                  );
                }else if(_text == ''){
                  PromptDialogFactory.create(
                      context,
                      '提示',
                      '你还没有输入任何文本内容'
                  );
                }else {
                  ConfirmDialogFactory.create(
                    context,
                    '提示',
                    '确定要发布该文章？',
                        () {
                      admin[0]['post'].add({
                        'title': '',
                        'text':_text,
                        'time': DateTime.now().toString(),
                        'comments': '0',
                        'likes': '0',
                        'tags': selectedMenuItem,
                        'image': '',
                        'name': '${admin[0]['name']}',
                        'comments_data': [],
                      });
                      all[all.length-1]['post'].add({
                        'title': '',
                        'text':_text,
                        'time': DateTime.now().toString(),
                        'comments': '0',
                        'likes': '0',
                        'tags': selectedMenuItem,
                        'image': '',
                        'name': '${admin[0]['name']}',
                        'comments_data': [],
                      });
                      int index = admin[0]['post'].length - 1;
                      print(admin[0]['post'][index]);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>PostPage(userInfo: admin[0], article: admin[0]['post'][index]))
                      );
                    },
                    cancerEvent: () {
                      // 点击取消按钮后执行的事件
                      // 可以在这里编写需要执行的逻辑代码

                    },
                  );
                }
              },
              child: Text(
                '发布',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ]
    ) ;
  }
}
