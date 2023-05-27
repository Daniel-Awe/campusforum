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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('颜色选择', style: TextStyle(color: Colors.black,fontSize: 20),),
                SizedBox(height: 10,),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: List.generate(themeColors.length, (index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          colorindex = index;
                        });
                      },
                      child: Container(
                        width: 50,
                        height: 50,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: themeColors[index],
                        ),
                      ),
                    );
                  }),
                ),
              ],
            ),
          )
        )
    );
  }
}