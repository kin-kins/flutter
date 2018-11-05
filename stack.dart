import "package:flutter/material.dart";

class helloClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Material(
        child: new Container(
          color: Colors.greenAccent,
          child: new Stack(
            alignment: Alignment.center,
            children: <Widget>[
              new Text("First", textDirection: TextDirection.ltr,
                style: new TextStyle(
                    fontStyle: FontStyle.normal, fontSize: 15.2),),
              new Text("Second", textDirection: TextDirection.ltr,
                style: new TextStyle(
                    fontStyle: FontStyle.normal, fontSize: 15.2),),
              new Text("Third", textDirection: TextDirection.ltr,
                style: new TextStyle(
                    fontStyle: FontStyle.normal, fontSize: 15.2),),
              new Container(
                color: Colors.yellowAccent,
                child: new Text("CONTAINER", style: new TextStyle(
                    fontSize: 15.2, fontWeight: FontWeight.bold)),
              )
              ],
            ),
        )
            
    );
  }
}




//            child: new Center(
//                child: new Text(
//                  "Hello World !",
//                  textDirection: TextDirection.ltr,
//                  style: TextStyle(
//                    fontWeight: FontWeight.bold,
//                    fontSize: 30.0,
//                    color: Colors.white,
//                  ),
//                )
//            )
 
