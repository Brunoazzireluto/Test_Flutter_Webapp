import 'package:flutter/material.dart';
import 'NavBar.dart';


class SearchForm extends StatelessWidget {
  const SearchForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          title: const Text("Teste ERP Cliente - Procurar Cliente"),
          actions: [
            IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                }
            )
          ],
        ),
        drawer: NavBar()
    );
  }
}
