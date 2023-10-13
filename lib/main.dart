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
  MySnackBar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inventory App"),
        titleSpacing: 0,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 0,
        backgroundColor: Colors.green,
        actions: [
          IconButton(onPressed: () {
            MySnackBar("I am Comment", context);
          }, icon: Icon(Icons.comment)),
          IconButton(onPressed: () {
            MySnackBar("I am Search", context);
          }, icon: Icon(Icons.search)),
          IconButton(onPressed: () {
            MySnackBar("I am Settings", context);
          }, icon: Icon(Icons.settings)),
          IconButton(onPressed: () {
            MySnackBar("I am Email", context);
          }, icon: Icon(Icons.email))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        backgroundColor: Colors.deepPurple,
        onPressed: () {
          MySnackBar("I am action Buttom", context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "profil"),
        ],
        onTap: (int index) {
          if (index == 0) {
            MySnackBar("I am home bottom manu", context);
          }
          if (index == 1) {
            MySnackBar("I am home bottom manu", context);
          }
          if (index == 2) {
            MySnackBar("I am home bottom manu", context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.black),
                  accountName: Text("Sabbir Ahamed Shoikot"),
                  accountEmail: Text("Info@sabbirahame012.com"),
                  currentAccountPicture: Image.network("https://scontent.fdac27-1.fna.fbcdn.net/v/t39.30808-6/380237102_1988774341493941_6169131301116223720_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeFKCi7VFDuJlnRCnOwzrjGS_DjF6OqwQvf8OMXo6rBC99YMKCeymYmZwnZrwJ8TV1aGFK0FZqmli0jiWDgUCM6V&_nc_ohc=JWzC7sGV3bIAX_f43Oq&_nc_ht=scontent.fdac27-1.fna&oh=00_AfAjdNJlzW9GGb5yUST0OLkSMK2Jc3p_qP9tiYJFk3hOYw&oe=652DF012"),
                )
            ),
            ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {
                  MySnackBar("I am Home", context);
                }),
            ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text("Email"),
                onTap: () {
                  MySnackBar("I am Email", context);
                }),
            ListTile(
                leading: Icon(Icons.phone),
                title: Text("Phone"),
                onTap: () {
                  MySnackBar("I am Phone", context);
                })
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.black),
                  accountName: Text("Sabbir Ahamed Shoikot"),
                  accountEmail: Text("Info@sabbirahame012.com"),
                  currentAccountPicture: Image.network("https://scontent.fdac27-1.fna.fbcdn.net/v/t39.30808-6/380237102_1988774341493941_6169131301116223720_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeFKCi7VFDuJlnRCnOwzrjGS_DjF6OqwQvf8OMXo6rBC99YMKCeymYmZwnZrwJ8TV1aGFK0FZqmli0jiWDgUCM6V&_nc_ohc=JWzC7sGV3bIAX_f43Oq&_nc_ht=scontent.fdac27-1.fna&oh=00_AfAjdNJlzW9GGb5yUST0OLkSMK2Jc3p_qP9tiYJFk3hOYw&oe=652DF012"),
                )
            ),
            ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {
                  MySnackBar("I am Home", context);
                }),
            ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text("Email"),
                onTap: () {
                  MySnackBar("I am Email", context);
                }),
            ListTile(
                leading: Icon(Icons.phone),
                title: Text("Phone"),
                onTap: () {
                  MySnackBar("I am Phone", context);
                })
          ],
        ),
      ),
    );
  }

}
