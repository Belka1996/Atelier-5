void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw Exception("Mot de passe trop court !");
  }
  print("Mot de passe accepté");
}

void main() {
  try {
    verifierMotdepasse("123");
  } catch (e) {
    print("Erreur : $e");
  }
}
