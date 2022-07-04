import "package:flutter/material.dart";
import "dart:math";

void main()=>runApp(MaterialApp(
  home: Assignment(),
));


class Assignment extends StatefulWidget {

  @override
  _AssignmentState createState() => _AssignmentState();
}


class _AssignmentState extends State<Assignment> {
  bool swap = false;
  Color c1 = Colors.purple;
  Color c2 = Colors.amber;
  @override
  void initState() {
    super.initState();
    Random random = new Random();

    for(int i = 0;i<2;i++){
      int r = random.nextInt(256);
      int g = random.nextInt(256);
      int b = random.nextInt(256);
      if(i==1) c2 = Color.fromRGBO(r, g, b, 1.0);
      else c1 = Color.fromRGBO(r, g, b, 1.0);
    }
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Row(
          children: [
            Container(
              color: c1,
              padding: EdgeInsets.all(50.0),
              child: Text(
                "",
              ),

            ),
            Container(
              padding: EdgeInsets.all(50.0),
              color: c2,
              child: Text(
                "",
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
               Color temp = c1;
               c1 = c2;
               c2 = temp;
          });
        },
          backgroundColor: Colors.blue,
        child: Icon(
            color: Colors.white,
            Icons.emoji_emotions_outlined,
        ),
      ),
    );
  }
}
