import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taximentro/controller/home_states.dart';
import 'package:taximentro/data/calcula_valor_viagem.dart';

class HomeController extends Cubit<HomeState> {
  final CalcularValorViagem calcularValorViagem;

  HomeController({required this.calcularValorViagem}) : super(HomeState());

  void calcular() {
    final valorCorrida =
        calcularValorViagem(km: state.km!, minutos: state.minutos!);
    emit(
      HomeState(
        km: state.km,
        minutos: state.minutos,
        valorCorrida: valorCorrida,
      ),
    );
  }

  void setMinutos(String minutos) {
    final m = int.parse(minutos);
    emit(
      HomeState(
        km: state.km,
        minutos: m,
        valorCorrida: state.valorCorrida,
      ),
    );
  }

  void setKm(String km) {
    final m = int.parse(km);
    emit(
      HomeState(
        km: m,
        minutos: state.minutos,
        valorCorrida: state.valorCorrida,
      ),
    );
  }
}
