import 'package:app_flutter/routes/KudoAmizade.dart';
import 'package:app_flutter/routes/KuduColaborador.dart';
import 'package:flutter/material.dart';

class Kudos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  TextEditingController _inputNome = TextEditingController();
    

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _inputNome,
            decoration: new InputDecoration(
              hintText: "Informe seu nome e Escolha qual o Kudo que você quer enviar?",
              contentPadding: EdgeInsets.all(10.0)
            ),
          ),// Texto a ser exibido para o usuário
          SizedBox(height: 25),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                RaisedButton(
                  color: Colors.purpleAccent,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => KudoColaborador(_inputNome.text)
                    ));
                  },
                  child: Text(
                      "Colaboração", style: TextStyle(color: Colors.white)
                  ),
                ),
                SizedBox(width: 25),
                RaisedButton(
                  color: Colors.tealAccent,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => KudoAmizade(_inputNome.text)
                    ));
                  },
                  child: Text(
                      "Amizade", style: TextStyle(color: Colors.white)
                  ),
                )
              ]
          )
        ],
      ),
    );
  }
}