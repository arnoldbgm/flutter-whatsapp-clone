import 'package:flutter/material.dart';

class CallPage extends StatelessWidget {
  const CallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 26,
              backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/4923041/pexels-photo-4923041.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            ),
            title: Text(
              "Daniel Farfan Lopez",
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
            ),
            subtitle: Row(
              children: [
                Icon(
                  Icons.call_made_rounded,
                  color: Color(0xff10C05A),
                  size: 15,
                ),
                Text("Ayer 11:00 pm")
              ],
            ),
            trailing: Icon(
              Icons.call,
              color: Color(0xff10C05A),
            ),
          );
        },
      ),
    );
  }
}
