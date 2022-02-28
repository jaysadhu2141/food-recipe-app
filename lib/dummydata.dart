import 'package:flutter/material.dart';
import './models/food.dart';
import './models/category.dart';

const DUMMY_CATEGORIES = const [
    Category(
      id: 'c1',
      title: 'Italian',
      color: Colors.purple,
),
    Category(
      id: 'c2',
      title: 'SouthIndian',
      color: Colors.orange,
    ),
    Category(
      id: 'c3',
      title: 'Chinese',
      color: Colors.green,
    ),
  Category(
    id: 'c4',
    title: 'Panjabi',
    color: Colors.red,
  ),
  Category(
    id: 'c5',
    title: 'Gujrati',
    color: Colors.yellow,
  ),
  Category(
    id: 'c6',
    title: 'snacks',
    color: Colors.cyan,
  ),
  Category(
    id: 'c7',
    title: 'Breackfast',
    color: Colors.pink,
  ),
  Category(
    id: 'c8',
    title: 'Kathiyawadi',
    color: Colors.indigo,
  ),
  Category(
    id: 'c9',
    title: 'Healthy',
    color: Colors.lightGreen,
  ),
];

const DUMMY_FOOD = const [
  Food(
    id:'f1',
    categories:['c3','c6',],
    title: 'Manchuriun Dry',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:'https://i0.wp.com/vegecravings.com/wp-content/uploads/2017/03/veg-manchurian-dry-recipe-step-by-step-instructions-10.jpg?w=1612&quality=65&strip=all&ssl=1',
    ingredients:['1/3 cup Maida (all purpose flour)',
                 '2 tablespoons Cornflour (corn starch)',
                 '3/4 cup grated Carrot',
                 '3/4 cup grated Cabbage',
                 '1/2 cup finely chopped Capsicum',
                 '3 tablespoons finely chopped Spring Onion',
                 '2 Green Chillies, finely chopped',
                 '1/4 teaspoon Pepper Powder For Spicy Sauté',
                 '1 medium Red Onion, diced',
                 '1/2 cup Green Capsicum (bell pepper), diced',
                 '1/2 tablespoon finely chopped Ginger',
                 '2 Green Chillies, slit and cut in halves',
                 '1/2 tablespoon finely chopped Garlic',
                 '2 tablespoons finely chopped Spring Onion',
                 '2 tablespoons Cooking Oil',
                 '1 tablespoons Soy Sauce',
                 '1/2 tablespoon Chilli Sauce',
                 '2 tablespoons Tomato Ketchup',
      ],
    steps:[
      '1. Take a medium size bowl, add grated carrot, grated cabbage, chopped capsicum, '
      'chopped green chilli and spring onion followed by 1 teaspoon oil, pepper powder, maida, cornflour and salt',
      '2. Mix all ingredients properly. Prepare small round balls from the mix. Do not add water in the mix for making balls, as water released by vegetables will be enough to bind them. ',
      'In case mix does not bind properly and small balls cannot be made, add some water in the mixture.',
      '3. Heat cooking oil in a pan. When oil is hot enough to deep fry, add and deep fry raw balls on medium ',
      'flame until they turn golden brown.',
      '4. Drain oil from cooked balls and transfer to plate having paper ',
      'towel spread on it (to remove excess oil from deep fried veg balls)',
      '5. Heat 2 tablespoons oil in a wok (wide mouthed, thin-bottomed pan) on high flame. Add diced onion, diced capsicum, green chilli, chopped ginger and chopped garlic and ',
      'sauté for 2-3 minutes or until they become slightly tender.',
      '6. Add soy sauce, tomato ketchup, chilli sauce and salt; mix well.',
      '7. Add fried manchurian balls and spring onion. ',
      'Toss and cook on high flame for 1-2 minutes.',
      '8. Best dry vegetable manchurian is ready.',
      ],
    duration:30,
    isGultenFree: false,
    isLactoseFree: true,
    isVegan: true,
    isVegetarian: true,
  ),
];