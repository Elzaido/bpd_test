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
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "I find that I often do one or more of the following: drive recklessly, engage in unsafe sex, abuse alcohol or drugs, binge eat, gamble or spend money recklessly",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "Sometimes when I'm stressed out - especially if someone has abandoned me - I can get very paranoid, feel myself \"spacing out\" or dissociate",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "I often idealize others, especially when I first meet them, and feel comfortable sharing the most intimate details. But I often think that these people don't care enough or aren't there enough for me",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I'm sometimes very angry, extremely sarcastic and bitter, and feel like I have a hard time controlling this anger",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I've engaged in self-mutilating, self-harm, or suicidal behaviors, gestures or threats",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I often experience a sudden shift in the way I look at myself and my life, and completely change my goals, values and career focus",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I'm often afraid that others will abandon or leave me - so I'll make frantic efforts to avoid this abandonment (even when it's not real)",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "My mood can shift between extreme periods of anxiety, depression or irritability in just a few hours or days",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "My views of others - especially those I care about - can shift dramatically and without any warning",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I would say most of my romantic relationships have been very intense - but not very stable",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I'm currently experiencing enough problems in this area of my life that it's negatively impacting my ability to go to school, work, be with friends or family, or have a romantic relationship",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  return list;
}

List<Question> getANXIETYQuestons() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "I find it very hard to unwind, relax or sit still",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "I have had stomach problems, such as feeling sick or stomach cramps",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "I have been irritable and easily become annoyed",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I have experienced shortness of breath",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I have felt dizzy and unsteady at times",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I have had difficulties with sleep (including waking early, finding it hard to go to sleep)",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I have felt panicked and overwhelmed by things in my life",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I have felt nervous and on edge",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I have had trembling hands",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I seem to be constantly worrying about things",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  return list;
}

List<Question> getADHDQuestons() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "I find it difficult finishing a task or project",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "I find it difficult to organize myself or a task",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "I find it difficult to remember appointments",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "If a task or project requires a lot of thought I will often delay in getting it started",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I find it difficult to sit still and often fidget or squirm",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I would describe myself as being 'on the go' and feel compelled to do things, as if driven by a motor'",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I find it hard to remain focused in group settings",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "My mind feels very cluttered and it is hard for me to concentrate on one thing at a time",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I make decisions quickly and fail to think through the consequences",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I am often irritable, with a short fuse",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "I have mood swings, sometimes feeling quite high, other times low",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I often miss what is being said to me in conversations",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  return list;
}

List<Question> getDepressionQuestons() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "I feel overwhelmingly sad at times",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "When I think of the future I feel hopeless",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "I feel like a complete failure",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I get a lot of satisfaction / joy from doing things",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I feel guilty about something most of the time",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I feel like I am being punished",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I feel disappointed (even disgusted) with myself",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "The bad things in my life aren’t all my fault",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I am often on the brink of tears or cry",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I feel irritated and annoyed by things in my life",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "I am very interested in other people’s lives and like to listen to them",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "I find it easy to make decisions, big and small",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "I think I am unattractive or ugly",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I find it really hard to do anything, especially work",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "My sleep patterns have been really disrupted",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I am so tired I don’t have the energy to do anything",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "My appetite has changed a lot",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I have lost a lot of weight",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I am very concerned, even preoccupied, with my physical health",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I have thought about ending my life",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  return list;
}

List<Question> getOCDQuestons() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "I have saved up so many things that they get in the way.",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I check things more often than necessary.",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I get upset if objects are not arranged properly.",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I feel compelled to count while I am doing things.",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I find it difficult to touch an object when I know it has been touched by strangers or certain people.",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I find it difficult to control my own thoughts.",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I collect things I don’t need.",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I repeatedly check doors, windows, drawers, etc.",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "I get upset if others change the way I have arranged things.",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "I feel I have to repeat certain numbers.",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "I sometimes have to wash or clean myself simply because I feel contaminated.",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I am upset by unpleasant thoughts that come into my mind against my will.",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I avoid throwing things away because I am afraid I might need them later",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I repeatedly check gas and water taps and light switches after turning them off.",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I need things to be arranged in a particular way.",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I feel that there are good and bad numbers",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I wash my hands more often and longer than necessary.",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I frequently get nasty thoughts and have difficulty in getting rid of them.",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  return list;
}

List<Question> getPTSDQuestons() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "Any reminder brought back feelings about the event/s",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "I had trouble staying asleep",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "Other things kept making me think about it",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I felt irritable and angry",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I avoided letting myself get upset when I thought about it or was reminded of it",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I thought about the event when I didn't mean to",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I felt as if the event hadn't happened or it wasn't real",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I have stayed away from reminders about the situation",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "Images and pictures of the event pop into my mind",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I have been jumpy and easily startled",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "I have tried not to think about the situation",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "I am aware I have a lot of feelings about what happened but I haven’t dealt with them",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "I feel quite ‘numb’ about the situation",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I have found myself acting / feeling like I am back at the time of the event",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I have had trouble falling asleep",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I experience waves of strong feelings about the situation",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I have tried to remove the situation from my memory",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I have trouble concentrating on things I am supposed to do",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "Reminder of the event cause me to have physical reactions such as sweating, palpitations, panic attacks",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I have dreams about the situation",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "I feel on-guard and struggle to relax",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "I try not to talk about the situation",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  return list;
}

