import 'package:flutter/material.dart';
import 'package:ritma_crm/view/profile_view.dart';
import 'package:ritma_crm/view/search_view.dart';

class CardBar extends StatefulWidget {
  const CardBar({super.key});

  @override
  State<CardBar> createState() => _CardBarState();
}

class _CardBarState extends State<CardBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.95,
      height: MediaQuery.of(context).size.width * 0.22,
      // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child:  Card(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/images/ritma.crm.jpg"),
                ),
            ),
            const SizedBox(width: 120),
            IconButton(
                icon: const Icon(Icons.search),
                iconSize: 30,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchView()));
                },
              ),
            IconButton(
              icon: const Icon(Icons.circle_notifications),
              iconSize: 30,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchView()));
              },
            ),
            IconButton(
                icon: const Icon(Icons.person),
                iconSize: 30,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileView()));
                },
              ),
          ],
        ),
      ),
    );
  }
}
