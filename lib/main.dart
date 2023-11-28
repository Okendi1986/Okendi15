import 'package:communi/header.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.teal,centerTitle: true),
      bottomAppBarColor: Colors.teal,
      floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Colors.orange),
      ),
      home: Hamberger(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Hamberger extends StatefulWidget {
  const Hamberger({super.key});

  @override
  State<Hamberger> createState() => _HambergerState();
}

class _HambergerState extends State<Hamberger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: Text("CommuniArt"),
            leading: IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.menu)),
          ),
          header(),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Text("Hamberger",style: TextStyle(fontSize: 300),),

          ],),)
          ],
          ),
          extendBody: true,
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: (){},
            child: Icon(Icons.home),
            ),
            
          bottomNavigationBar: ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(45),),
            child: Container(
              color: Colors.black38,
              child: BottomAppBar(
                shape: CircularNotchedRectangle(),
                child: Row(
                  children: [
                    Spacer(),
                  IconButton(
                    icon: Icon(Icons.add_alert),
                    onPressed: (){},
                    ),
                    Spacer(),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.add),
                      color: Colors.white,
                      onPressed: (){},
                    ),
                    Spacer(),
                ],),
              ),
            ),
          ),
    );
  }
}