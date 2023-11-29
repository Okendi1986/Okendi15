import 'package:flutter/material.dart';


class header extends StatefulWidget {
  @override
  State<header> createState() => _headerState();
}

class _headerState extends State<header> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverList(
      delegate: SliverChildListDelegate(
        [
        
          Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                  height:size.height/5 ,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(45),
                        ),
                        boxShadow: [BoxShadow(blurRadius: 2)]
                      ),
                      child:Column(
                        children: [
                          SizedBox(height: 20),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white70,
                              radius: 35,
                        )
                      ],
                    )
                  ],
                ) ,
              ),
              SizedBox(height: 20,),
            ],
          ),
            Column(children: [
              Container(
                height: 50,
                width: size.width,
                child: Card(
                  color: Colors.white,
                  elevation: 3,
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "Recherche",
                      suffixIcon: Icon(Icons.search),
                      contentPadding: EdgeInsets.only(left: 20)
                    ),
                  ),
                ),
              ),
            ],)
        ],
      ),
    );
  }
}