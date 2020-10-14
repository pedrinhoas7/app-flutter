import 'package:app_flutter/routes/Kudo.dart';
import 'package:app_flutter/routes/KudoAmizade.dart';
import 'package:app_flutter/routes/KuduColaborador.dart';
import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'kudos',
        routes: {
          'kudos': (context) => Kudos(),
          'kudoColaborador': (context) => KudoColaborador("pedro"),
          'kudoAmizade': (context) => KudoAmizade("pedro")
        }
    );

  }
}