import 'package:flutter/material.dart';
import 'package:ritma_crm/widget/drawer_bar.dart';
import 'package:ritma_crm/widget/main_appbar.dart';
import 'package:ritma_crm/widget/main_card.dart';

class TeamStatus extends StatefulWidget {
  const TeamStatus({super.key});

  @override
  State<TeamStatus> createState() => _TeamStatusState();
}

class _TeamStatusState extends State<TeamStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      drawer: const DrawerBar(),
      backgroundColor: const Color(0xfff4f9fd),
      body:  const SingleChildScrollView(
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
