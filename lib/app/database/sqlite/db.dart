final createTable = '''
  CREATE TABLE contacts (
    id INT PRIMARY KEY,
    nome VARCHAR(200) NOT NULL,
    email VARCHAR(150) NOT NULL,
    telefone CHAR(16) NOT NULL,
    url_avatar VARCHAR(300) NOT NULL
  )
''';

final insert1 = '''
  INSERT INTO contacts VALUES("Maria", "maria@email.com, "(85) 4002-8922",  "https://cdn.pixabay.com/photo/2014/04/03/10/32/user-310807_1280.png")
''';

final insert2 = '''
  INSERT INTO contacts VALUES("Ana", "ana@email.com, "(85) 4002-8922",  "https://cdn.pixabay.com/photo/2014/04/02/17/07/user-307993_1280.png")
''';

final insert3 = '''
  INSERT INTO contacts VALUES("Alex", "alex@email.com, "(85) 4002-8922",  "https://cdn.pixabay.com/photo/2018/08/28/12/41/avatar-3637425_1280.png")
''';



