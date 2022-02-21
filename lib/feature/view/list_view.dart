import 'package:flutter/material.dart';

class ListPageView extends StatefulWidget {
  const ListPageView({Key? key}) : super(key: key);

  @override
  _ListPageViewState createState() => _ListPageViewState();
}

class _ListPageViewState extends State<ListPageView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF293855),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  listViewText(context),
                  /* listViewList(context), */
                ],
              )),
        ),
      ),
    );
  }

  Container listViewText(BuildContext context) {
    return Container(
        height: 200,
        child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Keep up the \ncarbon-free \nwork! 🎉',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 32.00,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )));
  }

  /* Container listViewList(BuildContext context) {
    return Container(
        child: Scaffold(
      bottomNavigationBar: BottomAppBar(
          child: Row(
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.folder_open)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.settings_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.filter_drama)),
        ],
      )),
    ));
  }*/
}
