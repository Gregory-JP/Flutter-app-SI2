import 'package:flutter/material.dart';
import 'package:hello_world/Routes/app_routes.dart';
import 'package:provider/provider.dart';
import '../Models/pet_model.dart';
import '../Provider/pets_provider.dart';

class ListPets extends StatelessWidget {
  final Pet pet;

  const ListPets(this.pet, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        child: Icon(Icons.pets),
      ),
      title: Text(pet.nome),
      subtitle: Text("Idade: ${pet.idade}"),
      trailing: SizedBox(
        width: 100,
        child: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(AppRoutes.petForm, arguments: pet);
              },
              color: Colors.orange,
            ),
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Excluir Pet'),
                    content: const Text('Tem certeza?'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(false);
                        },
                        child: const Text('Não'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(true);
                        },
                        child: const Text('Sim'),
                      ),
                    ],
                  ),
                ).then((confirmed) {
                  if (confirmed) {
                    Provider.of<PetsProvider>(context, listen: false)
                        .remove(pet);
                  }
                });
              },
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
