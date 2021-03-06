import 'package:flutter/material.dart';

class MyPageApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('Aprendendo Flutter com Fujioka', textDirection: TextDirection.rtl,),
        Text('Turma de Mobile',textDirection: TextDirection.rtl,),
        Expanded(
          child: FittedBox(
            fit: BoxFit.contain, // otherwise the logo will be tiny
            child: Image.network('https://i.ytimg.com/vi/ztvTLBwUXlU/maxresdefault.jpg' ,alignment: Alignment.center,),
          ),
        ),
      ],
    );
  }

}

