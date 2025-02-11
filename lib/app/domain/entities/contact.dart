// ignore_for_file: public_member_api_docs, sort_constructors_first
class Contact {
  int id;
  String nome;
  String email;
  String urlAvatar;

  Contact(
    this.id,
    this.nome,
    this.email,
    this.urlAvatar,
  );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nome': nome,
      'email': email,
      'urlAvatar': urlAvatar,
    };
  }

  factory Contact.fromMap(Map<String, dynamic> map) {
    return Contact(
      map['id'] as int,
      map['nome'] as String,
      map['email'] as String,
      map['urlAvatar'] as String,
    );
  }

}
