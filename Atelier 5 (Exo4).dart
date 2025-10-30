class MotdepasseCourtException implements Exception {
  final String message;
  MotdepasseCourtException(this.message);

  @override
  String toString() => "MotdepasseCourtException : $message";
}

void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw MotdepasseCourtException("Le mot de passe doit contenir au moins 6 caractères !");
  }
  print("Mot de passe valide ");
}

void main() {
  try {
    verifierMotdepasse("1234");
  } on MotdepasseCourtException catch (e) {
    print(e);
  } finally {
    print("Fin de traitement");
  }
}
