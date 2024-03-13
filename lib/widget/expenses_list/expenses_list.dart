import 'package:expense_tracker2/models/expense.dart';
import 'package:expense_tracker2/widget/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

//function that display expenses on the home screen
class ExpensesList extends StatelessWidget{
   const ExpensesList({super.key,required this.expenses});
   final List<Expense>expenses;

  @override
  Widget build(BuildContext context) {
   return  ListView.builder(
    itemCount:expenses.length ,//how many list items will be rendered eentually
                              //if the length is 2 the item builder will call the fuction 2 times
    itemBuilder:
     (ctx,index)=>ExpenseItem(expenses[index]),

   )
   
   ;
  }
  

}