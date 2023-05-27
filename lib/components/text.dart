import 'package:flutter/material.dart';

//点赞数量超过1000，则显示为1k
class ComponentText extends StatefulWidget{
  final int content;
  final double? size;

  ComponentText({required this.content, this.size});
  @override
  State<StatefulWidget> createState() => _ComponentTextState();
}

class _ComponentTextState extends State<ComponentText> {
  @override
  Widget build(BuildContext context){
    return Text(widget.content>1000? '${(widget.content / 1000).toStringAsFixed(1)}k'
        : '${widget.content}',style: widget.size!=null? TextStyle(fontSize: widget.size,color: Colors.grey): TextStyle(fontSize: 15,color: Colors.grey),
    );
  }
}