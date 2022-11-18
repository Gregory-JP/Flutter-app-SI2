import 'package:flutter/material.dart';
import 'package:hello_world/Routes/app_routes.dart';
import 'package:hello_world/Widgets/list_pet.dart';
import 'package:provider/provider.dart';
import '../Provider/pets_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final PetsProvider petsProvider = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pet App'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.petForm);
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).pushNamed(AppRoutes.petForm);
        },
      ),
      body: ListView.builder(
        itemCount: petsProvider.count,
        itemBuilder: (context, index) => ListPets(petsProvider.byIndex(index)),
      ),
    );
  }
}
