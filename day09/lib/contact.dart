import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContactList extends StatefulWidget {
  const ContactList({super.key});

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  List ContactList = [
    {'name': 'SDSfAhnaf', 'Phone': '01918'},
    {'name': 'KJDAhnaf', 'Phone': '01918'},
    {'name': 'MNDFBSDAhnaf', 'Phone': '01918'},
    {'name': 'GHAhnaf', 'Phone': '01918'},
    {'name': 'DFSAhnaf', 'Phone': '01918'},
    {'name': 'AEFSAhnaf', 'Phone': '01918'},
    {'name': 'JRDAhnaf', 'Phone': '01918'},
    {'name': 'EAhnaf', 'Phone': '01918'},
    {'name': 'SAhnaf', 'Phone': '01918'},
    {'name': 'JAhnaf', 'Phone': '01918'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List'),
      ),
      body: ListView.builder(
          itemCount: ContactList.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.purple, width: 5)),
                    child: ListTile(
                        leading: CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.pink,
                            child: Text(ContactList[index]['name'][0])),
                        title: Text(ContactList[index]['name']),
                        subtitle: Text(ContactList[index]['Phone']),
                        trailing: IconButton(
                            onPressed: () {}, icon: Icon(Icons.call))),
                  ),
                )
              ],
            );
          }),
    );
  }
}
