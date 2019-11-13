import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StartFluter(),
    );
  }
}

class StartFluter extends StatefulWidget {
  @override
  _StartFluterState createState() => _StartFluterState();
}

class _StartFluterState extends State<StartFluter> {
    final GlobalKey<ScaffoldState> _scaflodkey=new GlobalKey<ScaffoldState>();


         final sn=SnackBar(

           content: Text('Done!'),
           duration: Duration(seconds: 3),
           action: SnackBarAction(
             label: 'Yes',
             
             onPressed: ()
             {
               //Todo
             },
           ),
         );
 

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaflodkey,
      appBar: AppBar(
        title: Text("Hello"),
        flexibleSpace: Image(
          image: AssetImage('images/nr.jpg'),
          fit: BoxFit.cover,
        ),
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation Menu',
          onPressed: () {},
        ),
      ),
      body: Center(
        child: Text("HeLLO Word !"),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'ADD',
        child: Icon(
          Icons.party_mode
        ),
        onPressed:(){

          _scaflodkey.currentState.showSnackBar(sn);
        },
      ),
    );
  }
}
