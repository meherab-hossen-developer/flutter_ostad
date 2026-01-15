import 'package:flutter/material.dart';
import 'gridView.dart';

class listV extends StatelessWidget {
  const listV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: Text('List View'),
      ),

      body: ListView.builder(

          itemCount: 50,
          itemBuilder: (context, index){

            return Card(
              child: ListTile(

                leading: Icon(Icons.phone),
                trailing: Icon(Icons.delete, color: Colors.red,),
                title: Text('Nishat'),
                subtitle: Text('01703390057'),
              ),
            );
          }),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const gridV()),
          );
        },
        child: Icon(Icons.grid_view),
        tooltip: 'Go to Grid View',
      ),

    );
  }
}
