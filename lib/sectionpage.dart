import 'package:flutter/material.dart';
import 'personalprofilepage.dart';
import 'postpage.dart';
//数据
import 'Data/personaldata.dart';
import 'Data/sectiondata.dart';
//组件
import 'components/time.dart';
import 'components/likesbutton.dart';

class SectionPage extends StatefulWidget{
  final String sectiontitle;
  SectionPage({required this.sectiontitle});

  @override
  State<StatefulWidget> createState() => _SectionPageState();
}

class _SectionPageState extends State<SectionPage> {
  List <Map<String,dynamic>> forumData = [];
  int sectionindex = 0;

  @override
  void initState(){
    super.initState();
    initSectionData();
  }

  void initSectionData(){
    //筛选出相关文章
    int forumindex;
    for(int i =0;i<all.length;i++){
      for(int j=0;j<all[i]['post'].length;j++){
        if(all[i]['post'][j]['tags'] == widget.sectiontitle){
          forumData.add(all[i]['post'][j]);
        }
      }
    }

    //筛选相关板块的详细信息
    for(int i =0;i<sectiondataA.length;i++){
      if(widget.sectiontitle == sectiondataA[i]['title']){
        sectionindex = i;
        break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Forum',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar:AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(sectiondataA[sectionindex]['image']),
                fit: BoxFit.cover,
              ),
            ),
            child: AppBar(
              title: Text(sectiondataA[sectionindex]['title'],style: TextStyle(fontWeight: FontWeight.bold),),
              centerTitle: true,
              backgroundColor: Colors.transparent,
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
          ),
        ),
        body:CustomScrollView(
            slivers: [
              SliverPadding(
                  padding: EdgeInsets.all(0),
                  sliver: SliverToBoxAdapter(
                    child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage(sectiondataA[sectionindex]['image']),
                              ),
                              SizedBox(width: 16.0),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      sectiondataA[sectionindex]['title'],
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),

                                    SizedBox(height: 8.0),
                                    Text(
                                      '帖子: ${sectiondataA[sectionindex]['post_count']}',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Follow button action
                                  print(forumData);
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    side: BorderSide(color: Colors.blueAccent.withOpacity(0.75), width: 2.0),
                                  ),
                                ),
                                child: Text('Follow',style: TextStyle(color: Colors.blueAccent),),
                              ),
                            ],
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            sectiondataA[sectionindex]['intro'],
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                      (context, index) {
                    final article = forumData[index];
                    int qwe=0;
                    for(int i=0;i<all.length;i++){
                      if(all[i]['name']==article['name']){
                        qwe=i;
                        break;
                      }
                    }
                    String time = getTime(article['time']);
                    final Map<String,dynamic> author = all[qwe];
                    return Container(
                      margin: EdgeInsets.only(top: 12,),
                      padding: EdgeInsets.only(top: 5,bottom: 15,right: 15),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.grey.withOpacity(0.5),
                              width: 1.0,
                            ),
                          )
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              flex:2,
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context)=>PersonalProfilePage(userInfo: author)));
                                },
                                child: CircleAvatar(
                                  backgroundImage: AssetImage('${author['avatar']}'),
                                  radius: 24,
                                ),
                              )
                          ),
                          Expanded(
                              flex: 8,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: (){
                                          Navigator.push(context,
                                              MaterialPageRoute(builder: (context)=>PersonalProfilePage(userInfo: author)));
                                        },
                                        child: Text(
                                          '${author['name']}',
                                          style: TextStyle(fontSize: 18,color: Color.fromRGBO(100, 106, 141, 1.0)),
                                        ),
                                      ),
                                      SizedBox(width: 6,),
                                      Text('·',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                                      SizedBox(width: 6,),
                                      Text(time),
                                      Spacer(),
                                      GestureDetector(
                                        onTap: () {
                                        },
                                        child: const Icon(
                                          Icons.more_horiz,
                                          color: Color.fromRGBO(119, 119, 119, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 7),
                                  GestureDetector(
                                    child: Text(
                                      '${article['text']}',
                                      style: TextStyle(fontSize: 18,),

                                    ),
                                    onTap: (){
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context)=>PostPage(userInfo: author, article: article)));
                                    },
                                  ),
                                  SizedBox(height: 2,),

                                  SizedBox(height: 10,),
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 6,vertical: 4),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(2),
                                      color: Color.fromRGBO(220, 226, 235, 1.0),
                                    ),
                                    child: Text(
                                      '#${article['tags']}',
                                      style: TextStyle(color: Color.fromRGBO(99, 103, 133, 1.0)),
                                    ),
                                  ),
                                  SizedBox(height: 14,),
                                  Row(
                                    children: [
                                      Icon(IconData(0xe600,fontFamily: 'MyIcons'),color: Colors.grey,),
                                      SizedBox(width: 6,),
                                      Text('收藏',style: TextStyle(color: Colors.grey)),
                                      SizedBox(width: 20,),
                                      ArticleScreen(article: article),
                                      SizedBox(width: 6),
                                      Text(article['likes']==0? '点赞': '${article['likes']}',style: TextStyle(color: Colors.grey),),
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.symmetric(horizontal: 16,vertical: 6),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(25),
                                                color: Colors.white,
                                                border: Border.all(color: Colors.grey),
                                              ),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Icon(Icons.edit,size: 14,color: Colors.grey,),
                                                  Text('评论',style: TextStyle(fontSize: 13),),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                          ),
                        ],
                      ),
                    );
                  },
                  childCount: forumData.length,
                ),
              ),
            ]
        ),

      ),
    );
  }
}

// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Padding(
// padding: EdgeInsets.all(16.0),
// child: ,
// ),
// Expanded(
// child: ListView.builder(
// itemCount: forumData.length,
// itemBuilder: (BuildContext context, int index) {
// final post = forumData[index];
// return Card(
// child: ListTile(
// title: Text(post['title']),
// subtitle: Text(post['name']),
// trailing: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Text('Likes: ${post['likes']}'),
// SizedBox(height: 4.0),
// Text('Comments: ${post['comments']}'),
// ],
// ),
// onTap: () {
// // Post tap action
// },
// ),
// );
// },
// ),
// ),
// ],
// ),