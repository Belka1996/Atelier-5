import 'dart:io';

class NombreNegatifException implements Exception {
  String message;
  NombreNegatifException(this.message);
}

void main() {
  try {
    stdout.write("Entrez un nombre : ");
    String? input = stdin.readLineSync();
    int nombre = int.parse(input!);

    if (nombre < 0) {
      throw NombreNegatifException("Le nombre ne peut pas être négatif !");
    }

    print("Le carré de $nombre est ${nombre * nombre}");
  } on NombreNegatifException catch (e) {
    print("Erreur : ${e.message}");
  } on FormatException {
    print("Entrée invalide !");
  } finally {
    print("Fin du programme.");
  }
}
