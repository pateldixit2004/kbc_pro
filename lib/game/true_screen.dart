import 'package:flutter/material.dart';

class True extends StatefulWidget {
  const True({Key? key}) : super(key: key);

  @override
  State<True> createState() => _TrueState();
}

class _TrueState extends State<True> {
  List price=[100,200,400,800];
  @override
  Widget build(BuildContext context) {
    String? o = ModalRoute.of(context)!.settings.arguments as String;
    int op=int.parse(o);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Answer is Right",style: TextStyle(color: Colors.red,fontSize: 25),),
            ),
            Text("You win ${price[op]}",style: TextStyle(color: Colors.amber,fontSize: 25),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  print(op);
                  if(op<5)
                    {
                      // Navigator.pushNamed(context, "start");
                     Navigator.pop(context);
                    }
                  else{

                    Navigator.pushNamed(context, "finish");
                  }
                },
                child: Container(height: 50,width: 100,child: Text("next"),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
