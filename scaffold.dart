import "package:flutter/material.dart";

class scaffoldHome extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    void onPress()
    {
      print("tapped");
    }
    return (
        new Scaffold(
            appBar: new AppBar(

              title: new Text("Scaffold",textAlign: TextAlign.left, textDirection: TextDirection.ltr,),
              backgroundColor: Colors.pinkAccent,
              actions: <Widget>[
                new IconButton(icon: new Icon(Icons.send), onPressed: ()=> debugPrint("send tapped!")),
                new IconButton(icon: new Icon(Icons.search), onPressed: onPress)
              ],
            )
        )
    );
  }

}
