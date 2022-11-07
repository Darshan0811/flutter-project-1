import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var api = "www.thecocktaildb.com/api/json/v1/1/search.php?f=a";
  var response;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    response = await http.get(api);
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Cocktail App",
          style: TextStyle(color: Colors.white),
        )),
      ),
      body: Container(
          child: response != null
              ? ListView.builder(
                  itemCount: 50,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "item $index",
                        //style: TextStyle(color: Colors.white),
                      ),
                    );
                  },
                )
              : CircularProgressIndicator(
                  color: Colors.white,
                )),
    );
  }
}
