import 'package:flutter/material.dart';
import 'package:practice_6/widgets/memory_layer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('App with bug'),
          bottom: TabBar(tabs: [
            Tab(icon: Icon(Icons.ac_unit)),
            Tab(icon: Icon(Icons.search)),
          ]),
        ),
        body: TabBarView(children: [
          MemoryLayer(
              storeKey: 'First',
              child: ListView.builder(
                itemBuilder: (context, position) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        position.toString(),
                        style: TextStyle(fontSize: 22.0),
                      ),
                    ),
                  );
                },
              )),
          ListView(
            key: const PageStorageKey('Second'),
            children: List<Widget>.generate(
                300,
                (i) => ListTile(
                      title: Text('Item ${i * i}'),
                    )),
          ),
        ]),
      ),
    );
  }
}
