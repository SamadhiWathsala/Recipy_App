import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

bool selected = false;

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: KasthuriHome(),
    );

  }
}

class KasthuriHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child:
            Text(
                'Kasthuri Rasa'
            )
        ),
        actions: <Widget>[
          IconButton(
            icon:
            Icon(
                Icons.search),
                onPressed: (){},
          ),
          IconButton(
            icon:
            Icon(
                Icons.add_alert),
                onPressed: (){},
          ),
        ],

        backgroundColor: Colors.greenAccent,

      ),

      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              child:
              Center(
                child:
                Text(
                  'Chose your ... and get your recipy',
                  style: TextStyle(fontSize: 18),
                ),
                widthFactor: 20,
                heightFactor: 10,),
            ),
            Container(
              child:
              Center(
                child:
                Icon(
                  Icons.fastfood,
                  color: Colors.black,
                  size: 100.0,),
                ),
              ),
            Container(
                child:
                Center(
                  child:
                  IconButton(
                    icon:
                    Icon(
                        Icons.arrow_forward),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => FirstPage()),
                          );
                        },
                  ),
            )
          ),
        ],
      ),
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Recipies Meanu'),
              decoration: BoxDecoration(
                color: Colors.greenAccent,
              ),
            ),
            ListTile(
              title: Text('Breakfast Recipies'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Breakfast()),
                );
              },
            ),
            ListTile(
              title: Text('Lunch Recipies'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Lunch()),
                );
              },
            ),
            ListTile(
              title: Text('Diner Recipies'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Diner()),
                );
              },
            ),
            ListTile(
              title: Text('Sweets Recipy'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Sweets()),
                );
              },
            ),
            ListTile(
              title: Text('Shorteats Recipies'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Shorteats()),
                );
              },
            ),
            ListTile(
              title: Text('Beverage Recipies'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Beverages()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select your recipy"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                  child:
                  Container(
                    child:
                    Center(
                      child:
                      MaterialButton(
                        child:
                        Text(
                          'Breakfast Recipies',
                          style: TextStyle(fontSize: 18),
                        ),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Breakfast()),
                          );
                        },
                      ),
                    ),
                    width: 50.0,
                    height: 200.0,
                    color: Colors.grey,
                  )
              ),
              Expanded(
                  child:
                  Container(
                    child:
                    Center(
                      child:
                      MaterialButton(
                        child:
                        Text(
                          'Lunch Recipies',
                          style: TextStyle(fontSize: 18),
                        ),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Lunch()),
                          );
                        },
                      ),
                    ),
                    width: 50.0,
                    height: 200.0,
                    color: Colors.yellow,
                  )
              ),

            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child:
                  Container(
                    child:
                    Center(
                      child:
                      MaterialButton(
                        child:
                        Text(
                          'Diner Recipies',
                          style: TextStyle(fontSize: 18),
                        ),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Diner()),
                          );
                        },
                      ),
                    ),
                    width: 50.0,
                    height: 200.0,
                    color: Colors.redAccent,
                  )
              ),
              Expanded(
                  child:
                  Container(
                    child:
                    Center(
                      child:
                      MaterialButton(
                        child:
                        Text(
                          'Sweets Recipies',
                          style: TextStyle(fontSize: 18),
                        ),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Sweets()),
                          );
                        },
                      ),
                    ),
                    width: 50.0,
                    height: 200.0,
                    color: Colors.green,
                  )
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child:
                  Container(
                    child:
                    Center(
                      child:
                      MaterialButton(
                        child:
                        Text(
                          'Shorteats Recipies',
                          style: TextStyle(fontSize: 18),
                        ),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Shorteats()),
                          );
                        },
                      ),
                    ),
                    width: 50.0,
                    height: 200.0,
                    color: Colors.orangeAccent,
                  )
              ),
              Expanded(
                child:
                    Container(
                      child:
                      Center(
                        child:
                        MaterialButton(
                          child:
                          Text(
                              'Beverages Recipies',
                              style: TextStyle(fontSize: 18),
                          ),
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Beverages()),
                            );
                          },
                        ),
                      ),
                      width: 50.0,
                      height: 200.0,
                      color: Colors.purpleAccent,
              )
              ),
            ],
          ),
        ],
      ),

    );
  }
}

