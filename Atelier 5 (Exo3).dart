void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw Exception("Mot de passe trop court !");
  }
  print("Mot de passe accepté ");
}

void main() {
  try {
    verifierMotdepasse("123"); // Test avec un mot de passe court
  } catch (e) {
    print("Erreur : $e");
  } finally {
    print("Fin de vérification");
  }
}

