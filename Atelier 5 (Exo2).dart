import 'dart:io';

void main() {
  try {
    stdout.write("Entrez votre âge : ");
    String? saisie = stdin.readLineSync();
    int age = int.parse(saisie!); // Peut provoquer une FormatException
    print("Vous avez $age ans.");
  } on FormatException catch (e) {
    print("Erreur de format : entrez un nombre valide !");
  } catch (e) {
    print("Erreur inattendue : $e");
  } finally {
    print("Fin d’opération");
  }
}
