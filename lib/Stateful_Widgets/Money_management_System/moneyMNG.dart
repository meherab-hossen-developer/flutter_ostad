import 'package:flutter/material.dart';

class MoneyManagement extends StatefulWidget {
  const MoneyManagement({super.key});

  @override
  State<MoneyManagement> createState() => _MoneyManagementState();
}

class _MoneyManagementState extends State<MoneyManagement> with SingleTickerProviderStateMixin{

  late TabController _tabController;

  @override
  void initState(){

    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }
  void _showFABoptions(BuildContext context){

    showModalBottomSheet(context: context, builder: (context){
      return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){}, child: Text('Add Earning'),),
            ElevatedButton(onPressed: (){}, child: Text('Add Expense'),),
          ],
        ),
      );
    });
  }

  void _showForm(){
    showModalBottomSheet(context: context, builder: (context){
      return Column(

      );
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(40, 163, 137, 1.0),
        title: Text(
          'Money Management', style: TextStyle(
          //fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 25,
        ),
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Earnings', icon: Icon(Icons.arrow_upward),),
            Tab(text: 'Expenses', icon: Icon(Icons.arrow_downward),),
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              _buildSummaryCard(title: 'Earnings', value: 2500, color: Colors.black),
              _buildSummaryCard(title: 'Expenses', value: 100, color: Colors.black),
              _buildSummaryCard(title: 'Balance', value: 2400, color: Colors.black),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=> _showFABoptions(context),
        child: Icon(Icons.add),
      ),
    );
  }
}

Widget _buildSummaryCard({required String title, required int value, required Color color}){

  return Expanded(
    child: Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(title, style: TextStyle(
              fontSize: 20,
              color: color,
            ),
            ),Text(value.toString(),
              style: TextStyle(
              fontSize: 20,
              color: color,
            ),
            ),
          ],
        ),
      ),
    ),
  );
}