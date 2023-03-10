import 'package:flutter/material.dart';

class Wrong extends StatefulWidget {
  const Wrong({Key? key}) : super(key: key);

  @override
  State<Wrong> createState() => _WrongState();
}

class _WrongState extends State<Wrong> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Answer is Wrong",style: TextStyle(color: Colors.red,fontSize: 25),),
            ),
            Text("You Loss",style: TextStyle(color: Colors.amber,fontSize: 25),),
            InkWell(
              onTap: () {
                Navigator.pop(context, "/");
              },
              child: Text("Restart"),
            )
          ],
        ),
      ),
    );
  }
}
