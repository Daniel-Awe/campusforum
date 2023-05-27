
import '../Data/personaldata.dart';

//判断是否在admin的followinglist中
bool Isfollowed(String name){
  for(int j =0;j<admin[0]['followingList'].length;j++){
    if(name == admin[0]['followingList'][j]){
      return true;
    }
  }
  return false;
}

//在admin的followinglist中的位置index
int FollowIndex(name){
  for(int j =0;j<admin[0]['followingList'].length;j++){
    if(name == admin[0]['followingList'][j]){
      return j;
    }
  }
  return 0;
}

