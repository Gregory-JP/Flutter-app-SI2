import 'dart:math';
import 'package:flutter/material.dart';
import 'package:hello_world/Data/database.dart';
import '../Models/pet_model.dart';

class PetsProvider with ChangeNotifier {
  final Map<String, Pet> _items = {...dataPet};

  List<Pet> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  Pet byIndex(int i) {
    return _items.values.elementAt(i);
  }

  void put(Pet pet) {
    // ignore: unrelated_type_equality_checks
    if (pet == Null) {
      return;
    }

    if (pet.idPet.trim().isNotEmpty && _items.containsKey(pet.idPet)) {
      _items.update(
          pet.idPet,
          (_) => Pet(
                idPet: pet.idPet,
                nome: pet.nome,
                idade: pet.idade,
                raca: pet.raca,
              ));
    } else {
      final id = Random().nextDouble().toString();
      _items.putIfAbsent(
        id,
        () => Pet(
          idPet: id,
          nome: pet.nome,
          idade: pet.idade,
          raca: pet.raca,
        ),
      );
    }
    notifyListeners(); // notifica o provider que houve alteração
  }

  void remove(Pet pet) {
    // ignore: unrelated_type_equality_checks
    if (pet != Null && pet.idPet.trim().isNotEmpty) {
      _items.remove(pet.idPet);
      notifyListeners();
    }
  }
}
