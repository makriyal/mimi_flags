import 'package:flutter/material.dart';

class ListsAndFunctions {
  static Color getColor(int order) {
    Color color;
    int remain = order % 7;
    switch (remain) {
      case 0:
        color = Colors.red;
        break;
      case 1:
        color = Colors.orange;
        break;
      case 2:
        color = Colors.yellow;
        break;
      case 3:
        color = Colors.green;
        break;
      case 4:
        color = Colors.blue;
        break;
      case 5:
        color = Colors.indigo;
        break;
      case 6:
        color = Color(0xff8000FF);
        break;
    }
    return color;
  }

  static int calculateCrossAxisCount(BuildContext context) {
    final smallestWidth = MediaQuery.of(context).size.shortestSide;
    if (smallestWidth >= 1200.0)
      return 8;
    else if (smallestWidth >= 800.0)
      return 4;
    else
      return 2;
  }

  static List<String> assetNames = <String>[
    'circle',
    'triangle',
    'sawtooth',
    'crescent',
    'star',
    'star_and_crescent',
    'dragon',
    'eagle',
    'human',
    'map',
    'plant',
    'diagonal',
    'key',
    'ship',
    'border',
    'saltire',
    'union_jack',
    'two_horizontal_stripes',
    'three_horizontal_stripes',
    'three_vertical_stripes',
    'nordic_cross',
    'two_vertical_stripes',
    'horizontal_four_stripes',
    'upper_left_star',
    'upper_left_sun',
    'lion',
    'yin_and_yang',
    'three_pieces',
    'wave',
    'pale',
    'hand',
    'sword',
    'crown',
    'castle',
    'pall',
    'crescent_and_sun',
    'pattern',
    'sun',
    'canton',
    'symmetric_cross',
    'stripes_on_up_and_bottom',
    'horizontal_thin_stripe',
    'horizontal_thick_stripe',
    'unequal_horizontal_three_stripes',
    'southern_cross',
    'many_horizontal_stripes',
    'two_stars',
  ];

  static List<String> titles = [
    'Flags With Circle',
    'Flags With Triangle',
    'Flags With Sawtooth',
    'Flags With Crescent',
    'Flags With Star',
    'Flags With Crescent and Star',
    'Flags With Dragon',
    'Flags With Eagle',
    'Flags With Human',
    'Flags With Map',
    'Flags With Plant',
    'Flags With Diagonals',
    'Flags With Key',
    'Flags With Ship',
    'Flags With Border',
    'Flags With Saltire',
    'Flags With Union Jack',
    'Flags With Two Horizontal Stripes',
    'Flags With Three Horizontal Stripes',
    'Flags With Three Vertical Stripes',
    'Flags With Nordic Cross',
    'Flags With Two Vertical Stripes',
    'Flags With Four Horizontal Stripes',
    'Flags With Star on Upper Left',
    'Flags With Sun on Upper Left',
    'Flags With Lion',
    'Flags With Yin and Yang',
    'Flags With Three Pieces',
    'Flags With Wave',
    'Flags With Pale',
    'Flags With Hand',
    'Flags With Sword',
    'Flags With Crown',
    'Flags With Castle',
    'Flags With Pall',
    'Flags With Cressent and Sun',
    'Flags With Pattern',
    'Flags With Sun',
    'Flags With Canton',
    'Flags With Symmetric Cross',
    'Flags With Stripes on Up and Bottom',
    'Flags With Horizontal Thin Stripe',
    'Flags With Horizontal Thick Stripe',
    'Flags With Unequal Horizontal Three Stripes',
    'Flags With Southern Cross',
    'Flags With Many Horizontal Stripes',
    'Flags With Two Stars',
  ];
//  static List<Color> colors = [
//    Colors.red,
//    Colors.orange,
//    Colors.yellow,
//    Colors.green,
//    Colors.blue,
//    Colors.indigo,
//    Color(0xff8000FF),
//    Colors.red,
//    Colors.orange,
//    Colors.yellow,
//    Colors.green,
//    Colors.blue,
//    Colors.indigo,
//    Color(0xff8000FF),
//    Colors.red,
//    Colors.orange,
//    Colors.yellow,
//    Colors.green,
//    Colors.blue,
//    Colors.indigo,
//    Color(0xff8000FF),
//    Colors.red,
//    Colors.orange,
//    Colors.yellow,
//    Colors.green,
//    Colors.blue,
//    Colors.indigo,
//    Color(0xff8000FF),
//    Colors.red,
//    Colors.orange,
//    Colors.yellow,
//    Colors.green,
//    Colors.blue,
//    Colors.indigo,
//    Color(0xff8000FF),
//    Colors.red,
//  ];
  static List<String> circle = [
    "Bangladesh",
    "Belize",
    "Brazil",
    "Burundi",
    "Christmas Island",
    "Caribbean Netherlands",
    "Cocos Islands",
    "Costa Rica",
    "Dominica",
    "Ethiopia",
    "French Polynesia",
    "Greenland",
    "Grenada",
    "Guadeloupe",
    "India",
    "Japan",
    "Kazakhstan",
    "Kyrgyzstan",
    "North Korea",
    "South Korea",
    "Laos",
    "New Caledonia",
    "Niger",
    "North Macedonia",
    "Northern Mariana Islands",
    "Palau",
    "Paraguay",
    "Portugal",
    "Tunisia",
    "Uganda"
  ];

