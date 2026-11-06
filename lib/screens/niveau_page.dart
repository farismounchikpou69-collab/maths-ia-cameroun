import 'package:flutter/material.dart';
import '../data/programme_apc.dart';

class NiveauPage extends StatelessWidget {
  const NiveauPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choisir ma classe'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: ProgrammeAPC.niveaux.map((niveau) {
          return Card(
            child: ListTile(
              leading: const Icon(
                Icons.school,
                color: Colors.green,
              ),
              title: Text(niveau),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Classe choisie : $niveau')),
                );
              },
            ),
          );
        }).toList(),
      ),
    );
  }
}
