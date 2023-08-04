import 'package:flutter/material.dart';
import 'package:ritma_crm/view/profile_view.dart';

class MainAppBar extends AppBar {
  MainAppBar({super.key})
      : super(surfaceTintColor: Colors.white,
          actions: <Widget>[
            Builder(
              builder: (BuildContext context) => IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchView()));
                },
              ),
            ),
            Builder(
              builder: (BuildContext context) => IconButton(
                icon: const Icon(Icons.circle_notifications),
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchView()));
                },
              ),
            ),
            Builder(
              builder: (BuildContext context) => IconButton(
                icon: const Icon(Icons.person),
                iconSize: 30,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileView()));
                },
              ),
            ),
          ],
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/ritma.crm.jpg'),
                  radius: 20,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          // backgroundColor: const Color(0xfff4f9fd),
          backgroundColor: Colors.white,
          shadowColor: Colors.grey[100],
          toolbarHeight: 60,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: const SizedBox(
            width: 310,
            height: 60,
            child: Padding(
              padding: EdgeInsets.only(top: 5, bottom: 5),
            ),
          ),
        );
}
