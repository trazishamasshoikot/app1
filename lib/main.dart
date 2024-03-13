import 'package:flutter/material.dart';

void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.blue),
      color: Colors.blue,
      debugShowCheckedModeBanner: false,
      home:HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});


  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
        length: 8,
        child: Scaffold(
         appBar: AppBar(
          title: Text("dresli"),
          bottom: TabBar(
           isScrollable: true,
          tabs: [
            Tab(icon: Icon (Icons.home),text: "home",),
            Tab(icon: Icon (Icons.home),text: "home",),
            Tab(icon: Icon (Icons.home),text: "home",),
            Tab(icon: Icon (Icons.home),text: "home",),
            Tab(icon: Icon (Icons.home),text: "home",),
            Tab(icon: Icon (Icons.home),text: "home",),
            Tab(icon: Icon (Icons.home),text: "home",),
            Tab(icon: Icon (Icons.home),text: "home",)
            ],
          ),
        ),
          body: TabBarView(
            children: [

            ],
          ),
      )
    );
  }
}