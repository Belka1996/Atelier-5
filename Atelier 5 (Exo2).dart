import 'dart:io';

void main() {
  try {
    stdout.write("Entrez votre âge : ");
    String? saisie = stdin.readLineSync();
    int age = int.parse(saisie!);
    print("Votre âge est $age ans");
  } on FormatException {
    print("Format invalide : entrez un nombre entier !");
  } finally {
    print("Fin d'opération");
  }
}
