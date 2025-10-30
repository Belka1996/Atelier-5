import 'dart:io';

class NombreNegatifException implements Exception {
  final String message;
  NombreNegatifException(this.message);

  @override
  String toString() => "NombreNegatifException : $message";
}

void main() {
  try {
    stdout.write("Entrez un nombre : ");
    String? saisie = stdin.readLineSync();
    double nombre = double.parse(saisie!);

    if (nombre < 0) {
      throw NombreNegatifException("Le nombre ne peut pas être négatif !");
    }

    print("Le carré de $nombre est ${nombre * nombre}");
  } on FormatException {
    print("Erreur : vous devez entrer un nombre valide !");
  } on NombreNegatifException catch (e) {
    print(e);
  } finally {
    print("Programme terminé ✅");
  }
}

