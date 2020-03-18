import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'gELP',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Find Reviews'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> _groups = <String> ['Group A','Group B','Group C'];
  final List<String> _restaurants = <String> ['All', 'Una Mas', 'Zpizza', 'Dr. Burrito'];
  String _selectedGroup;
  String _selectedRestaurant = "All";

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  new Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('Choose a group:', textAlign: TextAlign.center,),

//                      textAlign: TextAlign.center,
                      ),
                      Container(
                        child: DropdownButton(
                          hint: Text("Select Group"),
                          value: _selectedGroup,
                          onChanged: (String selectedGroup) {
                            setState(() {
                              _selectedGroup = selectedGroup;
                            });
                          },
                          items: _groups.map((String group) {
                            return DropdownMenuItem<String> (
                            value: group,
                            child: Text('$group')
                            );

                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                  new Row(
                    children: <Widget>[
                      Expanded(
                          child: Text('Choose a restaurant:',textAlign: TextAlign.center,)
                      ),
                      Container(
                        child: DropdownButton(
                          hint: Text("Select Place"),
                          value: _selectedRestaurant,
                          onChanged: (String selected) {
                            setState(() {
                              _selectedRestaurant = selected;
                            });
                          },
                          items: _restaurants.map((String restaurant) {
                            return DropdownMenuItem<String> (
                                value: restaurant,
                                child: Text('$restaurant')
                            );

                          }).toList(),

                        ),
                      ),
                    ],
                  ),
                ],
              ),
              RaisedButton(
                onPressed: () {},
                child: const Text(
                  'Find',
                  style: TextStyle(fontSize: 20)
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
