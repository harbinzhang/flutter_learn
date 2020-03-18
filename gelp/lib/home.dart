import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
    final ThemeData theme = Theme.of(context);



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
                        child: Text('Choose a group:',

                          textAlign: TextAlign.center,
                          style: theme.textTheme.button,
                          softWrap: false,
                        ),
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
                          child: Text('Choose a restaurant:',
                            textAlign: TextAlign.center,
                            style: theme.textTheme.button,
                          )
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