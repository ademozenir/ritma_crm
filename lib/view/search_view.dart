import 'package:flutter/material.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  final _textController = TextEditingController();
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          width: 310,
          height: 50,
          child: Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                isCollapsed: false,
                fillColor: Colors.white70,
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => _textController.clear(),
                ),
              ),
            ),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
