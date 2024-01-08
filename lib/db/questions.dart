class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  int persentage = 0;
  Answer(this.answerText, this.persentage);
}

List<Question> getBPDQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "I nearly always feel 'empty'",
    [
      Answer("Strongly disagree", 0),
      Answer("Disagree", 25),
      Answer("Neutral / Mixed feeling", 50),
      Answer("Agree", 75),
      Answer("Strongly agree", 100),
    ],
  ));

  list.add(Question(
    "I find that I often do one or more of the following: drive recklessly, engage in unsafe sex, abuse alcohol or drugs, binge eat, gamble or spend money recklessly",
    [
      Answer("Strongly disagree", 0),
      Answer("Disagree", 25),
      Answer("Neutral / Mixed feeling", 50),
      Answer("Agree", 75),
      Answer("Strongly agree", 100),
    ],
  ));

  list.add(Question(
    "Sometimes when I'm stressed out - especially if someone has abandoned me - I can get very paranoid, feel myself \"spacing out\" or dissociate",
    [
      Answer("Strongly disagree", 0),
      Answer("Disagree", 25),
      Answer("Neutral / Mixed feeling", 50),
      Answer("Agree", 75),
      Answer("Strongly agree", 100),
    ],
  ));

  list.add(Question(
    "I often idealize others, especially when I first meet them, and feel comfortable sharing the most intimate details. But I often think that these people don't care enough or aren't there enough for me",
    [
      Answer("Strongly disagree", 0),
      Answer("Disagree", 25),
      Answer("Neutral / Mixed feeling", 50),
      Answer("Agree", 75),
      Answer("Strongly agree", 100),
    ],
  ));
  list.add(Question(
    "I'm sometimes very angry, extremely sarcastic and bitter, and feel like I have a hard time controlling this anger",
    [
      Answer("Strongly disagree", 0),
      Answer("Disagree", 25),
      Answer("Neutral / Mixed feeling", 50),
      Answer("Agree", 75),
      Answer("Strongly agree", 100),
    ],
  ));
  list.add(Question(
    "I've engaged in self-mutilating, self-harm, or suicidal behaviors, gestures or threats",
    [
      Answer("Strongly disagree", 0),
      Answer("Disagree", 25),
      Answer("Neutral / Mixed feeling", 50),
      Answer("Agree", 75),
      Answer("Strongly agree", 100),
    ],
  ));
  list.add(Question(
    "I often experience a sudden shift in the way I look at myself and my life, and completely change my goals, values and career focus",
    [
      Answer("Strongly disagree", 0),
      Answer("Disagree", 25),
      Answer("Neutral / Mixed feeling", 50),
      Answer("Agree", 75),
      Answer("Strongly agree", 100),
    ],
  ));
  list.add(Question(
    "I'm often afraid that others will abandon or leave me - so I'll make frantic efforts to avoid this abandonment (even when it's not real)",
    [
      Answer("Strongly disagree", 0),
      Answer("Disagree", 25),
      Answer("Neutral / Mixed feeling", 50),
      Answer("Agree", 75),
      Answer("Strongly agree", 100),
    ],
  ));
  list.add(Question(
    "My mood can shift between extreme periods of anxiety, depression or irritability in just a few hours or days",
    [
      Answer("Strongly disagree", 0),
      Answer("Disagree", 25),
      Answer("Neutral / Mixed feeling", 50),
      Answer("Agree", 75),
      Answer("Strongly agree", 100),
    ],
  ));
  list.add(Question(
    "My views of others - especially those I care about - can shift dramatically and without any warning",
    [
      Answer("Strongly disagree", 0),
      Answer("Disagree", 25),
      Answer("Neutral / Mixed feeling", 50),
      Answer("Agree", 75),
      Answer("Strongly agree", 100),
    ],
  ));
  list.add(Question(
    "I would say most of my romantic relationships have been very intense - but not very stable",
    [
      Answer("Strongly disagree", 0),
      Answer("Disagree", 25),
      Answer("Neutral / Mixed feeling", 50),
      Answer("Agree", 75),
      Answer("Strongly agree", 100),
    ],
  ));
  list.add(Question(
    "I'm currently experiencing enough problems in this area of my life that it's negatively impacting my ability to go to school, work, be with friends or family, or have a romantic relationship",
    [
      Answer("Strongly disagree", 0),
      Answer("Disagree", 25),
      Answer("Neutral / Mixed feeling", 50),
      Answer("Agree", 75),
      Answer("Strongly agree", 100),
    ],
  ));

  return list;
}
