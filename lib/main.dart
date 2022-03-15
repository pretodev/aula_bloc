import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taximentro/controller/home_controller.dart';
import 'package:taximentro/data/calcula_valor_viagem.dart';
import 'package:taximentro/ui/home_page.dart';

void main() {
  final calcularValorViagem = CalcularValorViagem(
    minutosMax: 20,
    kmMax: 10,
  );

  return runApp(
    BlocProvider<HomeController>(
      create: (_) => HomeController(
        calcularValorViagem: calcularValorViagem,
      ),
      child: const MaterialApp(
        home: HomePage(),
      ),
    ),
  );
}
