import 'package:app_flutter/ListKudos.dart';
import 'package:app_flutter/main.dart';
import 'package:flutter/material.dart';


/// This Widget is the main application widget.
class AppMenuBar extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
final SnackBar snackBar = const SnackBar(content: Text('Showing Snackbar'));

void openPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(
    builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Entrar em Grupo'),
          actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Notificações',
            onPressed: () {
              scaffoldKey.currentState.showSnackBar(snackBar);
            },
          ),
          IconButton(
            icon: const Icon(Icons.add),
            tooltip: 'Criar sala',
            onPressed: () {
              createGroup(context);
            },
          ),
        ],
        ),
        body: ListKudos(),
      );
    },
  ));
}

void createGroup(BuildContext context){
  Navigator.push(context, MaterialPageRoute(
    builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Novo Grupo'),
          actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Notificações',
            onPressed: () {
              scaffoldKey.currentState.showSnackBar(snackBar);
            },
          ),
        ],
        ),
        body: const Center(
          child: Text(
            'Pagina de criação do grupo',
            style: TextStyle(fontSize: 24),
          ),
        ),
      );
    },
  ));

}
/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Kudo App'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Notificações',
            onPressed: () {
              scaffoldKey.currentState.showSnackBar(snackBar);
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Proxima Pagina',
            onPressed: () {
              openPage(context);
            },
          ),
        ],
      ),
      body: MapSample(),
    );
  }
}
