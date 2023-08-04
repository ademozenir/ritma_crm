
import 'package:flutter/material.dart';
import 'package:ritma_crm/widget/drawer_bar.dart';
import 'package:ritma_crm/widget/main_appbar.dart';
import 'package:ritma_crm/widget/main_card.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final _textController = TextEditingController();

  // final _searchMultiCubit = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      drawer: const DrawerBar(),
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

