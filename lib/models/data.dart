import 'package:expense_tracker2/models/expense.dart';



//dummy data

final List<Expense>registExpenses=[
  Expense(
    title: 'Flutter Course',
    amount: 19.65, 
    date: DateTime.now(),
    category:Category.work),

  Expense(
    title: 'Cinema',
    amount: 15.65, 
    date: DateTime.now(),
    category:Category.leisure)

];
