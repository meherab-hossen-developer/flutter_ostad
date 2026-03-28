import 'package:flutter/material.dart';

class MoneyManagement extends StatefulWidget {
  const MoneyManagement({super.key});

  @override
  State<MoneyManagement> createState() => _MoneyManagementState();
}
// with SingleTickerProviderMixin is used for TabController(mainly vsunc)[line: 47]
class _MoneyManagementState extends State<MoneyManagement> with SingleTickerProviderStateMixin{
// tabController to control tabbar
  late TabController _tabController;

  List<Map<String, dynamic>> _earnings = [];
  List<Map<String, dynamic>> _expenses = [];
//to get total expenses, fold is used to
  int get totalExpenses => _expenses.fold<int>(
    0,
        (sum, item) => sum + (item['amount'] as int? ?? 0),
  );
  int get totalEarnings => _earnings.fold<int>(
    0,
        (sum, item) => sum + (item['amount'] as int? ?? 0),
  );
  int get balance => totalEarnings - totalExpenses;

  void _addEntry(String title, int amount, DateTime date, bool isEarning){
    setState(() {
      if(isEarning){
        _earnings.add({'title' : title,
          'amount' : amount,
          'date' : date,
        });
      }else{
        _expenses.add({'title' : title,
          'amount' : amount,
          'date' : date,
        });
      }
    });
  }

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
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
              _showForm(isEarning: true);
            }, child: Text('Add Earning'),),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
              _showForm(isEarning: false);
            }, child: Text('Add Expense'),),
          ],
        ),
      );
    });
  }

  void _showForm({required bool isEarning}){

    TextEditingController titleController = TextEditingController();
    TextEditingController amountController = TextEditingController();
    DateTime entryDate = DateTime.now();

    showModalBottomSheet(context: context, builder: (context){
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(isEarning ? 'Add Earning' : 'Add Expense',
            style: TextStyle(
              fontSize: 20,
            ),),
            SizedBox(height: 10,),
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: 'Title',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: amountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Amount',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isEarning ? Colors.green : Colors.red,
              ),
              onPressed: (){
                if(titleController.text.isNotEmpty && amountController.text.isNotEmpty){
                  _addEntry(titleController.text, int.parse(amountController.text), entryDate, isEarning);
                  Navigator.pop(context);
                }
              },
              child: Text( isEarning ? 'Add Earning' : 'Add Expense',style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),),)
          ],
        ),
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
              _buildSummaryCard(title: 'Earnings', value: totalEarnings, color: Colors.black),
              _buildSummaryCard(title: 'Expenses', value: totalExpenses, color: Colors.black),
              _buildSummaryCard(title: 'Balance', value: balance, color: Colors.black),
            ],
          ),
          SizedBox(height: 10,),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
              _buildList(_earnings, Colors.green, true),
              _buildList(_expenses, Colors.red, false)
            ],),
          )
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
      child: SizedBox(
        height: 110,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
    ),
  );
}

Widget _buildList(List<Map<String, dynamic>> items, Color color, bool isEarning){
  return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index){
        return Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: color,
              child: Icon(isEarning ? Icons.arrow_upward : Icons.arrow_downward, color: Colors.white),
            ),
            title: Text(items[index]['title'],style: TextStyle(
              color: Colors.black,
            ),),
            subtitle: Text(items[index]['date'].toString(),style: TextStyle(
              color: Colors.black,
            ),),
            trailing: Text(
              '৳ ${items[index]['amount']}',
              style: TextStyle(
                color: color,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        );
      });
}