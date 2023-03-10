import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List quesList=[
    "india big states ?",
    "Gujart big city?",
    "Indian curreny?",
    "The International Literacy Day is observed on?",
  ];
  List ansList=["A","B","C","A"];
  List otpA=["Up","Surat","Doller","Sep 8"];
  List otpB=["Mp","Ambadbad","ponds","Nov 28"];
  List otpC=["Rs","Rajkot","rupees","May 2"];
  List otpD=["Gj","kanch","yens","Sep 22"];
  List userList=[];
  int i=0;
  int j=0;
  int count=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(30),
              //gradient: LinearGradient(colors: [Colors.purpleAccent,Colors.deepPurpleAccent]),
            ),child: Center(child: Text("${quesList[i]}",style: TextStyle(color: Colors.yellow,fontSize: 25),)),
          ),
          Divider(height: 10),
          Row(
            children: [
              Expanded(
                child: InkWell(onTap: () {
                  userList.add("A");
                  setState(() {
                    if(userList[i]==ansList[i])
                      {
                       // Navigator.pushNamed(context, "tr",arguments: i);
                        if(i<quesList.length-1){
                          i++;
                          Navigator.pushNamed(context, "tr",arguments: i);

                        }
                      }
                    else
                      {
                        Navigator.pushNamed(context, "wr");
                        i=0;
                      }
                  });
                },child: otp("A", "${otpA[i]}")),
              ),
              Expanded(
                child: InkWell(onTap: () {
                  userList.add("B");

                  setState(() {
                    if(userList[i]==ansList[i])
                    {
                      // Navigator.pushNamed(context, "tr",arguments: i);
                      if(i<quesList.length-1){

                        i++;
                        Navigator.pushNamed(context, "tr",arguments: i);

                      }
                    }
                    else
                    {
                      Navigator.pushNamed(context, "wr");
                      i=0;
                    }
                  });
                },child: otp("B", "${otpB[i]}")),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: InkWell( onTap: () {
                  userList.add("C");

                  setState(() {
                    if(userList[i]==ansList[i])
                    {
                      // Navigator.pushNamed(context, "tr",arguments: i);
                      if(i<quesList.length-1){
                        i++;
                        Navigator.pushNamed(context, "tr",arguments: i);

                      }
                    }
                    else
                    {
                      Navigator.pushNamed(context, "wr");
                      i=0;
                    }
                  });
                },child: otp("C", "${otpC[i]}")),
              ),
              Expanded(
                child: InkWell(onTap: () {
                  userList.add("D");

                  setState(() {
                    if(userList[i]==ansList[i])
                    {
                      // Navigator.pushNamed(context, "tr",arguments: quesList[i]);
                      if(i<quesList.length-1){
                        i++;
                        Navigator.pushNamed(context, "tr",arguments: quesList[i]);

                      }
                    }
                    else
                    {
                      Navigator.pushNamed(context, "wr");
                      i=0;
                    }
                  });
                },child: otp("D", "${otpD[i]}")),
              ),
            ],
          ),
          // Text("$userList"),
          Visibility(
            visible: i>2?true:false,
            child: IconButton(onPressed: () {
              setState(() {
                for(j=0;j<quesList.length;j++)
                  {
                    if(ansList[j]==userList[j])
                      {
                        count++;
                      }
                  }
              });
            }, icon: Icon(Icons.exit_to_app)),
          ),
          Visibility(
              visible: i>2?true:false,
              child: Text("$count/4")),
        ],
      ),
    );
  }
  Widget otp(String ot, String data)
  {
    return Container(
      height: 30,
      width: 100,
      decoration: BoxDecoration(
       // color: Colors.green
       gradient: LinearGradient(colors:[Colors.red,Colors.pink] )
      ),
      child: Center(child: Text("$ot   $data",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
    );
  }
}
