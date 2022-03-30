class QuestionModel {
  final String questionText;
  final List<Map<String, Object>> answers;

  QuestionModel({
    required this.answers,
    required this.questionText,
  });
}

List<QuestionModel> questions = [
  QuestionModel(
    questionText: 'Who created Flutter?',
    answers: [
      {'text': 'Facebook', 'score': 0},
      {'text': 'Adobe', 'score': 0},
      {'text': 'Google', 'score': 10},
      {'text': 'Microsoft', 'score': 0},
    ],
  ),
  QuestionModel(
    questionText: 'What is Flutter?',
    answers: [
      {'text': 'Android Development Kit', 'score': 0},
      {'text': 'IOS Development Kit', 'score': 0},
      {'text': 'Web Development Kit', 'score': 0},
      {
        'text':
            'SDK to build beautiful IOS, Android, Web & Desktop Native Apps',
        'score': 10
      },
    ],
  ),
  QuestionModel(
    questionText: 'Which programing language is used by Flutter',
    answers: [
      {'text': 'Ruby', 'score': 0},
      {'text': 'Dart', 'score': 10},
      {'text': 'C++', 'score': 0},
      {'text': 'Kotlin', 'score': 0},
    ],
  ),
  QuestionModel(
    questionText: 'Who created Dart programing language?',
    answers: [
      {'text': 'Lars Bak and Kasper Lund', 'score': 10},
      {'text': 'Brendan Eich', 'score': 0},
      {'text': 'Bjarne Stroustrup', 'score': 0},
      {'text': 'Jeremy Ashkenas', 'score': 0},
    ],
  ),
  QuestionModel(
    questionText: 'Is Flutter for Web and Desktop available in stable version?',
    answers: [
      {'text': 'Yes', 'score': 0},
      {'text': 'No', 'score': 10},
    ],
  ),
];

// 07054456682