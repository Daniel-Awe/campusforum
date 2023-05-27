import 'package:flutter/material.dart';
import 'Data/sectiondata.dart';
import 'sectionpage.dart';

class Item {
  String image;
  String title;
  int number;

  Item({required this.image, required this.title, required this.number});
}


class SearchPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _SearchPageState();
}
class _SearchPageState extends State<SearchPage>{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '投稿 求助 招聘',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 2.0 //宽高比为2
                    ),
                    itemCount: sectiondataA.length,
                    itemBuilder: (BuildContext context, int index) {
                      final Map<String,dynamic> section = sectiondataA[index];
                      return GestureDetector(
                        onTap: (){
                          Navigator.push(context, 
                            MaterialPageRoute(builder: (context)=>SectionPage(sectiontitle: section['title'])));
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 10),
                          margin: EdgeInsets.only(left: 5,right: 5,top: 5,bottom: 10),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Row(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 18,
                                backgroundImage: AssetImage('${section['image']}'),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      '${section['title']}',
                                      style: TextStyle(fontSize: 13.0),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.arrow_upward,
                                          size: 14.0,
                                          color: Colors.grey,
                                        ),
                                        Text(
                                          '${section['hot']}',
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.grey.withOpacity(0.8),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                '闲置 求购',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 2.0 //宽高比为2
                    ),
                    itemCount: sectiondataB.length,
                    itemBuilder: (BuildContext context, int index) {
                      final Map<String,dynamic> section = sectiondataB[index];
                      return Container(

                        padding: EdgeInsets.only(left: 10),
                        margin: EdgeInsets.only(left: 5,right: 5,top: 5,bottom: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 18,
                              backgroundImage: AssetImage(section['image']),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    section['title'],
                                    style: TextStyle(fontSize: 13.0),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.arrow_upward,
                                        size: 14.0,
                                        color: Colors.grey,
                                      ),
                                      Text(
                                        '${section['hot']}',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.grey.withOpacity(0.8),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}