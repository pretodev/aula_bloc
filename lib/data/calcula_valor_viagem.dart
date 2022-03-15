class CalcularValorViagem {
  final int kmMax;
  final int minutosMax;

  CalcularValorViagem({
    required this.kmMax,
    required this.minutosMax,
  });

  double call({
    required int km,
    required int minutos,
  }) {
    return _calcValorKm(km) + _calcValorMinutos(minutos);
  }

  double _calcValorKm(int km) {
    if (km <= kmMax) {
      return km * 0.5;
    }
    return ((km - kmMax) * 0.3) + kmMax * 0.5;
  }

  double _calcValorMinutos(int minutos) {
    if (minutos <= minutosMax) {
      return minutos * 0.7;
    }
    return ((minutos - minutosMax) * 0.5) + minutosMax * 0.7;
  }
}
