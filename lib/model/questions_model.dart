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
    questionText:
        'When was the maiden event for GDG OGBOMOSO and what\'s the theme?',
    answers: [
      {'text': '', 'score': 0},
      {'text': '30th Feb, 2019. Theme: How to make money in tech', 'score': 0},
      {
        'text':
            '26th Jan, 2019. Theme: First step into building a sustainable tech community ',
        'score': 10
      },
      {
        'text':
            '26th Jan, 2019. Theme: Building a scable application with Google technology',
        'score': 0
      },
      {
        'text':
            '23th Feb, 2019. Theme: First step into building a sustainable tech community ',
        'score': 0
      },
    ],
  ),
  QuestionModel(
    questionText: 'What is GDG Ogbomoso Objectives?',
    answers: [
      {'text': '', 'score': 0},
      {'text': 'How to be relevant in trending technologies', 'score': 0},
      {'text': 'To make money', 'score': 0},
      {
        'text':
            "It's a group of like-minded developers using Google's product to solve problems. It is a group to share ideas and network",
        'score': 10
      },
      {'text': 'To make friends together 🙂', 'score': 0},
    ],
  ),
  QuestionModel(
    questionText: 'Full meaning of GDG',
    answers: [
      {'text': '', 'score': 0},
      {'text': 'Google Developer Groups', 'score': 10},
      {'text': 'Google Degree Ghost', 'score': 0},
      {'text': 'Group Developer Google', 'score': 0},
      {'text': 'Gambling Dope Gang', 'score': 0},
    ],
  ),
  QuestionModel(
    questionText: 'How many past events as GDG Ogbomoso organized as at today?',
    answers: [
      {'text': '', 'score': 0},
      {'text': '26 events', 'score': 0},
      {'text': '25 events', 'score': 0},
      {'text': '24 events', 'score': 0},
      {'text': '23 events', 'score': 10},
    ],
  ),
  QuestionModel(
    questionText:
        'Which Workshop is GDG Ogbomoso hosting in it\'s Flutter Festival',
    answers: [
      {'text': '', 'score': 0},
      {'text': 'How to build a quiz application', 'score': 0},
      {'text': 'Building your first flutter App', 'score': 10},
      {'text': 'Building your second flutter app', 'score': 0},
      {'text': 'How to become a GDE in Flutter', 'score': 0},
    ],
  ),
  QuestionModel(
    questionText: 'GDG Ogbomoso started how many years ago?',
    answers: [
      {'text': '', 'score': 0},
      {'text': '3years ago.', 'score': 10},
      {'text': '2years ago.', 'score': 0},
      {'text': '1years ago.', 'score': 0},
      {'text': '5years ago.', 'score': 0},
    ],
  ),
  QuestionModel(
    questionText: 'What\'s the leadership team of GDG Ogbomoso refered to.',
    answers: [
      {'text': '', 'score': 0},
      {'text': 'Facilitators', 'score': 0},
      {'text': 'Organizer\'s', 'score': 10},
      {'text': 'Founders', 'score': 0},
      {'text': 'Coordinators', 'score': 0},
    ],
  ),
  QuestionModel(
    questionText: 'Who are the core members of GDG Ogbomoso?',
    answers: [
      {'text': '', 'score': 0},
      {'text': 'UI students', 'score': 0},
      {'text': 'Ladokite(LAUTECH Students)', 'score': 10},
      {'text': 'Ogbomosho Tech bros', 'score': 0},
      {'text': 'Oyo state tech community', 'score': 0},
    ],
  ),
  QuestionModel(
    questionText: 'What\'s the full meaning of LAUTECH.',
    answers: [
      {'text': '', 'score': 0},
      {'text': 'Laolu Akintola University Of Technology.', 'score': 0},
      {'text': 'Ladoja Akintade University Of Technology.', 'score': 0},
      {'text': 'Ladoke Akintola University Of Technology.', 'score': 10},
      {'text': 'Lasisi Akintope University Of Technology.', 'score': 0},
    ],
  ),
  QuestionModel(
    questionText: 'List the first two GDG Ogbomoso event theme ',
    answers: [
      {'text': '', 'score': 0},
      {
        'text': '''
i. Cloud Study Jam 2019.
ii. Google I/O Extended 2019''',
        'score': 0
      },
      {
        'text': '''
i. First step into building a sustainable tech community 
ii. IWD Ogbomoso 2019 ''',
        'score': 10
      },
      {
        'text': '''
i. Code and Coffee 
ii. Greet and meet ''',
        'score': 0
      },
    ],
  ),
  QuestionModel(
    questionText: 'Who created Flutter?',
    answers: [
      {'text': '', 'score': 0},
      {'text': 'Facebook', 'score': 0},
      {'text': 'Adobe', 'score': 0},
      {'text': 'Google', 'score': 10},
      {'text': 'Microsoft', 'score': 0},
    ],
  ),
  QuestionModel(
    questionText: 'What is Flutter?',
    answers: [
      {'text': '', 'score': 0},
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
      {'text': '', 'score': 0},
      {'text': 'Ruby', 'score': 0},
      {'text': 'Dart', 'score': 10},
      {'text': 'C++', 'score': 0},
      {'text': 'Kotlin', 'score': 0},
    ],
  ),
  QuestionModel(
    questionText: 'Who created Dart programing language?',
    answers: [
      {'text': '', 'score': 0},
      {'text': 'Lars Bak and Kasper Lund', 'score': 10},
      {'text': 'Brendan Eich', 'score': 0},
      {'text': 'Bjarne Stroustrup', 'score': 0},
      {'text': 'Jeremy Ashkenas', 'score': 0},
    ],
  ),
  QuestionModel(
    questionText: 'Is Flutter for Web and Desktop available in stable version?',
    answers: [
      {'text': '', 'score': 0},
      {'text': 'Yes', 'score': 0},
      {'text': 'No', 'score': 10},
    ],
  ),
];
