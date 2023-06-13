import 'package:flutter/material.dart';
import 'Data/globalcolors.dart';

class ThemeColorsPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _ThemeColorsPageState();
}

class _ThemeColorsPageState extends State<ThemeColorsPage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              '颜色模式',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
            backgroundColor:  themeColors[colorindex],
            elevation: 4, // 阴影
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
          body: Container(
            margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 12,),
                    Text('  颜色选择', style: TextStyle(color: Colors.black,fontSize: 20),),
                    SizedBox(height: 10,),
                    ListView.separated(
                      shrinkWrap: true, // 允许ListView根据内容自适应高度
                      physics: NeverScrollableScrollPhysics(), // 禁用ListView的滚动
                      itemCount: themeColors.length,
                      separatorBuilder: (BuildContext context, int index) =>
                          SizedBox(height: 10), // 设置间隔高度
                      itemBuilder: (BuildContext context, int index) {
                        return TextButton(
                          onPressed: (){
                            setState(() {
                              colorindex = index;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            child: Row(
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: themeColors[index],
                                  ),
                                ),
                                SizedBox(width: 8,),
                                Text('${colorstext[index]}', style: TextStyle(color: themeColors[index], fontSize: 16),)
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 24,)
                  ],
                ),
              )
          )
        )
    );
  }
}