  static List<String> triangle = [
    "Antigua and Barbuda",
    "American Samoa",
    "Bahamas",
    "Bosnia and Herzegovina",
    "Comoros",
    "Cuba",
    "Czechia",
    "Djibouti",
    "El Salvador",
    "Eritrea",
    "Equatorial Guinea",
    "Guyana",
    "Israel",
    "Jamaica",
    "Jordan",
    "Mozambique",
    "Palestine",
    "Philippines",
    "Puerto Rico",
    "Reunion",
    "Sao Tome and Principe",
    "Saint Lucia",
    "Sint Maarten",
    "Seychelles",
    "South Africa",
    "South Sudan",
    "Sudan",
    "Timor-Leste",
    "Vanuatu",
    "Western Sahara",
    "Zimbabwe"
  ];

  static List<String> sawtooth = ["Bahrain", "Nepal", "Qatar"];

  static List<String> crescent = [
    "Algeria",
    "Azerbaijan",
    "Brunei",
    "Cocos Islands",
    "Comoros",
    "Croatia",
    "Libya",
    "Malaysia",
    "Maldives",
    "Mauritania",
    "Mayotte",
    "Moldova",
    "Mongolia",
    "Nepal",
    "Pakistan",
    "Singapore",
    "Tunisia",
    "Turkey",
    "Turkish Republic of Northern Cyprus",
    "Turkmenistan",
    "Uzbekistan",
    "Western Sahara"
  ];

  static List<String> star = [
    "Algeria",
    "Angola",
    "Aruba",
    "Australia",
    "Azerbaijan",
    "Bosnia and Herzegovina",
    "Burkina Faso",
    "Brazil",
    "Burundi",
    "Cameroon",
    "Cape Verde",
    "Caribbean Netherlands",
    "Cayman Islands",
    "Central African Republic",
    "Chile",
    "China",
    "Christmas Island",
    "Cocos Islands",
    "Comoros",
    "DR Congo",
    "Cook Islands",
    "Costa Rica",
    "Croatia",
    "Cuba",
    "Curacao",
    "Djibouti",
    "Dominica",
    "Equatorial Guinea",
    "Ethiopia",
    "French Guiana",
    "French Southern and Antarctic Lands",
    "Ghana",
    "Grenada",
    "Guinea-Bissau",
    "Heard Island and McDonald Islands",
    "Honduras",
    "Hong Kong",
    "Israel",
    "Jordan",
    "North Korea",
    "Kosovo",
    "Liberia",
    "Libya",
    "Macau",
    "Malaysia",
    "Marshall Islands",
    "Mauritania",
    "Micronesia",
    "Moldova",
    "Morocco",
    "Mozambique",
    "Myanmar",
    "Nauru",
    "New Zealand",
    "Niue",
    "Northern Ireland",
    "Northern Mariana Islands",
    "Pakistan",
    "Panama",
    "Papua New Guinea",
    "Paraguay",
    "Philippines",
    "Puerto Rico",
    "Saint Kitts and Nevis",
    "Samoa",
    "Sao Tome and Principe",
    "Senegal",
    "Singapore",
    "Slovenia",
    "Solomon Islands",
    "Somalia",
    "South Sudan",
    "Suriname",
    "Syria",
    "Tajikistan",
    "Timor-Leste",
    "Togo",
    "Tokelau",
    "Tunisia",
    "Turkey",
    "Turkmenistan",
    "Tuvalu",
    "United States",
    "United States Minor Outlying Islands",
    "Uzbekistan",
    "Venezuela",
    "Vietnam",
    "Western Sahara",
    "Zimbabwe",
    "Croatia",
    "Turkish Republic of Northern Cyprus"
  ];

