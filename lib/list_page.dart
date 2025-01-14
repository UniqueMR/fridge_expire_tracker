import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final List<Map<String, dynamic>> _foodList = [
    {'name': 'Milk', 'daysToExpire': 3}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fridge Expiration Tracker'),
      ),
      body: ListView.builder(
        itemCount: _foodList.length,
        itemBuilder: (context, index) {
          final food = _foodList[index];
          return ListTile(
            leading: Icon(Icons.fastfood),
            title: Text(food['name']),
            subtitle: Text('${food['daysToExpire']} days to expire'),
            trailing: food['daysToExpire'] > 1 ? Icon(Icons.check_circle, color: Colors.green) : Icon(Icons.warning, color: Colors.red),
            onTap: (){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('${food['name']} selected')),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('add new item functionality here')));
      }, child: Icon(Icons.add)),
    );
  }
}