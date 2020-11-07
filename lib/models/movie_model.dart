class Movie {
  String imageUrl;
  String title;
  String categories;
  int year;
  String country;
  int length;
  String description;
  List<String> screenshots;

  Movie({
    this.imageUrl,
    this.title,
    this.categories,
    this.year,
    this.country,
    this.length,
    this.description,
    this.screenshots,
  });
}

final List<Movie> movies = [
  Movie(
    imageUrl: 'assets/images/orangeis_0.jpg',
    title: 'Orange Is the New Black',
    categories: 'Comedy, Drama',
    year: 2013,
    country: 'USA',
    length: 60,
    description:
        'A crime she committed in her youthful past sends Piper Chapman to a womens prison, where she trades her comfortable New York life for one of unexpected camaraderie and conflict in an eccentric group of fellow inmates.',
    screenshots: [
      'assets/images/orangeis.jpg',
      'assets/images/orangeis_1.jpg',
      'assets/images/orangeis_2.jpg',
    ],
  ),
  Movie(
    imageUrl: 'assets/images/dark_0.jpg',
    title: 'Dark',
    categories: 'Sci-Fi & Fantasy, Drama, Mystery, Crime.',
    year: 2018,
    country: 'USA',
    length: 53,
    description:
        'A missing child causes four families to help each other for answers. What they could not imagine is that this mystery would be connected to innumerable other secrets of the small town.',
    screenshots: [
      'assets/images/dark.jpg',
      'assets/images/dark_1.jpg',
      'assets/images/dark_2.jpg',
    ],
  ),
  Movie(
    imageUrl: 'assets/images/lacasa_0.jpg',
    title: 'La casa de papel',
    categories: 'Crime, Drama',
    year: 2017,
    country: 'USA',
    length: 70,
    description:
        'To carry out the biggest heist in history, a mysterious man called The Professor recruits a band of eight robbers who have a single characteristic: none of them has anything to lose. Five months of seclusion - memorizing every step, every detail, every probability - culminate in eleven days locked up in the National Coinage and Stamp Factory of Spain, surrounded by police forces and with dozens of hostages in their power, to find out whether their suicide wager will lead to everything or nothing',
    screenshots: [
      'assets/images/lacasa.jpg',
      'assets/images/lacasa_1.jpg',
      'assets/images/lacasa_2.jpg',
    ],
  ),
];

final List<String> labels = [
  'New',
  'Discover',
  'Popular',
  'Specials',
];

final List<String> myList = [
  'assets/images/emilyinparis.jpg',
  'assets/images/thekissing.jpg',
  'assets/images/twd.jpg',
  'assets/images/blackmirror.jpg',
  'assets/images/strangerthings.jpg',
];

final List<String> popular = [
  'assets/images/daredevil.jpg',
  'assets/images/endgame.jpg',
  'assets/images/stranger_things.jpg',
  'assets/images/oitnb.jpg',
];
