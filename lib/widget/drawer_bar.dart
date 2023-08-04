import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ritma_crm/view/calender_view.dart';
import 'package:ritma_crm/view/companies_view.dart';
import 'package:ritma_crm/view/recent_transactions_view.dart';

class DrawerBar extends StatefulWidget {
  const DrawerBar({
    super.key,
  });

  @override
  State<DrawerBar> createState() => _DrawerBarState();
}

class _DrawerBarState extends State<DrawerBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: MediaQuery.of(context).size.width * 2,
        width: MediaQuery.of(context).size.width * 0.7,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10.0, left: 10,top: 5),
          child: Drawer(
            backgroundColor: Colors.white,
            shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide.none),
            child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15.0, left: 15.0, bottom: 60),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("assets/images/ritma.crm.jpg"),
                        ),
                      ),
                    ],
                  ),
                  ListTile(
                    shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide.none),
                    splashColor: Colors.blue[900],
                    leading: const Icon(
                      Icons.groups_outlined,
                      size: 24,
                    ),
                    title: Text(
                      'Ekip Durumu',
                      style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.w700, fontSize: 16, color: const Color(0xff7d8592)),
                      selectionColor: const Color(0xff3f8cff),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const CompaniesView()));
                    },
                    selectedColor: Colors.blue[900],
                  ),
                  ListTile(
                    splashColor: Colors.blue,
                    shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide.none),
                    leading: const Icon(
                      FontAwesomeIcons.database,
                      size: 24,
                    ),
                    title: Text(
                      'Son İşlemler',
                      style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.w700, fontSize: 16, color: const Color(0xff7d8592)),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const RecentTransactionsView()));
                    },
                    selectedColor: Colors.blue[900],
                  ),
                  ListTile(
                    splashColor: Colors.blue,
                    shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide.none),
                    leading: const Icon(
                      FontAwesomeIcons.building,
                      size: 24,
                    ),
                    title: Text(
                      'Firmalar',
                      style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.w700, fontSize: 16, color: const Color(0xff7d8592)),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const CompaniesView()));
                    },
                    selectedColor: Colors.blue[900],
                  ),
                  ListTile(
                    splashColor: Colors.blue,
                    shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide.none),
                    leading: const Icon(
                      FontAwesomeIcons.handsHelping,
                      size: 24,
                    ),
                    title: Text(
                      'Teklifler',
                      style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.w700, fontSize: 16, color: const Color(0xff7d8592)),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                    selectedColor: Colors.blue[900],
                  ),
                  ListTile(
                    shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide.none),
                    splashColor: Colors.blue,
                    leading: const Icon(
                      FontAwesomeIcons.handHolding,
                      size: 24,
                    ),
                    title: Text(
                      'Ürünler',
                      style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.w700, fontSize: 16, color: const Color(0xff7d8592)),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                    selectedColor: Colors.blue[900],
                  ),
                  ListTile(
                    shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide.none),
                    splashColor: Colors.blue,
                    leading: const Icon(
                      FontAwesomeIcons.comments,
                      size: 24,
                    ),
                    title: Text(
                      'Görüşmeler',
                      style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.w700, fontSize: 16, color: const Color(0xff7d8592)),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                    selectedColor: Colors.blue[900],
                  ),
                  ListTile(
                    shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide.none),
                    splashColor: Colors.blue,
                    leading: const Icon(
                      FontAwesomeIcons.box,
                      size: 24,
                    ),
                    title: Text(
                      'Satışlar',
                      style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.w700, fontSize: 16, color: const Color(0xff7d8592)),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                    selectedColor: Colors.blue[900],
                  ),
                  ListTile(
                    shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide.none),
                    splashColor: Colors.blue,
                    leading: const Icon(
                      FontAwesomeIcons.bomb,
                      size: 24,
                    ),
                    title: Text(
                      'Fırsatlar',
                      style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.w700, fontSize: 16, color: const Color(0xff7d8592)),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                    selectedColor: Colors.blue[900],
                  ),
                  ListTile(
                    shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide.none),
                    splashColor: Colors.blue,
                    leading: const Icon(
                      FontAwesomeIcons.calendarCheck,
                      size: 24,
                    ),
                    title: Text(
                      'Ajanda',
                      style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.w700, fontSize: 16, color: const Color(0xff7d8592)),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const EventCalendarView()));
                    },
                    selectedColor: Colors.blue[900],
                  ),
                  const SizedBox(height: 100),
                  ListTile(
                    shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide.none),
                    splashColor: Colors.blue,
                    leading: const Icon(
                      Icons.logout,
                      size: 24,
                    ),
                    title: Text(
                      'Çıkış Yap',
                      style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.w700, fontSize: 16, color: const Color(0xff7d8592)),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                    selectedColor: Colors.blue[900],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
