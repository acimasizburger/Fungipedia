import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/bottom_menu.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mantarlarım", style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.add),
            onPressed: () {
              // Yeni mantar ekleme işlemi
            },
          ),
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: 10, // Örnek veri sayısı
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.only(bottom: 16),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                child: Icon(
                  CupertinoIcons.leaf_arrow_circlepath,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
              ),
              title: Text("Mantar ${index + 1}"),
              subtitle: Text("Mantar açıklaması ${index + 1}"),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                // Mantar detayına gitme işlemi
              },
            ),
          );
        },
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}