import 'package:flutter/material.dart';
import 'package:postcrap/shared/constants.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: background,
     body: Text('Search'),
    );
  }
}