List<Question> getStressQuestons() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "I have found myself getting upset by quite trivial things",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "I have been aware of dryness of my mouth",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "I have experienced breathing difficulties",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I have tended to overreact to situations",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I have felt Shakey – like my legs are going to give way",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I have found myself getting upset easily",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I have found myself getting impatient when I have been delayed in any way",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I have experienced sweaty palms or perspiration for no physical reasons",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I have felt scared or nervous for no good reason",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I have been aware of my heart rate, even when I am not exercising",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "I have been very irritable",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "I have been close to panic",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "I have found it hard to calm down after something has upset me",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "It has been difficult for me to tolerate interruptions to what I was doing",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I have had a sense of nervous tension – like being on edge all the time",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I am worried I will panic and make a fool of myself",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  return list;
}

List<Question> getBingeEatingDisorderQuestons() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "I feel very self-conscious about my weight and body size – it stops me from socializing",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "I eat meals much more quickly than others and seem to eat a lot more than others as well",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "I feel in control of how much I eat",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I often feel desperate that I can’t be more in control of what I eat",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "When I am bored I can’t help but eat, nothing can distract me",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I often eat, even though I am not hungry, because it is a habit",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "Sometimes I eat because I am ‘mouth’ hungry but I spit the food out, so I don’t put on weight",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I have strong feelings of self-hate or guilt if I overeat",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "It’s easy for me to get back on track with a diet or healthy eating regime",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "My life seems to be ‘feast’ or ‘famine’ with very little moderation",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "I often feel uncomfortably full after eating, even to the point of making myself sick",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "I eat about the same amount of food every day, I rarely ‘binge’",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "I feel in control of my urge to eat and can distract myself",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I will keep eating, even when I am full, and it has become uncomfortable",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "Sometimes I make myself sick because I am so uncomfortably full",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I feel so self-conscious eating around other people that I will only eat small amounts",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I eat three meals a day and don’t snack very often",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "Some days I will eat all day, with no defined meal times",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "Some days all I think about is food, I feel out of control",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I don’t know how physically hungry I really am and think I eat more than I need",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  return list;
}

List<Question> getAnorexiaQuestons() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "I am terrified of being overweight",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "I avoid eating when I am hungry",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "I find myself preoccupied with food",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I have eating binges where I feel I might not be able to stop",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I cut my food into small pieces before eating",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I know the calorie content of everything I eat",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I avoid foods high in carbohydrates",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "Others have said they want me to eat more",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I have made myself vomit after eating",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I feel extreme guilt after eating",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "I am preoccupied by my desire to be thinner",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "I think about burning up calories when I exercise",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "Other people think I am too thin",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I am preoccupied with the thought of having fat on my body",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I take longer to eat meals than other people do",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I avoid foods that are sugary",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I eat diet foods",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I feel that food controls my life",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I am self-controlled around food",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I feel that others pressure me to eat",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "I give a lot of time and thought to food",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I feel uncomfortable if I eat sweets",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I engage in dieting behavior",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I like my stomach to be empty",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I have the impulse to vomit after eating",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I like to try new, rich foods",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  return list;
}

List<Question> getBipolarQuestons() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "Sometimes I am much more talkative than at other time",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "I have periods where I feel wired or hyper and am really active",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "I have periods where I feel really irritable or speeded up",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I have had times where I am both depressed and elated at the same time",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "There are large variations in the quantity and quality of my work depending on my mood",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I have periods where I cry a great deal and then at other times I feel really happy and joke or laugh excessively",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I have times where I feel really optimistic about life and other times where I feel there is no hope",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "There are times where I have a lot more interest in sex than at other times",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "At times I feel really angry and hostile",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "I have periods of mental dullness and other periods of very creative thinking",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "At times I am very sociable and other times I just want to be left alone",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  return list;
}

List<Question> getPanicAttackQuestons() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "Do you have episodes where you feel so fearful that you become afraid that you might completely lose it?",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "Do you have episodes where you feel so afraid that you feel like you could have a complete mental breakdown?",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  list.add(Question(
    "Do you have episodes where you feel like you are completely freaking out?",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "When you are nervous or afraid, do you have episodes where you experience uncontrollable trembling or shaking?",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "Do you have episodes where you are so afraid that you think you might pass out?",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "Do you have episodes of being really afraid for no apparent reason?",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "Do you have episodes where you become so afraid that your heart beats fast and hard, you sweat, and you feel weak in the knees?",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "Do you have episodes of anxiety and fear that you can't seem to control?",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "Have you ever worried yourself into a panic attack (a very frightened state)?",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));
  list.add(Question(
    "Have you ever freaked yourself out, and then couldn't stop yourself from being afraid?",
    [
      Answer("Never", 0),
      Answer("Rarely", 25),
      Answer("Sometimes", 50),
      Answer("Often", 75),
      Answer("Very often", 100),
    ],
  ));

  return list;
}
