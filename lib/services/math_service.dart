class MathService {
  String resoudreEquationPremierDegre(
    double a,
    double b,
  ) {
    if (a == 0) {
      return b == 0
          ? 'Une infinité de solutions.'
          : 'Aucune solution.';
    }

    final x = -b / a;

    return 'Solution : x = ${x.toStringAsFixed(2)}';
  }
}