  static List<String> star_and_crescent = [
    "Algeria",
    "Azerbaijan",
    "Cocos Islands",
    "Comoros",
    "Croatia",
    "Libya",
    "Malaysia",
    "Mauritania",
    "Pakistan",
    "Singapore",
    "Tunisia",
    "Turkey",
    "Turkish Republic of Northern Cyprus",
    "Turkmenistan",
    "Uzbekistan",
    "Western Sahara"
  ];

  static List<String> dragon = ["Bhutan", "Malta", "Wales"];

  static List<String> eagle = [
    "Albania",
    "American Samoa",
    "Egypt",
    "Kazakhstan",
    "Mexico",
    "Moldova",
    "Montenegro",
    "Serbia",
    "United States Virgin Islands",
    "Zambia"
  ];

  static List<String> human = [
    "Belize",
    "Montserrat",
    "British Virgin Islands",
    "Malta"
  ];

  static List<String> map = [
    "Antarctica",
    "Christmas Island",
    "Cyprus",
    "Kosovo",
    "Tuvalu"
  ];

  static List<String> plants = [
    "Belize",
    "British Indian Ocean Territory",
    "Canada",
    "Cayman Islands",
    "Cocos Islands",
    "Cyprus",
    "Dominican Republic",
    "Ecuador",
    "El Salvador",
    "Equatorial Guinea",
    "Eritrea",
    "Fiji",
    "Grenada",
    "Guadeloupe",
    "Guam",
    "Guatemala",
    "Haiti",
    "Hong Kong",
    "Lebanon",
    "Macau",
    "Mexico",
    "Moldova",
    "Norfolk Island",
    "Paraguay",
    "Pitcairn Islands",
    "Saint Barthelemy",
    "San Marino",
    "Sint Maarten",
    "South Georgia",
    "Vanuatu",
    "United States Virgin Islands"
  ];

