import './personaldata.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

List<dynamic> usersdata = [];

//查询用户信息
Future<void> fetchUsers() async {
  final url = 'http://127.0.0.1:8080/api/mysql'; // 本地服务器的URL

  try {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final responseData = response.body;
      final parsedData = jsonDecode(responseData);
      usersdata = parsedData; // 将 JSON 对象包装在列表中

    } else {
      // 处理请求错误
      print('请求错误：${response.statusCode}');
    }
  } catch (error) {
    // 处理网络请求异常
    print('网络请求异常：$error');
  }
}

// 插入新用户
Future<void> insertUser(String Id, String Account, String Password, String Username, String Email) async {
  final url = 'http://127.0.0.1:8080/api/mysql';
  final headers = {'Content-Type': 'application/json'};
  final body = {'Id': Id, 'Account':Account, 'Password': Password, 'Username': Username, 'Gender': 'male', 'School': '浙江科技学院', 'Email': Email};

  try {
    // 发送POST请求
    final response = await http.post(Uri.parse(url), body: body);

    if (response.statusCode == 200) {
      print('User created successfully');
    } else {
      // 处理请求错误
      print('请求错误：${response.statusCode}');
    }
  } catch (error) {
    // 处理网络请求异常
    print('网络请求异常：$error');
  }
}

// 更新用户信息
Future<void> updateUser(String Id, String Account, String Password, String Username, String Gender, String School, String Email) async {
  final url = 'http://127.0.0.1:8080/api/mysql';
  final headers = {'Content-Type': 'application/json'};
  final body = {'Account': Account, 'Password': Password, 'Username': Username, 'Gender': Gender, 'School': School, 'Email': Email, 'Id':Id};


  try {
    final response = await http.put(Uri.parse(url), body: body);

    if (response.statusCode == 200) {
      print('User created successfully');
    } else {
      // 处理请求错误
      print('请求错误：${response.statusCode}');
    }
  } catch (error) {
    // 处理网络请求异常
    print('网络请求异常：$error');
  }
}

//登录账号index
int loginIndex = 404;

//登录账号
bool Login(List<dynamic> usersdata, String Account, String Password){
  for(int i = 0; i < usersdata.length; i++){
    if(usersdata[i]['Account'] == Account && usersdata[i]['Password'] == Password){
      loginIndex = i;
      return true;
      break;
    }
  }
  if(Account == admin[0]['account'] && Password == admin[0]['password'])
    return true;
  return false;
}