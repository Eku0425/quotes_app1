import 'package:flutter/material.dart';
import 'package:quotes_appp/utils/golbalList.dart';

import '../utils/quoteModal.dart';
import 'HomePage.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({super.key});

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  void initState() {
    quoteModel = QuoteModel.toList(QutoesList);
    super.initState();
  }
  bool en = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          'Quotes App',
          style: TextStyle(color: Colors.white,fontSize: 25),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: ActionChip(
              backgroundColor: Colors.blueGrey,
              side: BorderSide(color: Colors.blueGrey),
              label: const Text(''),
              avatar: Icon(
                en ? Icons.grid_view_outlined : Icons.list,
                size: 30,
                color: Colors.black,
              ),
              onPressed: () {
                setState(() {
                  en = !en;
                });
              },
            ),
          ),
        ],
      ),
      body: (en)
          ? GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 9 / 8),
              itemBuilder: (context, index) => ListTile(
                title: Text(quoteModel!.quoteModelList[index].quote!),
                subtitle: Text(quoteModel!.quoteModelList[index].author!),
              ),
            )
          : ListView.builder(
              itemBuilder: (context, index) => ListTile(
                title: Text(quoteModel!.quoteModelList[index].quote!),
                subtitle: Text(quoteModel!.quoteModelList[index].author!),
              ),
            ),
    );
  }
}
