import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class ManageMyNetworkScreen extends StatefulWidget {
  const ManageMyNetworkScreen({super.key});

  @override
  State<ManageMyNetworkScreen> createState() => _ManageMyNetworkScreenState();
}

class _ManageMyNetworkScreenState extends State<ManageMyNetworkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('Manage my network'), centerTitle: false,backgroundColor: Colors.white,),
      body: ListView(
        children: const [
          Divider(),
          ListTile(   
            leading: Icon(Icons.people),
            title: Text('Connections'),
            trailing: Text('192'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.person_pin_circle_sharp),
            title: Text('People I follow'),
            trailing: Text('151'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.home_work_rounded),
            title: Text('Companies'),
            trailing: Text('20'),
          ),
          Divider(),
          ListTile(
            leading: Icon(LineIcons.users),
            title: Text('Groups'),
            trailing: Text('10'),
          ),
        ],
      ),
    );
  }
}
