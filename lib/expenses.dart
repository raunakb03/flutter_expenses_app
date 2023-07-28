import 'package:exepense_tracker/expenses_list.dart';
import 'package:exepense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _Expenses();
  }
}

class _Expenses extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Flutter Course',
      amount: 19.99,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Cinema',
      amount: 15.99,
      date: DateTime.now(),
      category: Category.leasure,
    ),
  ];
  @override
  Widget build(context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("this is the top bar"),
          Expanded(child: ExpensesList(expenses: _registeredExpenses)),
        ],
      ),
    );
  }
}
