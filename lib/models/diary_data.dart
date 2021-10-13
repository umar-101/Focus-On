class Diary {
  final String title;
  final String svgSrc;
  final String calories;

  Diary({this.title, this.svgSrc, this.calories});
}

List<Diary> diaries = [
  Diary(
    title: 'Breakfast',
    svgSrc: 'assets/icons/breakfast.svg',
    calories: '200cals',
  ),
  Diary(
    title: 'Lunch',
    svgSrc: 'assets/icons/clutery-for-lunch.svg',
    calories: '200cals',
  ),
  Diary(
    title: 'Dinner',
    svgSrc: 'assets/icons/hot-food.svg',
    calories: '200cals',
  ),
  Diary(
    title: 'Snacks',
    svgSrc: 'assets/icons/fruits.svg',
    calories: '200cals',
  ),
  Diary(
    title: 'Water',
    svgSrc: 'assets/icons/water-bottle (1).svg',
    calories: '200cals',
  ),
];
