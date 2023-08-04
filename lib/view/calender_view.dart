import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:ritma_crm/model/calender/event.dart';
import 'package:ritma_crm/widget/drawer_bar.dart';
import 'package:ritma_crm/widget/main_appbar.dart';
import 'package:table_calendar/table_calendar.dart';

class EventCalendarView extends StatefulWidget {
  const EventCalendarView({Key? key}) : super(key: key);

  @override
  State<EventCalendarView> createState() => _EventCalendarViewState();
}

class _EventCalendarViewState extends State<EventCalendarView> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDate;

  Map<DateTime, List<Event>> _mySelectedEvents = {};

  final _titleController = TextEditingController();
  final _descpController = TextEditingController();

  @override
  void initState() {
    _selectedDate = _focusedDay;
    loadPreviousEvents();
    super.initState();
  }

  loadPreviousEvents() {
    final date1 = DateTime.utc(2022, 9, 13);
    final date2 = DateTime.utc(2022, 9, 20);
    final date3 = DateTime.utc(2022, 9, 30);

    _mySelectedEvents = {
      date1: [
        Event("111", "11", date1),
        Event("22", "22", date1),
      ],
      date2: [
        Event("22", "22", date2),
      ],
      date3: [
        Event("ss", "ss", date3),
      ]
    };
  }

  List<Event> _listOfDayEvents(DateTime dateTime) => _mySelectedEvents[dateTime] ?? [];

  _showAddEventDialog() async {
    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(
          'Add New Event',
          textAlign: TextAlign.center,
        ),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _titleController,
              textCapitalization: TextCapitalization.words,
              decoration: const InputDecoration(
                labelText: 'Title',
              ),
            ),
            TextField(
              controller: _descpController,
              textCapitalization: TextCapitalization.words,
              decoration: const InputDecoration(labelText: 'Description'),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            child: const Text('Add Event'),
            onPressed: () {
              if (_titleController.text.isEmpty && _descpController.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Required title and description'),
                    duration: Duration(seconds: 2),
                  ),
                );
                //Navigator.pop(context);
                return;
              } else {
                print(_titleController.text);
                print(_descpController.text);

                setState(() {
                  var event = Event(_titleController.text, _descpController.text, _selectedDate!);

                  if (_mySelectedEvents.containsKey(_selectedDate)) {
                    _mySelectedEvents[_selectedDate]?.add(event);
                  } else {
                    _mySelectedEvents[_selectedDate!] = [event];
                  }

                  // var list = mySelectedEvents[_selectedDate] ?? [];
                  // list.add(event);
                  // mySelectedEvents[_selectedDate!] = list;
                });

                print("New Event for backend developer ${json.encode(_mySelectedEvents)}");
                _titleController.clear();
                _descpController.clear();
                Navigator.pop(context);
                return;
              }
            },
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      drawer: const DrawerBar(),
      backgroundColor: const Color(0xfff4f9fd),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                elevation: 0,
                color: Colors.white,
                margin: const EdgeInsets.all(15.0),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(40), topLeft: Radius.circular(40)),
                  side: BorderSide(color: Colors.white, width: 2.0),
                ),
                child: Column(
                  children: [
                    TableCalendar(
                      firstDay: DateTime.utc(2015, 10, 20),
                      lastDay: DateTime.utc(2030, 10, 20),
                      focusedDay: _focusedDay,
                      calendarFormat: _calendarFormat,
                      onDaySelected: (selectedDay, focusedDay) {
                        if (!isSameDay(_selectedDate, selectedDay)) {
                          // Call `setState()` when updating the selected day
                          setState(() {
                            _selectedDate = selectedDay;
                            _focusedDay = focusedDay;
                          });
                        }
                      },
                      selectedDayPredicate: (day) {
                        return isSameDay(_selectedDate, day);
                      },
                      onFormatChanged: (format) {
                        if (_calendarFormat != format) {
                          // Call `setState()` when updating calendar format
                          setState(() {
                            _calendarFormat = format;
                          });
                        }
                      },
                      onPageChanged: (focusedDay) {
                        // No need to call `setState()` here
                        _focusedDay = focusedDay;
                      },
                      eventLoader: _listOfDayEvents,
                    ),
                    const Divider(
                      thickness: 2,
                      height: 30,
                      color: Colors.amber,
                    ),
                    // itarable yi parcalayıp iterable elamanları alıyor
                    ..._listOfDayEvents(_selectedDate!).map(
                      (event) => ListTile(
                        leading: const Icon(
                          Icons.done,
                          color: Colors.red,
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text('Event Title: ${event.title}'),
                        ),
                        subtitle: Text('Description: ${event.description}'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _showAddEventDialog(),
        label: const Text('Add Event'),
      ),
    );
  }
}
