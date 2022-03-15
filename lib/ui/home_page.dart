import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taximentro/controller/home_controller.dart';
import 'package:taximentro/controller/home_states.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeController, HomeState>(
      listener: (_, controller) {},
      builder: (context, state) {
        final controller = context.read<HomeController>();
        return Scaffold(
          appBar: AppBar(
            title: const Text("Taximetro"),
            centerTitle: true,
            elevation: 0,
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text('Digite os dados da corrida'),
                const SizedBox(height: 8.0),
                TextField(
                  decoration: const InputDecoration(labelText: 'Quantida KM'),
                  onChanged: controller.setKm,
                ),
                const SizedBox(height: 8.0),
                TextField(
                  decoration:
                      const InputDecoration(labelText: 'Quantidade Minutos'),
                  onChanged: controller.setMinutos,
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  child: const Text('Calcular valor da corrida'),
                  onPressed: controller.calcular,
                ),
                if (state.valorCorrida != null)
                  Center(
                    child: Text(
                      'Valor da corrido igual a ${state.valorCorrida}',
                    ),
                  )
              ],
            ),
          ),
        );
      },
    );
  }
}
