import 'package:intl/intl.dart';

//将日期转换为距离现在的时间
String formatTimeAgo(String time) {
  final publishedTime = DateFormat('yyyy-M-d H:mm').parse(time);
  final now = DateTime.now();
  final difference = now.difference(publishedTime);

  if (difference.inDays >= 365) {
    final years = (difference.inDays / 365).floor();
    return '$years ${years == 1 ? 'year' : 'years'} ago';
  } else if (difference.inDays >= 30) {
    final months = (difference.inDays / 30).floor();
    return '$months ${months == 1 ? 'month' : 'months'} ago';
  }  else if (difference.inDays >= 1) {
    return '${difference.inDays} ${difference.inDays == 1 ? 'day' : 'days'} ago';
  } else if (difference.inHours >= 1) {
    return '${difference.inHours} ${difference.inHours == 1 ? 'hour' : 'hours'} ago';
  } else if (difference.inMinutes >= 1) {
    return '${difference.inMinutes} ${difference.inMinutes == 1 ? 'minute' : 'minutes'} ago';
  } else {
    return 'just now';
  }
}


String getTime(String arguments) {
  final timeAgo = formatTimeAgo(arguments);
  return timeAgo;
}