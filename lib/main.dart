import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mon application Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
   @override
   _MyHomePageState createState()=>_MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{

  late TabController _tabController;

  @override
  void initState() {
    _tabController =TabController(length: 4, vsync: this);
    super.initState();
  }
  @override
  void dispose(){
    _tabController.dispose();
    super.dispose();
  }
  @override

  Widget build(BuildContext context ) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prayers',
        style: GoogleFonts.croissantOne(),
        ),
        actions: [
          IconButton(icon: const Icon(Icons.settings), onPressed: (){}, )
        ],
        bottom: TabBar(
          controller: _tabController,
            tabs: const [
              Tab(text: 'Prieres'),
              Tab(text: 'Favorites'),
              Tab(text: 'Calendrier'),
              Tab(text: 'Reveil')
            ],
          ),
      ),
      body: TabBarView (
        controller: _tabController,
        children: const [
          Center(
            child: Text(
              'lorem ipsum dolor sit amet'
            ),
          ),
           Center(
            child: Text(
              'lorem ipsum dolor sit amet'
            ),
          ),
           Center(
            child: Text(
              'lorem ipsum dolor sit amet'
            ),
          ),
          Center(
            child: Text(
              'lorem ipsum dolor sit amet'
            ),
          )
        ],
      )
    );
  }
}