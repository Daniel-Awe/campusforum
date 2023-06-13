import 'package:campus/main.dart';
import 'package:flutter/material.dart';
import 'apppage.dart';
//数据
import 'Data/globalcolors.dart';
import 'Data/mysqldata.dart';
//组件
import 'components/showdialog.dart';

class RegisterPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //账号与密码
  TextEditingController _accountController = TextEditingController();
  TextEditingController _passwordController1 = TextEditingController();
  TextEditingController _passwordController2 = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

  String password = '';
  bool isPasswordValid = false;

  void _validatePassword(String value) {
    setState(() {
      password = value;
      isPasswordValid = _isPasswordValid(password);
    });
  }

  // 密码框验证
  // 密码要有（数字、字母、特殊符号）这三种的至少两种，长度要求不少于7位。
  bool _isPasswordValid(String password) {
    bool hasNumber = false;
    bool hasLetter = false;
    bool hasSpecialCharacter = false;

    for (int i = 0; i < password.length; i++) {
      if (password[i].contains(RegExp(r'[0-9]'))) {
        hasNumber = true;
      } else if (password[i].contains(RegExp(r'[a-zA-Z]'))) {
        hasLetter = true;
      } else if (password[i].contains(RegExp(r'[@#$%^&+=!]'))) {
        hasSpecialCharacter = true;
      }
    }

    return ((hasNumber && hasLetter) || (hasSpecialCharacter && hasLetter) || (hasSpecialCharacter && hasNumber)) && password.length >= 7;
  }

  // 账号验证
  // 如果密码框不为空，而账号框为空，就返回false
  bool _isAccountValid(String value){
    return _passwordController1.text.length != 0 && value.length ==0;
  }
  //用户名验证（还没用到程序里）
  bool _isUsernameValid(String value){
    return _emailController.text.length != 0 && value.length ==0;
  }

  // 提交验证
  // 需要满足五个条件：密码框验证、账号验证、两次密码相同、手机号不为空，邮箱不为空
  // 以下是需要满足三个条件：密码框验证、账号验证、两次密码相同
  String error ='';
  bool register(String account, String password1, String password2){
    if( _isPasswordValid(password1)
        && !_isAccountValid(_accountController.text)
        &&  password1 == password2)
      return true;
    error = '密码或账号输入错误！';
    return false;
  }
  bool username(String value){
    if(value.length != 0)
      return true;
    error += '用户名不可为空！';
    return false;
  }
  bool email(String email){
    if(email.length != 0 )
      return true;
    error += '邮箱不可为空';
    return false;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('新用户注册',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('注册', style: TextStyle(fontSize: 32,color: Colors.black,fontWeight: FontWeight.bold),),
              SizedBox(height: 12,),
              TextFormField(
                controller: _accountController,
                onChanged: _isAccountValid,
                decoration: InputDecoration(
                  labelText: '账号',
                  helperStyle: TextStyle(fontSize: 12.0),
                  errorText: _isAccountValid(_accountController.text)
                      ? '*账号不可为空！'
                      : null,
                ),
              ),
              SizedBox(height: 12.0),
              TextFormField(
                controller: _passwordController1,
                onChanged: _validatePassword,
                decoration: InputDecoration(
                  labelText: '密码',
                  helperText:
                  '*密码要有（数字、字母、特殊符号）这三种的至少两种，长度要求不少于7位。',
                  helperStyle: TextStyle(fontSize: 12.0),
                  //如果密码框为0就不报错。密码需要满足三种的两种并且长度不小于7.
                  errorText: _isPasswordValid(_passwordController1.text) || _passwordController1.text.length == 0
                      ? null
                      : '密码不符合要求，请重新输入。',
                ),
                obscureText: true,
                style: TextStyle(color: isPasswordValid ? Colors.blue : Colors.red),
              ),
              SizedBox(height: 12.0),
              TextFormField(
                controller: _passwordController2,
                onChanged: _validatePassword,
                decoration: InputDecoration(
                  labelText: '密码',
                  helperText:
                  '*两次输入的密码要相同',
                  helperStyle: TextStyle(fontSize: 12.0),
                  errorText: _passwordController2.text.length != 0 && _passwordController1.text !=_passwordController2.text
                      ? '*密码与第一次的输入不同'
                      : null,
                ),
                obscureText: true,
                style: TextStyle(color: isPasswordValid ? Colors.blue : Colors.red),
              ),
              SizedBox(height: 12.0),
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: '用户名',
                  helperStyle: TextStyle(fontSize: 12.0),
                ),
              ),
              SizedBox(height: 12.0),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: '邮箱',
                  helperStyle: TextStyle(fontSize: 12.0),
                ),
              ),
              SizedBox(height: 24.0),
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
                    bool registred = false;
                    if(register(_accountController.text, _passwordController1.text, _passwordController2.text)
                        && username(_usernameController.text) && email(_emailController.text) ){
                      insertUser('${usersdata.length + 1}', _accountController.text, _passwordController1.text,
                          _usernameController.text, _emailController.text);
                      PromptDialogFactory.create(
                          context,
                          '提示',
                          '恭喜你，注册成功！！'
                      );
                      registred = true;
                      if(registred){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>MyApp()));
                      }
                    }else{
                      PromptDialogFactory.create(
                          context,
                          '提示',
                          error
                      );
                    }
                    error = '';
                  },
                  child: Text(
                    '注册',
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