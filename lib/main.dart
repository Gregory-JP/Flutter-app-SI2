import 'package:flutter/material.dart';
import 'package:hello_world/Pages/home_page.dart';
import 'package:hello_world/Routes/app_routes.dart';
import 'Pages/pet_forms.dart';
import 'Provider/pets_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PetsProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Pet App',
        theme: ThemeData(
          // primaryColor: Colors.green,
          primarySwatch: Colors.green,
        ),
        home: const HomePage(),
        routes: {
          AppRoutes.petForm: (_) => const PetForm(),
        },
      ),
    );
  }
}
