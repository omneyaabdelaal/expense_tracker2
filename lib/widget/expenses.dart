import 'package:expense_tracker2/widget/expenses_list/expenses_list.dart';
import 'package:expense_tracker2/models/data.dart';
import 'package:expense_tracker2/widget/new_expense.dart';
import 'package:flutter/material.dart';

// home page
class Expenses extends StatefulWidget{
  const Expenses({super.key});

@override
  State<Expenses> createState() {
  return ExpensesState();
  }
}

class ExpensesState extends State<Expenses>{

  void _openAddExpenseOverlay(){
    showModalBottomSheet(
      context: context, 
    builder: (ctx)=>const NewExpense()
    );

  }
  @override
  Widget build(BuildContext context) {
   return  
   Scaffold(
    body:Column(
      children: [
        AppBar(
          title:const Text('Flutter ExpenseTracker'),
          actions: [
          IconButton(onPressed: _openAddExpenseOverlay,
           icon:const Icon(Icons.add))
        ]),
        Expanded(
          child: ExpensesList(expenses:registExpenses ))



      ],
    ) ,
    );
}
}