import "package:flutter/material.dart";

class scaffoldHome extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    void onPress() {
      print("tapped");
    }
    return (
        new Scaffold(
            appBar: new AppBar(

              title: new Text("Scaffold", textAlign: TextAlign.left,
                textDirection: TextDirection.ltr,),
              backgroundColor: Colors.pinkAccent,
              actions: <Widget>[
                new IconButton(icon: new Icon(Icons.send),
                    onPressed: () => debugPrint("send tapped!")),
                new IconButton(icon: new Icon(Icons.search), onPressed: onPress)
              ],
            ),
            body: new Center(
                child: new Container(
                    child: new InkWell(
                      child: new Text("Button",
                          style: new TextStyle(fontSize: 18.0,color: Colors.white),),
                      onTap: () => debugPrint("Button Pressed"),
                      //highlightColor: Colors.pinkAccent,
                      splashColor: Colors.yellowAccent,

                    )
                )
            ),backgroundColor: Colors.black,
            bottomNavigationBar: new BottomNavigationBar(items: [

              new BottomNavigationBarItem(
                  icon: new Icon(Icons.add), title: new Text("Print")),
              new BottomNavigationBarItem(
                  icon: new Icon(Icons.print), title: new Text("Circle")),
              new BottomNavigationBarItem(
                  icon: new Icon(Icons.missed_video_call), title: new Text("airPlay")),
//              new BottomNavigationBarItem(
//                  icon: new IconButton(icon: Icon(Icons.play_arrow)),
//                  title: new Text("arrow")),


            ], onTap: (int i) => debugPrint("$i tapped"),

              fixedColor: Colors.green.shade400,

            ),
          floatingActionButton: new FloatingActionButton(onPressed: ()=> debugPrint("floating Tapped"),
          child:  new Icon(Icons.add),


          ),

        )
    );
  }

}
