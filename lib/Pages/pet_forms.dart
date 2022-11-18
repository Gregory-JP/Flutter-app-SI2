import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Models/pet_model.dart';
import '../Provider/pets_provider.dart';

class PetForm extends StatefulWidget {
  const PetForm({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PetFormState createState() => _PetFormState();
}

class _PetFormState extends State<PetForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _idadeController = TextEditingController();
  final TextEditingController _racaController = TextEditingController();

  final FocusNode _focusIdade = FocusNode();
  final FocusNode _focusRaca = FocusNode();

  final Map<String, dynamic> _formData = {};

  void editPet(Pet pet) {
    _formData['id'] = pet.idPet;
    _formData['nome'] = pet.nome;
    _formData['idade'] = pet.idade;
    _formData['raca'] = pet.raca;

    _nomeController.text = pet.nome;
    _idadeController.text = pet.idade;
    _racaController.text = pet.raca;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final Pet pet = ModalRoute.of(context)!.settings.arguments as Pet;
    editPet(pet);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro de Pet'),
        actions: [
          IconButton(
              onPressed: () => addOrEdit(), icon: const Icon(Icons.save)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nomeController,
                decoration: const InputDecoration(labelText: 'Nome'),
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(_focusIdade);
                },
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Nome inválido';
                  }
                  if (value.trim().length < 3) {
                    return 'Nome muito curto';
                  }
                  return null;
                },
                onSaved: (value) => _formData['nome'] = value!.trim(),
              ),
              TextFormField(
                controller: _idadeController,
                decoration: const InputDecoration(labelText: 'Idade'),
                textInputAction: TextInputAction.next,
                focusNode: _focusIdade,
                onSaved: (value) => _formData['idade'] = value!.trim(),
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(_focusRaca);
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Idade inválida';
                  }
                },
              ),
              TextFormField(
                controller: _racaController,
                decoration: const InputDecoration(labelText: 'Raça'),
                textInputAction: TextInputAction.done,
                focusNode: _focusRaca,
                onFieldSubmitted: (_) => addOrEdit(),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Raça inválida';
                  }
                  if (value.trim().length < 3) {
                    return 'Raça muito curta';
                  }
                  return null;
                },
                onSaved: (value) => _formData['raca'] = value!.trim(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void addOrEdit() {
    final bool isValid = _formKey.currentState!.validate();
    if (isValid) {
      _formKey.currentState!.save();
      Provider.of<PetsProvider>(context, listen: false).put(
        Pet(
          idPet: _formData['id'],
          nome: _formData['nome'],
          idade: _formData['idade'],
          raca: _formData['raca'],
        ),
      );
      Navigator.of(context).pop();
    }
  }
}