  static List<String> diagonal = [
    "Marshall Islands",
    "Namibia",
    "Papua New Guinea",
    "Saint Kitts and Nevis",
    "Seychelles",
    "Solomon Islands",
    "Tanzania",
    "Trinidad and Tobago",
    "French Guiana",
    "Brunei",
    "Bhutan",
    "Caribbean Netherlands",
    "Christmas Island",
    "Republic of the Congo",
    "DR Congo"
  ];
  static List<String> key = ["Gibraltar", "Vatican City"];
  static List<String> ship = [
    "Bermuda",
    "Belize",
    "Costa Rica",
    "Ecuador",
    "Falkland Islands",
    "Guam",
    "Saint Helena, Ascension and Tristan da Cunha",
    "Saint Pierre and Miquelon"
  ];
  static List<String> border = [
    "Guam",
    "Grenada",
    "Maldives",
    "Montenegro",
    "Nepal",
    "Sri Lanka"
  ];
  static List<String> saltire = [
    "Burundi",
    "Jamaica",
    "Jersey",
    "Scotland",
    "United Kingdom"
  ];
  static List<String> union_jack = [
    "Anguilla",
    "Australia",
    "Bermuda",
    "British Indian Ocean Territory",
    "British Virgin Islands",
    "Cayman Islands",
    "Cook Islands",
    "Falkland Islands",
    "Fiji",
    "Heard Island and McDonald Islands",
    "Montserrat",
    "Niue",
    "New Zealand",
    "Pitcairn Islands",
    "Saint Helena, Ascension and Tristan da Cunha",
    "South Georgia",
    "Turks and Caicos Islands"
  ];
  static List<String> two_horizontal_stripes = [
    "Angola",
    "Belarus",
    "Benin",
    "Burkina Faso",
    "Chile",
    "Czechia",
    "Djibouti",
    "Greenland",
    "Guinea-Bissau",
    "Haiti",
    "Indonesia",
    "Liechtenstein",
    "Madagascar",
    "Monaco",
    "Philippines",
    "Poland",
    "San Marino",
    "Singapore",
    "Sint Maarten",
    "Ukraine",
    "Wales"
  ];
  static List<String> three_horizontal_stripes = [
    "Argentina",
    "Armenia",
    "Austria",
    "Azerbaijan",
    "Bahamas",
    "Bolivia",
    "Bulgaria",
    "Cambodia",
    "Colombia",
    "Croatia",
    "Ecuador",
    "Egypt",
    "El Salvador",
    "Equatorial Guinea",
    "Estonia",
    "Ethiopia",
    "French Polynesia",
    "Gabon",
    "Ghana",
    "Germany",
    "Honduras",
    "Hungary",
    "India",
    "Iran",
    "Iraq",
    "Jordan",
    "Kuwait",
    "Laos",
    "Latvia",
    "Lebanon",
    "Lesotho",
    "Libya",
    "Lithuania",
    "Luxembourg",
    "Malawi",
    "Myanmar",
    "Netherlands",
    "New Caledonia",
    "Niger",
    "Nicaragua",
    "Oman",
    "Palestine",
    "Paraguay",
    "Russia",
    "Rwanda",
    "Sao Tome and Principe",
    "Serbia",
    "Sierra Leone",
    "Slovakia",
    "Slovenia",
    "Spain",
    "Sudan",
    "Syria",
    "Tajikistan",
    "United Arab Emirates",
    "Venezuela",
    "Yemen",
    "Western Sahara",
    "Kurdistan Region"
  ];
  static List<String> three_vertical_stripes = [
    "Afghanistan",
    "Andorra",
    "Barbados",
    "Belgium",
    "Cameroon",
    "Chad",
    "Cote d'Ivoire (Ivory Coast)",
    "France",
    "Guatemala",
    "Guinea",
    "Ireland",
    "Italy",
    "Mali",
    "Mexico",
    "Moldova",
    "Mongolia",
    "Nigeria",
    "Norfolk Island",
    "Peru",
    "Romania",
    "Saint Martin",
    "Senegal",
  ];
  static List<String> nordic_cross = [
    "Aland Islands",
    "Bouvet Island",
    "Denmark",
    "Faroe Islands",
    "Finland",
    "Iceland",
    "Norway",
    "Svalbard and Jan Mayen",
    "Sweden"
  ];
  static List<String> two_vertical_stripes = [
    "Algeria",
    "Malta",
    "Portugal",
    "Vatican City"
  ];
  static List<String> horizontal_four_stripes = [
    "Central African Republic",
    "Comoros",
    "Mauritius"
  ];
  static List<String> upper_left_star = [
    "Aruba",
    "Central African Republic",
    "Chile",
    "China",
    "DR Congo",
    "Curacao",
    "Liberia",
    "Malaysia",
    "Marshall Islands",
    "Panama",
    "Togo"
  ];
  static List<String> upper_left_sun = ["Namibia", "Taiwan", "Uruguay"];
  static List<String> lion = [
    "Bermuda",
    "Cayman Islands",
    "Fiji",
    "Jersey",
    "Montenegro",
    "Saint Pierre and Miquelon",
    "South Georgia",
    "Spain",
    "Sri Lanka"
  ];
  static List<String> yin_and_yang = ["Mongolia", "South Korea"];
  static List<String> three_pieces = [
    "Benin",
    "Chile",
    "Guinea-Bissau",
    "Madagascar"
  ];
  static List<String> wave = [
    "British Indian Ocean Territory",
    "Kiribati",
    "Saint Pierre and Miquelon"
  ];
  static List<String> pale = [
    "Canada",
    "Norfolk Island",
    "Saint Vincent and the Grenadines"
  ];
  static List<String> hand = [
    "Brunei",
    "Northern Ireland",
  ];
  static List<String> sword = [
    "Angola",
    "Guatemala",
    "Oman",
    "Saudi Arabia",
    "Sri Lanka",
  ];
  static List<String> crown = [
    "British Indian Ocean Territory",
    "Croatia",
    "Jersey",
    "Liechtenstein",
    "Montenegro",
    "Northern Ireland",
    "Saint Barthelemy",
    "San Marino",
    "Serbia",
    "Spain",
    "Tajikistan",
    "Vatican City",
  ];
  static List<String> castle = [
    "Gibraltar",
    "Portugal",
    "Saint Barthelemy",
    "San Marino",
    "Spain",
  ];
  static List<String> pall = ["Vanuatu", "South Africa"];
  // ignore: non_constant_identifier_names
  static List<String> cressent_and_sun = ["Mongolia", "Nepal"];
  static List<String> pattern = [
    "Belarus",
    "Kazakhstan",
    "Saint Pierre and Miquelon",
    "Turkmenistan"
  ];
  static List<String> sun = [
    "Antigua and Barbuda",
    "Argentina",
    "Bangladesh",
    "Costa Rica",
    "Ecuador",
    "Greenland",
    "Guadeloupe",
    "Japan",
    "India",
    "Kazakhstan",
    "Kiribati",
    "Kurdistan Region",
    "Kyrgyzstan",
    "Malawi",
    "Namibia",
    "Nepal",
    "Nicaragua",
    "Niger",
    "North Macedonia",
    "Rwanda",
    "Philippines",
    "Taiwan",
    "Uruguay"
  ];
  static List<String> canton = [
    "Chile",
    "Greece",
    "Liberia",
    "Malaysia",
    "Samoa",
    "Taiwan",
    "Togo",
    "Tonga",
    "United States",
    "United States Minor Outlying Islands",
    "Uruguay"
  ];
  static List<String> symmetric_cross = [
    "Dominica",
    "Dominican Republic",
    "England",
    "Georgia",
    "Guernsey",
    "Martinique",
    "Northern Ireland",
    "United Kingdom"
  ];
  static List<String> stripes_on_up_and_bottom = [
    "Belize",
    "Israel",
    "Mauritania",
    "North Korea",
    "Turkish Republic of Northern Cyprus",
  ];
  static List<String> horizontal_thin_stripe = [
    "Aruba",
    "Botswana",
    "Cape Verde",
    "Curacao",
    "Latvia",
    "Nauru",
  ];
  static List<String> horizontal_thick_stripe = [
    "Cambodia",
    "Costa Rica",
    "Eswatini",
    "French Polynesia",
    "North Korea",
    "Laos",
    "Lebanon",
    "Lesotho",
    "Libya",
    "Spain",
    "Suriname",
    "Tajikistan",
    "Thailand",
  ];
  static List<String> unequal_horizontal_three_stripes = [
    "Colombia",
    "Ecuador",
    "Rwanda"
  ];
  static List<String> southern_cross = [
    "Australia",
    "Christmas Island",
    "Cocos Islands",
    "Heard Island and McDonald Islands",
    "New Zealand",
    "Papua New Guinea",
    "Samoa",
  ];
  static List<String> many_horizontal_stripes = [
    "Greece",
    "Liberia",
    "Malaysia",
    "Uganda",
    "United States",
    "United States Minor Outlying Islands",
    "Uruguay",
    "Zimbabwe",
  ];
  static List<String> two_stars = [
    "Curacao",
    "Panama",
    "Saint Kitts and Nevis",
    "Sao Tome and Principe",
    "Syria",
  ];

  static List<List<String>> lists = [
    circle,
    triangle,
    sawtooth,
    crescent,
    star,
    star_and_crescent,
    dragon,
    eagle,
    human,
    map,
    plants,
    diagonal,
    key,
    ship,
    border,
    saltire,
    union_jack,
    two_horizontal_stripes,
    three_horizontal_stripes,
    three_vertical_stripes,
    nordic_cross,
    two_vertical_stripes,
    horizontal_four_stripes,
    upper_left_star,
    upper_left_sun,
    lion,
    yin_and_yang,
    three_pieces,
    wave,
    pale,
    hand,
    sword,
    crown,
    castle,
    pall,
    cressent_and_sun,
    pattern,
    sun,
    canton,
    symmetric_cross,
    stripes_on_up_and_bottom,
    horizontal_thin_stripe,
    horizontal_thick_stripe,
    unequal_horizontal_three_stripes,
    southern_cross,
    many_horizontal_stripes,
    two_stars,
  ];
}
