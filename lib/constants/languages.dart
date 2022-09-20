import '../view/models/language_model.dart';

class SkillsData {
  static List<LanguageModel> programmingLanguage = [
    LanguageModel('Dart', 'assets/programming language/Dart.png'),
    LanguageModel('JavaScript', 'assets/programming language/JavaScript.png'),
    LanguageModel('TypeScript', 'assets/programming language/TypeScript.png'),
  ];
  static List<LanguageModel> frontend = [
    LanguageModel('Flutter', 'assets/programming language/Flutter.png'),
    LanguageModel('Angular', 'assets/programming language/Angular.png'),
    LanguageModel('HTML5', 'assets/programming language/HTML5.png'),
    LanguageModel('CSS3', 'assets/programming language/CSS 3.png'),
    LanguageModel('Bootstrap', 'assets/programming language/Bootstrap.png'),
  ];
  static List<LanguageModel> backend = [
    LanguageModel('Node.js', 'assets/programming language/nodeJs.png'),
    LanguageModel('Express.js', 'assets/programming language/express js.png'),
    LanguageModel('Sequelize', 'assets/programming language/Sequelize ORM.png'),
    LanguageModel('PostgreSQL', 'assets/programming language/PostgreSQL.png'),
  ];
  static List<LanguageModel> others = [
    LanguageModel('Git', 'assets/programming language/Git.png')
  ];
}
