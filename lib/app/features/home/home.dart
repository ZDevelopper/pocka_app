import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Rechercher',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 16.0),
                ElevatedButton(
                  onPressed: () {
                    // Action du bouton de filtres
                  },
                  child: Text('Filtres'),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/photo.png'),
                    ),
                    title: Text('Card $index'),
                    subtitle: Text('Description de la carte $index'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
