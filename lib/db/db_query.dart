class Query {
  static const String user = "user";

  static const String createUserTable = '''CREATE TABLE $user(
    `id` INTEGER PRIMARY KEY AUTOINCREMENT,
    `username` VARCHAR(100) NOT NULL,
    `password` VARCHAR(200) NOT NULL,
    `name` VARCHAR(100) NOT NULL,
    `mobile` VARCHAR(15),
    `email` VARCHAR(50)
  )''';
}
