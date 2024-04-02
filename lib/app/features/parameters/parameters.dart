import 'package:flutter/material.dart';

class ParametersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parameters'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Receive Notifications'),
            trailing: Switch(
              value:
                  true, // Replace with your logic to determine the current state
              onChanged: (value) {
                // Replace with your logic to handle the toggle
              },
            ),
          ),
          ListTile(
            title: Text('Dark Mode'),
            trailing: Switch(
              value:
                  false, // Replace with your logic to determine the current state
              onChanged: (value) {
                // Replace with your logic to handle the toggle
              },
            ),
          ),
          ListTile(
            title: Text('Change Password'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PasswordParametersScreen()),
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Replace with your logic to handle logout
        },
        child: Icon(Icons.logout),
      ),
    );
  }
}

class PasswordParametersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Password'),
      ),
      body: Center(
        child: Text('Password Parameters Screen'),
      ),
    );
  }
}
