import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:my_app/pages/add_todo.dart';
import 'package:my_app/pages/todo_cart.dart';
import 'package:my_app/pages/view_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Stream<QuerySnapshot> _stream =
      FirebaseFirestore.instance.collection("Todo").snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const Text("Today's Schedule",
              style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          actions: const [
            CircleAvatar(
              backgroundImage: AssetImage("assets/phone.svg"),
            ),
            SizedBox(
              width: 25,
            )
          ],
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(35),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 22),
                  child: Text(
                    "Monday 21",
                    style: TextStyle(
                        fontSize: 33,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                )),
          ),
        ),
        bottomNavigationBar:
            BottomNavigationBar(backgroundColor: Colors.black87, items: [
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 32,
                color: Colors.white,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => const AddTodo()));
                },
                child: Container(
                  height: 52,
                  width: 52,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                          colors: [Colors.indigoAccent, Colors.purple])),
                  child: const Icon(
                    Icons.add,
                    size: 32,
                    color: Colors.white,
                  ),
                ),
              ),
              label: ""),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                size: 32,
                color: Colors.white,
              ),
              label: "")
        ]),
        body: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: StreamBuilder(
              stream: _stream,
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(child: CircularProgressIndicator());
                }
                return ListView.builder(
                    itemCount: snapshot.data?.docs.length,
                    itemBuilder: (context, index) {
                      IconData iconData;
                      Color iconColor;
                      Map<String, dynamic> document = snapshot.data?.docs[index]
                          .data() as Map<String, dynamic>;
                      switch (document["category"]) {
                        case "Work":
                          iconData = Icons.run_circle_outlined;
                          iconColor = Colors.red;
                          break;
                        case "WorkOut":
                          iconData = Icons.alarm;
                          iconColor = Colors.teal;
                          break;
                        case "Food":
                          iconData = Icons.local_grocery_store;
                          iconColor = Colors.blue;
                          break;
                        case "Design":
                          iconData = Icons.audiotrack;
                          iconColor = Colors.green;
                          break;
                        default:
                          iconData = Icons.run_circle_outlined;
                          iconColor = Colors.red;
                      }
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => ViewData(
                                      document: document,
                                      id: snapshot.data?.docs[index].id ??
                                          '')));
                        },
                        child: TodoCart(
                          checked: true,
                          iconBgColor: Colors.white,
                          title: document["title"],
                          iconColor: iconColor,
                          iconData: iconData,
                          time: "10 AM",
                        ),
                      );
                    });
              }),
        ));
  }
}
