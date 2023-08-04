import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ritma_crm/widget/drawer_bar.dart';
import 'package:ritma_crm/widget/main_appbar.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final positionController = TextEditingController();
  final companyController = TextEditingController();
  final locationController = TextEditingController();
  final birtdayDateController = TextEditingController();

  String? _selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      drawer: const DrawerBar(),
      backgroundColor: const Color(0xfff4f9fd),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 12, bottom: 10, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My Profile",
                    style: GoogleFonts.nunitoSans(fontWeight: FontWeight.w700, fontSize: 36, color: Colors.black),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.settings,
                        size: 30,
                      ))
                ],
              ),
            ),
             Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  surfaceTintColor: Colors.white,
                  shadowColor: Colors.white,
                  color: Colors.white,
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(
                          Icons.account_circle,
                          size: 65,
                        ),
                        title: Text(
                          'Evan Yates',
                          style: GoogleFonts.nunitoSans(fontWeight: FontWeight.w700, fontSize: 20, color: Colors.black),
                        ),
                        subtitle: Text(
                          'UI/UX Designer',
                          style: TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.edit_note, size: 35),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(height: 20),
                      const Divider(height: 1),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Text(
                              "Main Info",
                              style: GoogleFonts.nunitoSans(
                                  fontWeight: FontWeight.w700, fontSize: 18, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 12, bottom: 12),
                        child: SizedBox(
                          height: 50,
                          width: 300,
                          child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                labelText: "Position",
                                hintStyle: GoogleFonts.nunitoSans(
                                    fontWeight: FontWeight.w900, fontSize: 16, color: Colors.white),
                              ),
                              controller: positionController,
                              obscureText: true),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 12, bottom: 12),
                        child: SizedBox(
                          height: 50,
                          width: 300,
                          child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                labelText: "Company",
                                hintStyle: GoogleFonts.nunitoSans(
                                    fontWeight: FontWeight.w900, fontSize: 16, color: Colors.white),
                              ),
                              controller: companyController,
                              obscureText: true),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 12, bottom: 12),
                        child: SizedBox(
                          height: 50,
                          width: 300,
                          child: TextField(
                              decoration: InputDecoration(
                                suffixIcon: Icon(Icons.location_on),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                labelText: "Location",
                                hintStyle: GoogleFonts.nunitoSans(
                                    fontWeight: FontWeight.w900, fontSize: 16, color: Colors.white),
                              ),
                              controller: locationController,
                              obscureText: true),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 12, bottom: 12),
                        child: SizedBox(
                          height: 50,
                          width: 300,
                          child: TextField(
                            decoration: InputDecoration(
                              suffixIcon: const Icon(Icons.calendar_today),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                              labelText: "Birthday Date",
                              hintStyle: GoogleFonts.nunitoSans(
                                  fontWeight: FontWeight.w900, fontSize: 16, color: Colors.white),
                            ),
                            controller: birtdayDateController,
                            obscureText: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            // E6EDF5
            // 3F8CFF
            CupertinoSlidingSegmentedControl(
              backgroundColor: Color(0xfffe6edf5),
              children: {
                'Project': Container(
                  // decoration: BoxDecoration(borderRadius: BorderRadius.circular(2)),
                  color: _selectedValue == 'Project' ? Color(0xfff3f8cff) : Color(0xfffe6edf5),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Text('Project'),
                ),
                'Team': Container(
                  color: _selectedValue == 'Team' ? Color(0xfff3f8cff) : Color(0xfffe6edf5),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Text('Team'),
                ),
                'Vacation': Container(
                  color: _selectedValue == 'Vacation' ? Color(0xfff3f8cff) : Color(0xfffe6edf5),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Text('Vacation'),
                ),
              },
              onValueChanged: (String? value) {
                setState(() {
                  _selectedValue = value;
                });
              },
            ),
            SizedBox(height: 30),
            _selectedValue != null
                ? Text(
                    _selectedValue!,
                    style: const TextStyle(fontSize: 50),
                  )
                : Container(
                    /* You can display a placeholder here if you want */

                    )
          ],
        ),
      ),
    );
  }
}
