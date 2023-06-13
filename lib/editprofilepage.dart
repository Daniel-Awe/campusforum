import 'package:campus/Data/mysqldata.dart';
import 'package:campus/components/showdialog.dart';
import 'package:flutter/material.dart';
import 'Data/globalcolors.dart';
import 'Data/personaldata.dart';


class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  TextEditingController _accountController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _schoolController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  String selectedGender = 'male';

  @override
  void initState(){
    super.initState();
    //对个人资料的所有TextField框进行初始化操作
    _accountController.text = loginIndex == 404? 'admin': usersdata[loginIndex]['Account'];
    _passwordController.text = loginIndex == 404? 'admin': usersdata[loginIndex]['Password'];
    _usernameController.text = admin[0]['name'];
    selectedGender = admin[0]['sex'];
    _schoolController.text = admin[0]['school'];
    _emailController.text = admin[0]['email'];
  }
  bool changed(String password){
    print(password);
    return true;
  }

  //未联网成功、连接mysql不成功，则修改数据提交到本地的'personaldata'中
  bool ischangedA(){
    if(_accountController.text != admin[0]['account']
        || _passwordController.text != admin[0]['password']
        || _emailController.text != admin[0]['email']
        || _usernameController.text != admin[0]['name']
        || _schoolController.text != admin[0]['school']
        || selectedGender != admin[0]['sex']){
      return true;
    }
    return false;
  }

  //连接Mysql成功
  bool ischangedB(){
    if(_accountController.text != usersdata[loginIndex]['Account']
        || _passwordController.text != usersdata[loginIndex]['Password']
        || _emailController.text != usersdata[loginIndex]['Email']
        || _usernameController.text != usersdata[loginIndex]['Username']
        || _schoolController.text != usersdata[loginIndex]['School']
        || selectedGender != usersdata[loginIndex]['Gender']){
      return true;
    }
    return false;
  }

  //提交本地的personaldata.dart
  void updataLocaluser(){
    setState(() {
      admin[0]['password'] = _passwordController.text;
      admin[0]['account'] = _accountController.text;
      admin[0]['name'] = _usernameController.text;
      admin[0]['sex'] = selectedGender;
      admin[0]['school'] = _emailController.text;
      all[all.length-1]['name'] = _usernameController.text;
      all[all.length-1]['sex'] = selectedGender;
      all[all.length-1]['school'] = _emailController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('个人资料',style: TextStyle(fontWeight: FontWeight.bold),),
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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 18,),
              Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(admin[0]['avatar']),
                  ),
                  Container(
                    width: 140,
                    height: 140,
                    decoration: BoxDecoration(
                      border: Border.all(width: 3,color: themeColors[colorindex]),
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                    ),
                  )
                ],
              ),
              SizedBox(height: 16,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    controller: _accountController,
                    decoration: InputDecoration(labelText: '账号'),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(labelText: '密码'),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: _usernameController,
                    decoration: InputDecoration(labelText: '用户名'),
                  ),
                  SizedBox(height: 16,),
                  Text('性别',style: TextStyle(fontSize: 12,color: Colors.black.withOpacity(0.7)),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Radio(
                        value: 'male',
                        groupValue: selectedGender,
                        onChanged: (value) {
                          setState(() {
                            selectedGender = 'male';
                          });
                        },
                      ),
                      Text('男'),
                      Radio(
                        value: 'female',
                        groupValue: selectedGender,
                        onChanged: (value) {
                          setState(() {
                            selectedGender = 'female';
                          });
                        },
                      ),
                      Text('女'),
                    ],
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: _schoolController,
                    decoration: InputDecoration(labelText: '学校'),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(labelText: '邮箱'),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
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
                    print(_accountController);
                    print(_passwordController);
                    print(loginIndex+1);
                    print(selectedGender);
                    // 如果网络连接不成功，即usersdata为空
                    if(usersdata.length == 0){
                      if(ischangedA()){
                        updataLocaluser();
                        PromptDialogFactory.create(
                            context,
                            '提示',
                            '个人修改成功'
                        );
                      }else{
                        PromptDialogFactory.create(
                            context,
                            '提示',
                            '你未做任何修改'
                        );
                      }
                    //else 是连接mysql时的程序运行代码
                    }else if(usersdata.length >0){
                      if(ischangedB()){
                        //提交数据库
                        updateUser('${loginIndex+1}', _accountController.text, _passwordController.text,
                            _usernameController.text, selectedGender, _schoolController.text, _emailController.text);
                        //提交本地local的personaldata.dart
                        updataLocaluser();
                        PromptDialogFactory.create(
                            context,
                            '提示',
                            '个人修改成功'
                        );
                      }else{
                        PromptDialogFactory.create(
                            context,
                            '提示',
                            '你未做任何修改'
                        );
                      }
                    }
                  },
                  child: Text(
                    '提交修改',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      )
    );
  }
}
