import 'package:flutter/material.dart';
import 'package:flutter_clone_whatsapp/pages/call_page.dart';
import 'package:flutter_clone_whatsapp/pages/chat_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // TabController _tabController = new TabController(length: 4, vsync: vsync)

  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.message),
        onPressed: () {},
      ),
      appBar: AppBar(
        title: Text("WhatsApp"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
        ],
        //Esta parte es para la implementacion del tab
        bottom: TabBar(
          indicatorWeight: 3.5,
          indicatorColor: Colors.white,
          controller: _tabController,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              child:
                  Text("CHATS", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Tab(
              child:
                  Text("STATUS", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Tab(
              child:
                  Text("CALLS", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(child: Text("pagina 01")),
          ChatPage(),
          Center(child: Text("pagina 03")),
          CallPage(),
        ],
      ),
    );
  }
}
