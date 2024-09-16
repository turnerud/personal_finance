import 'package:flutter/material.dart';
import 'widgets/user_transaction.dart';
import 'widgets/main_screen.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  void _addNewTransaction(String title, int amount) {
    final newTransaction = Transaction(
      title: title,
      amountInPennies: amount,
      id: UniqueKey().toString(),
    );
    setState(() {
      transactions.add(newTransaction);
    });
  }

  final List<Transaction> transactions = [
    Transaction(
      id: UniqueKey().toString(),
      title: 'new shoes',
      amountInPennies: 3299,
    ),
    Transaction(
      id: UniqueKey().toString(),
      title: 'groceries',
      amountInPennies: 12332,
    ),
    Transaction(
      id: UniqueKey().toString(),
      title: 'coffee',
      amountInPennies: 4275,
    ),
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen();
      
    );
  }
}
