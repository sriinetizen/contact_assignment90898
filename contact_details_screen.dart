import 'package:flutter/material.dart';

class ContactDetailsScreen extends StatelessWidget {
  final Map<String, dynamic> contact;
  final Function onDelete;
  final Function onEdit;

  ContactDetailsScreen({required this.contact, required this.onDelete, required this.onEdit});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(contact['name'] ?? 'Contact Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: ${contact['name']}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('Phone: ${contact['phone']}', style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text('Email: ${contact['email']}', style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () => onEdit(),
                  child: Text('Edit'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => onDelete(),
                  child: Text('Delete'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}