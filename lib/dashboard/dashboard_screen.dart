import 'package:dashboard_design_1/dashboard/components/action_card.dart';
import 'package:dashboard_design_1/dashboard/sections/balance.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Text(
              "Hi, Mark Johnson",
              style: Theme.of(context).textTheme.headline5?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            SizedBox(height: 20),
            BalanceSection(),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: DashboardActionCard(
                    cardTitle: "Deposit History",
                    assetImageFileName: "deposit.png",
                    backgroundColor: Colors.green.withOpacity(.1),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: DashboardActionCard(
                    cardTitle: "Customer Care",
                    assetImageFileName: "customer_care.png",
                    backgroundColor: Colors.grey.withOpacity(.1),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: DashboardActionCard(
                    cardTitle: "Resident Exit",
                    assetImageFileName: "exit.png",
                    backgroundColor: Colors.red.withOpacity(.1),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: DashboardActionCard(
                    cardTitle: "Expenses History",
                    assetImageFileName: "expenses.png",
                    backgroundColor: Colors.yellow.withOpacity(.1),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: DashboardActionCard(
                    cardTitle: "Reminder",
                    assetImageFileName: "reminder.png",
                    backgroundColor: Colors.grey.withOpacity(.1),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: DashboardActionCard(
                    cardTitle: "Give Feedback",
                    assetImageFileName: "review.png",
                    backgroundColor: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
