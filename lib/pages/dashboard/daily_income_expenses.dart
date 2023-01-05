import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:trackmymoney/models/basic_response.dart';
import 'package:trackmymoney/models/dashboard_daily_income_expense.dart';
import 'package:trackmymoney/services/api_manager.dart';
import 'package:trackmymoney/services/helpers.dart';

class DailyIncomeExpense extends StatefulWidget {
  const DailyIncomeExpense({Key? key}) : super(key: key);

  @override
  State<DailyIncomeExpense> createState() => _DailyIncomeExpenseState();
}

class _DailyIncomeExpenseState extends State<DailyIncomeExpense> {
  bool dailyInExLoading = true;
  late DashboardDailyIncomeExpense dashboardDailyIncomeExpense;

  @override
  void initState() {
    super.initState();
    getDailyInExData();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        child: dailyInExLoading ? Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height - 150,
          child: const SpinKitRotatingPlain(
            color: Colors.blue,
            size: 50.0,
          ),
        ) : Column(
          children: [],
        ),
      ),
    );
  }

  void getDailyInExData() async {
  }
}
