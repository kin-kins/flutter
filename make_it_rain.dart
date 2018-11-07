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
              backgroundColor: Colors.green,
              actions: <Widget>[
                new IconButton(icon: new Icon(Icons.send),
                    onPressed: () => debugPrint("send tapped!")),
                new IconButton(icon: new Icon(Icons.search), onPressed: onPress)
              ],
            ),
            backgroundColor: Colors.greenAccent.shade400,
            body: new Center(
                child: new bodyScaffold(),
                ),

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

              fixedColor: Colors.green.shade300,

            ),
          floatingActionButton: new FloatingActionButton(onPressed: ()=> debugPrint("floating Tapped"),
          child:  new Icon(Icons.add),


          ),

        )
    );
  }

}

class bodyScaffold extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
        onTap:(){
          final snackBar=new SnackBar(content: new Text("Tap Recognised"),
            backgroundColor: Theme.of(context).backgroundColor,
            duration: new Duration(milliseconds: 500));

          Scaffold.of(context).showSnackBar(snackBar);

        },
       child: new Container(
          padding: new EdgeInsets.all(15.0),
          decoration: new BoxDecoration(
            color: Theme.of(context).buttonColor,
            borderRadius: new BorderRadius.circular(10.0),
          ),
          child: new Text("Button"),
        )
    );
  }


}
