import 'package:flutter/material.dart';
import 'package:ritma_crm/widget/drawer_bar.dart';
import 'package:ritma_crm/widget/main_appbar.dart';
import 'package:ritma_crm/widget/main_card.dart';

class RecentTransactionsView extends StatelessWidget {
  const RecentTransactionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerBar(),
      appBar: MainAppBar(),
      backgroundColor: const Color(0xfff4f9fd),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            MainCard(),
            MainCard(),
            MainCard(),
            MainCard(),
          ],
        ),
      ),
    );
  }
}
