class Query {
  static const String user = "user";

  static const String createUserTable = '''CREATE TABLE $user(
    `id` INTEGER PRIMARY KEY AUTOINCREMENT,
    `username` VARCHAR(100) NOT NULL,
    `password` VARCHAR(200) NOT NULL,
    `name` VARCHAR(100) NOT NULL,
    `image` TEXT,
    `email` VARCHAR(50)
  )''';
}
