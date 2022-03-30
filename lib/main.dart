import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  MyHomePage()
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          width: 300,
          height: 400,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              width: 1.5,
              color: Colors.black
            ),
              borderRadius: BorderRadius.circular(2),

          ),
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  // backgroundImage: NetworkImage(''),
                  backgroundImage: AssetImage('images/profile1.PNG'),
                ),
                title: Text("Asmaa Zaki", style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),),
                trailing: Icon(Icons.keyboard_arrow_down),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Success is a Journey not distination"),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left:3.0,top: 7),
                child: Row(
                 children: [
                   Image.asset("images/girl.PNG",width: 290,),
                 ],
             ),
              ),
              Container(
                margin: EdgeInsets.only(top: 14),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.black26
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:13.0, right: 13,top: 6,bottom: 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.thumb_up),
                          Text("Like"),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.comment),
                          Text("Commment"),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.screen_share),
                          Text("Share"),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


