import 'package:flutter/material.dart';

class categorie extends StatefulWidget {
  const categorie({super.key});

  @override
  State<categorie> createState() => _categorieState();
}

class _categorieState extends State<categorie> {
  @override
  Widget build(BuildContext context) {
    int items = 10;
    return SliverToBoxAdapter(
      child: Container(
        height: 300,
        margin: EdgeInsets.only(top: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items,
          itemBuilder: (context, index){
            return Stack(
              children: [
                Container(
                  height: 300,
                  width: 200,
                  margin: EdgeInsets.only(left: 20,right: index==items? 20:0),
                  child: GestureDetector(
                    onTap: (){
                      //navigator
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            TextField(
                              
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),),
                            Spacer(),
                            Row(children: [
                              Spacer(),
                              Container(
                                width: 50,
                                height: 50,
                                child: Card(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                                  child: Icon(Icons.date_range)),
                              ),
                              Spacer(),
                              Container(
                                width: 50,
                                height: 50,
                                child: Card(
                                  color: Colors.white,
                                  child: Icon(Icons.add)),
                              ),

                            ],
                            ),
                          ],
                          
                        ),
                      ),
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}