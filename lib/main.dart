import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fuckingprjecgt/style.dart';

void main()
{
  runApp(myapp());
}
class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  List ToDOlist = [];
  String item = "";

  Myinputchange(value) {
    setState(() {
      item = value;
    });
  }

  Additem()
  {
    setState(() {
      ToDOlist.add({"item":item});
    });
  }
  Removeitem(index){
    setState(() {
      ToDOlist.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('to do app'),),
        body: Column(
          children: [
            Expanded(
              flex: 20,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  children: [
                    Expanded(
                      flex:80,
                      child: TextField(onChanged: (value){ Myinputchange(value);}, decoration: textfield("item"),),
                    ),
                    Expanded(
                        flex: 20,
                        child: ElevatedButton(
                            style: buttonStyle(),
                            onPressed: (){Additem();},
                            child: Text(
                                "ad item")
                      //  style:buttondesign
                        ))
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 80,
                child: ListView.builder(
                  itemCount: ToDOlist.length,
                    itemBuilder: (context,index){
                    return Card(
                      child:sizebox(
                        Row(
                            children: [
                              Expanded(flex:80, child: Text(ToDOlist[index]["item"].toString()),),
                              Expanded(flex: 20, child: TextButton(onPressed: (){ Removeitem(index);}, child: Icon(Icons.delete)
                                //  style:buttondesign
                              )),
                            ],
                        ),
                      ),
                    );
                    },

      ),
            ),
        ],
      ),
    ),
      
    );
  }
}
