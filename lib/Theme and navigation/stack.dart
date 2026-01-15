import 'package:flutter/material.dart';

class stacK extends StatelessWidget {
  const stacK({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        centerTitle: true,
        title: Text('Stack', style: TextStyle(

          color: Colors.white,
        ),),
        backgroundColor: Colors.brown,
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
        
                Container(
        
                  height: 200,
                  width: 200,
                  color: Colors.red,
                ),
        
                Container(
        
                  height: 100,
                  width: 200,
                  color: Colors.green,
                ),
        
                Positioned(
                  bottom: 75,
                  left: 20,
                  right: 20,
                  child: Container(
        
                    height: 50,
                    width: 200,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
        
            SizedBox(height: 20),
        
            Stack(
              children: [
        
                CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage(
                    'https://tse2.mm.bing.net/th/id/OIP.90sDWdblfZFiciIEpsGFwwHaEY?rs=1&pid=ImgDetMain&o=7&rm=3',
                  ),
                ),
        
                Positioned(
        
                  bottom: 20,
                  right: 3,
        
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 3),
                    ),
                  ),
                )
              ],
            ),
        
            SizedBox(height: 20),
        
            Stack(
              children: [
                Container(
                  height: 10,
                  width: double.infinity,
                  color: Colors.grey[300],
                ),
        
                AnimatedContainer(duration: Duration(seconds: 5),
        
                  height: 5,
                  width: 200,
                  color: Colors.blue,
                )
              ],
            ),
        
            SizedBox(height: 20),
            
            Stack(
              children: [
                Image.network("https://img.freepik.com/premium-photo/awesome-view-river-sky_954226-164279.jpg"),
                Positioned(

                  bottom: 15,
                    right: 100,
                    child: Text('Nishat', style: TextStyle(

                      color: Colors.white,
                      fontSize: 25,
                    ),)),
              ],
            )
          ],
        ),
      )
    );
  }
}
