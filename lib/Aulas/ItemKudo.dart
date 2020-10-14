import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemKudo extends StatelessWidget{

  final String titulo;
  final String mensagem;
  final IconData icon;

  const ItemKudo({Key key, this.titulo, this.mensagem, this.icon}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Card(
            child: ListTile(
              leading: Icon(icon),
              title: Text(titulo),
              subtitle: Text(mensagem)
            ),
          );
  }
  
}