class Breakfast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
              'Breakfast Recipies',
              style: TextStyle(fontSize: 18.0),
          ),
          backgroundColor: Colors.greenAccent,
          actions: <Widget>[
            IconButton(
              icon:
              Icon(
                  Icons.add_alert),
              onPressed: (){

              },
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.border_all,color: Colors.black),
              child: Text('All'),),
              Tab(icon: Icon(Icons.favorite,color: Colors.red),
              child: Text('favorite'),),
              Tab(icon: Icon(Icons.star,color: Colors.yellowAccent,),
              child: Text('Popular'),),
            ],
          ),
        ),

      ),
    );
  }
}


class Lunch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Lunch Recipies',
            style: TextStyle(fontSize: 18.0),
          ),
          backgroundColor: Colors.greenAccent,
          actions: <Widget>[
            IconButton(
              icon:
              Icon(
                  Icons.add_alert),
              onPressed: (){

              },
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.border_all,color: Colors.black),
                child: Text('All'),),
              Tab(icon: Icon(Icons.favorite,color: Colors.red),
                child: Text('favorite'),),
              Tab(icon: Icon(Icons.star,color: Colors.yellowAccent,),
                child: Text('Popular'),),
            ],
          ),
        ),

      ),
    );
  }
}

class Diner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Diner Recipies',
            style: TextStyle(fontSize: 18.0),
          ),
          backgroundColor: Colors.greenAccent,
          actions: <Widget>[
            IconButton(
              icon:
              Icon(
                  Icons.add_alert),
              onPressed: (){

              },
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.border_all,color: Colors.black),
                child: Text('All'),),
              Tab(icon: Icon(Icons.favorite,color: Colors.red),
                child: Text('favorite'),),
              Tab(icon: Icon(Icons.star,color: Colors.yellowAccent,),
                child: Text('Popular'),),
            ],
          ),
        ),

      ),
    );
  }
}

class Sweets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Sweets Recipies',
            style: TextStyle(fontSize: 18.0),
          ),
          backgroundColor: Colors.greenAccent,
          actions: <Widget>[
            IconButton(
              icon:
              Icon(
                  Icons.add_alert),
              onPressed: (){

              },
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.border_all,color: Colors.black),
                child: Text('All'),),
              Tab(icon: Icon(Icons.favorite,color: Colors.red),
                child: Text('favorite'),),
              Tab(icon: Icon(Icons.star,color: Colors.yellowAccent,),
                child: Text('Popular'),),
            ],
          ),
        ),

      ),
    );
  }
}

class Shorteats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Shorteats Recipies',
            style: TextStyle(fontSize: 18.0),
          ),
          backgroundColor: Colors.greenAccent,
          actions: <Widget>[
            IconButton(
              icon:
              Icon(
                  Icons.add_alert),
              onPressed: (){

              },
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.border_all,color: Colors.black),
                child: Text('All'),),
              Tab(icon: Icon(Icons.favorite,color: Colors.red),
                child: Text('favorite'),),
              Tab(icon: Icon(Icons.star,color: Colors.yellowAccent,),
                child: Text('Popular'),),
            ],
          ),
        ),

      ),
    );
  }
}

class Beverages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Beverage Recipies',
            style: TextStyle(fontSize: 18.0),
          ),
          backgroundColor: Colors.greenAccent,
          actions: <Widget>[
            IconButton(
              icon:
              Icon(
                  Icons.add_alert),
              onPressed: (){

              },
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.border_all,color: Colors.black),
                child: Text('All'),),
              Tab(icon: Icon(Icons.favorite,color: Colors.red),
                child: Text('favorite'),),
              Tab(icon: Icon(Icons.star,color: Colors.yellowAccent,),
                child: Text('Popular'),),
            ],
          ),
        ),

      ),
    );
  }
}