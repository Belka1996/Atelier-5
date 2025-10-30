class MotdepasseCourtException implements Exception {
  String message;
  MotdepasseCourtException(this.message);
}

void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw MotdepasseCourtException("Le mot de passe doit contenir au moins 6 caractères !");
  }
  print("Mot de passe accepté");
}

void main() {
  try {
    verifierMotdepasse("1234");
  } on MotdepasseCourtException catch (e) {
    print("Erreur : ${e.message}");
  } finally {
    print("Vérification terminée.");
  }
}
