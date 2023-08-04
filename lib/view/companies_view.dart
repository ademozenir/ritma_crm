import 'package:flutter/material.dart';
import 'package:ritma_crm/widget/drawer_bar.dart';
import 'package:ritma_crm/widget/main_appbar.dart';
import 'package:ritma_crm/widget/main_card.dart';

class CompaniesView extends StatefulWidget {
  const CompaniesView({super.key});

  @override
  State<CompaniesView> createState() => _CompaniesViewState();
}

class _CompaniesViewState extends State<CompaniesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      drawer: DrawerBar(),
      backgroundColor: const Color(0xfff4f9fd),
      body: SingleChildScrollView(
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
