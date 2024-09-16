import 'package:flutter/material.dart';
import 'package:personal_finance/widgets/new_transaction.dart';
import 'user_transaction.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  void _startNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (bCtx) {
          return Text('new transaction');
          // NewTransaction((p0, p1) => null);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('personal finance'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _startNewTransaction(context);
        },
        child: Icon(Icons.add),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            child: Card(
              elevation: 5.0,
              child: Text('Chart'),
            ),
          ),
          UserTransaction(),
        ],
      ),
    );
  }
}
