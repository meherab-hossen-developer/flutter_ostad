import 'package:flutter/material.dart';
import 'package:flutter_1/Theme%20and%20navigation/alert.dart';
import 'package:flutter_1/Theme%20and%20navigation/assignment.dart';
import 'package:flutter_1/Theme%20and%20navigation/nav_and_ui.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(

        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.brown,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
          title: Text('Navigations', style: TextStyle(

            fontWeight: FontWeight.bold,
            color: Colors.white
          ),),
          actions: [
            Builder(
              builder: (context) => IconButton(
                icon: Icon(Icons.menu),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.favorite),
                text: 'Favourites',
              ),
              Tab(
                icon: Icon(Icons.settings),
                text: 'Settings',
              ),
            ],
          ),
        ),
        
        body: TabBarView(
          children: [
            // Container(
            //
            //   height: 100,
            //   color: Colors.amberAccent,
            //   child: Center(
            //
            //     child: Text('Home', style: TextStyle(
            //
            //       fontSize: 20
            //     ),),
            //   )
            // ),
            // Container(
            //
            //     height: 100,
            //     color: Colors.black,
            //     child: Center(
            //
            //       child: Text('Favourites', style: TextStyle(
            //
            //           fontSize: 20,
            //           color: Colors.white
            //       ),),
            //     )
            // ),
            // Container(
            //
            //     height: 100,
            //     color: Colors.white,
            //     child: Center(
            //
            //       child: Text('Settings', style: TextStyle(
            //
            //           fontSize: 20,
            //           color: Colors.black
            //       ),),
            //     )
            // ),

            Assignment(),
            Alert(),
            Nav()
          ],
        ),
        drawer: Drawer(

          backgroundColor: Colors.white,
          child: ListView(
            children: [
              DrawerHeader(child: Column(
                children: [
                  CircleAvatar(
                    radius: 42,
                    backgroundImage: NetworkImage('https://wallpapercave.com/wp/wp8723396.jpg'),
                  ),
                  SizedBox(height: 5,),
                  Text('Avatar', style: TextStyle(

                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),),
                  Text('avatar@gmail.com', style: TextStyle(

                    fontWeight: FontWeight.w400,
                    fontSize: 12
                  ),)
                ],
              )),

              ListTile(
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                title: Text('Dashboard'),
                onTap: (){},
              ),
              Divider(
                thickness: 1,
                color: Colors.brown,
              ),

              ListTile(

                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                title: Text('Profile'),
                onTap: (){},
              ),
              Divider(
                thickness: 1,
                color: Colors.brown,
              ),
              ListTile(

                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                title: Text('Notifications'),
                onTap: (){},
              ),
              Divider(
                thickness: 1,
                color: Colors.brown,
              ),
              ListTile(

                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                title: Text('Account'),
                onTap: (){},
              ),
              Divider(
                thickness: 1,
                color: Colors.brown,
              ),
              ListTile(

                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                title: Text('Settings'),
                onTap: (){},
              ),
              Divider(
                thickness: 1,
                color: Colors.brown,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
