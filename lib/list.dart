import 'package:flutter/material.dart';
import './home.dart';
import './login.dart';


class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: Scaffold(appBar: AppBar(title: Text('List'),
      ),
      body: Container(
        
        
       child: ListView(
         padding: EdgeInsets.all(30) , 
         itemExtent: 100,
        
         children: <Widget>[
           ListTile(
             leading: CircleAvatar(backgroundImage: AssetImage('assets/b.jpg'), radius: 50, ),
             title: Text("Yamaha", style: TextStyle(fontSize: 30, color: Colors.lightGreen),) ,
           ),
           ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('assets/d.jpg'), radius: 50,),
            title: Text("Music Player", style: TextStyle(fontSize: 30, color: Colors.lightGreen),),
           ),
          RaisedButton(
            shape:BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              
              
            ),
            
            child: Text("Log Out", style: TextStyle(fontSize:30, color: Colors.redAccent),),
            onPressed:(){
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (BuildContext contex)=>LoginPage()
              ));
              
            } ,
          )
         ],
       ),
       

      ),
      floatingActionButton:FloatingActionButton(
        child: Icon(Icons.music_note),
        backgroundColor: Colors.grey,
        
        
        onPressed: (){
         Navigator.pushReplacement(context, MaterialPageRoute(
           builder: (BuildContext context)=>Home()
         ));
        },
      ),
        
      ),
      
      
    );
    
    
  }
  
}
