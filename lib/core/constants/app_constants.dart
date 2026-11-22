import 'package:flutter/material.dart';

const SizedBox kWidth10 = SizedBox(width: 10);
const SizedBox kHeight10 = SizedBox(height: 10);

const SizedBox kWidth20 = SizedBox(width: 20);
const SizedBox kHeight20 = SizedBox(height: 20);

const SizedBox kWidth30 = SizedBox(width: 30);
const SizedBox kHeight30 = SizedBox(height: 30);

const String noImageUrl =
    'https://thumbs.dreamstime.com/b/no-image-available-icon-flat-vector-no-image-available-icon-flat-vector-illustration-132482953.jpg';
const String netflixLogo = 'assets/images/netflix.png';
const String netflixDefaultProfileAvatar =
    'https://i.pinimg.com/564x/d7/19/6a/d7196adc7c4f353d52235c5e6ed12e65.jpg';

const String movieTitleLogo =
    'https://image.tmdb.org/t/p/original/8BtSxR3zu20GqXwGloGgdKtXWhZ.png';

const List posterImageUrl = [
  'https://image.tmdb.org/t/p/original/bjiS5ipwxb9JFy3XRRN4OAilSeX.jpg',
  'https://image.tmdb.org/t/p/original/i7UyjfPio0VFHB9rBUZSFyhOoM8.jpg',
  'https://image.tmdb.org/t/p/original/yBKMAIj7clP42UkFejhGDBBoTpb.jpg',
  'https://image.tmdb.org/t/p/original/kNxRgcTeqeU5jauBackTERoO2De.jpg',
  'https://image.tmdb.org/t/p/original/tcdYFkuqUU3DrW7mdgj81VfPuFB.jpg',
  'https://image.tmdb.org/t/p/original/dJPT2Uf12X6aFg8i5N67NTpIZ9t.jpg',
  'https://image.tmdb.org/t/p/original/jv2f95V6WVpgJIC1lJOG9cz8rr4.jpg',
  'https://image.tmdb.org/t/p/original/nDDVzQfv95PGwj9nV2fJvUrkcvU.jpg',
  'https://image.tmdb.org/t/p/original/1q7q8mNZnuVmnPvh9Eu0jCEszXv.jpg',
  'https://image.tmdb.org/t/p/original/kNxRgcTeqeU5jauBackTERoO2De.jpg',
  'https://image.tmdb.org/t/p/original/tcdYFkuqUU3DrW7mdgj81VfPuFB.jpg',
  'https://image.tmdb.org/t/p/original/pHyxb2RV5wLlboAwm9ZJ9qTVEDw.jpg',
  'https://image.tmdb.org/t/p/original/39wmItIWsg5sZMyRUHLkWBcuVCM.jpg',
  'https://image.tmdb.org/t/p/w1280/sr1Yoj6XLPTWYcbDoBy67xivW4I.jpg',
  'https://image.tmdb.org/t/p/original/bjiS5ipwxb9JFy3XRRN4OAilSeX.jpg',
  'https://image.tmdb.org/t/p/original/i7UyjfPio0VFHB9rBUZSFyhOoM8.jpg',
  'https://image.tmdb.org/t/p/original/yBKMAIj7clP42UkFejhGDBBoTpb.jpg',
  'https://image.tmdb.org/t/p/original/kNxRgcTeqeU5jauBackTERoO2De.jpg',
  'https://image.tmdb.org/t/p/original/tcdYFkuqUU3DrW7mdgj81VfPuFB.jpg',
  'https://image.tmdb.org/t/p/original/dJPT2Uf12X6aFg8i5N67NTpIZ9t.jpg',
  'https://image.tmdb.org/t/p/original/jv2f95V6WVpgJIC1lJOG9cz8rr4.jpg',
  'https://image.tmdb.org/t/p/original/nDDVzQfv95PGwj9nV2fJvUrkcvU.jpg',
  'https://image.tmdb.org/t/p/original/1q7q8mNZnuVmnPvh9Eu0jCEszXv.jpg',
  'https://image.tmdb.org/t/p/original/kNxRgcTeqeU5jauBackTERoO2De.jpg',
  'https://image.tmdb.org/t/p/original/tcdYFkuqUU3DrW7mdgj81VfPuFB.jpg',
  'https://image.tmdb.org/t/p/original/pHyxb2RV5wLlboAwm9ZJ9qTVEDw.jpg',
  'https://image.tmdb.org/t/p/original/39wmItIWsg5sZMyRUHLkWBcuVCM.jpg',
  'https://image.tmdb.org/t/p/w1280/sr1Yoj6XLPTWYcbDoBy67xivW4I.jpg',
];

const List posterHorizontalImageUrl = [
  'https://image.tmdb.org/t/p/original/pgirSzilULweZ9RsXLw1DjfNebw.jpg',
  'https://image.tmdb.org/t/p/original/5yzM78Tp8nYwSCQtyRcmnHmCn5C.jpg',
  'https://image.tmdb.org/t/p/original/k2CSBevTIqKSgBSZ087cLNawunn.jpg',
  'https://image.tmdb.org/t/p/original/vKIPhmBTOvIZkFNemcDJoqGxfKq.jpg',
  'https://image.tmdb.org/t/p/original/9qxyrJfjk577ym5WD6HCDmunoyO.jpg',
  'https://image.tmdb.org/t/p/original/2aA8iPlMCks3k131ymFBAY6FL0b.jpg',
  'https://image.tmdb.org/t/p/original/s4v0UX1anfXm0UvloLsTTJ4v222.jpg',
  'https://image.tmdb.org/t/p/original/bs32Ds4L8VADGjBVasSK1ASU7OW.jpg',
  'https://image.tmdb.org/t/p/original/o7Oy9Gbx1CCyaweL8xUhtMW4Puq.jpg',
  'https://image.tmdb.org/t/p/original/sS3zGYFPcfM5pArVNWl6qLyaSmU.jpg',
  'https://image.tmdb.org/t/p/original/j5PqG9rD0aUUIKEkGkWt7AaKnRa.jpg',
];

const List movieListTitles = [
  'Matchbox',
  'Animals',
  'Doctor X',
  'The Other Mommy',
  'Verity',
  'Backrooms',
  'Avengers: DoomsDay',
  'The Invite',
  'The Love Hypothesis',
  'Avatar: The Ang',
  'Fall 2',
];

const List<List> posterImageListOfList = [
  [
    'https://image.tmdb.org/t/p/original/bjiS5ipwxb9JFy3XRRN4OAilSeX.jpg',
    'https://image.tmdb.org/t/p/original/i7UyjfPio0VFHB9rBUZSFyhOoM8.jpg',
    'https://image.tmdb.org/t/p/original/yBKMAIj7clP42UkFejhGDBBoTpb.jpg',
    'https://image.tmdb.org/t/p/original/kNxRgcTeqeU5jauBackTERoO2De.jpg',
    'https://image.tmdb.org/t/p/original/tcdYFkuqUU3DrW7mdgj81VfPuFB.jpg',
    'https://image.tmdb.org/t/p/original/dJPT2Uf12X6aFg8i5N67NTpIZ9t.jpg',
  ],
  [
    'https://image.tmdb.org/t/p/original/jv2f95V6WVpgJIC1lJOG9cz8rr4.jpg',
    'https://image.tmdb.org/t/p/original/nDDVzQfv95PGwj9nV2fJvUrkcvU.jpg',
    'https://image.tmdb.org/t/p/original/1q7q8mNZnuVmnPvh9Eu0jCEszXv.jpg',
    'https://image.tmdb.org/t/p/original/kNxRgcTeqeU5jauBackTERoO2De.jpg',
    'https://image.tmdb.org/t/p/original/tcdYFkuqUU3DrW7mdgj81VfPuFB.jpg',
  ],

  [
    'https://image.tmdb.org/t/p/original/pHyxb2RV5wLlboAwm9ZJ9qTVEDw.jpg',
    'https://image.tmdb.org/t/p/original/39wmItIWsg5sZMyRUHLkWBcuVCM.jpg',
    'https://image.tmdb.org/t/p/w1280/sr1Yoj6XLPTWYcbDoBy67xivW4I.jpg',
    'https://image.tmdb.org/t/p/original/kNxRgcTeqeU5jauBackTERoO2De.jpg',
    'https://image.tmdb.org/t/p/original/tcdYFkuqUU3DrW7mdgj81VfPuFB.jpg',
  ],
  [
    'https://image.tmdb.org/t/p/original/pHyxb2RV5wLlboAwm9ZJ9qTVEDw.jpg',
    'https://image.tmdb.org/t/p/original/39wmItIWsg5sZMyRUHLkWBcuVCM.jpg',
    'https://image.tmdb.org/t/p/w1280/sr1Yoj6XLPTWYcbDoBy67xivW4I.jpg',
    'https://image.tmdb.org/t/p/original/kNxRgcTeqeU5jauBackTERoO2De.jpg',
    'https://image.tmdb.org/t/p/original/tcdYFkuqUU3DrW7mdgj81VfPuFB.jpg',
  ],
];


final dummyVideoUrl = [
  'https://file-examples.com/storage/fe1fa0a90c6afae849bf17f/2017/04/file_example_MP4_480_1_5MG.mp4',
  'https://file-examples.com/storage/fe1fa0a90c6afae849bf17f/2017/04/file_example_MP4_480_1_5MG.mp4',
  'https://file-examples.com/storage/fe1fa0a90c6afae849bf17f/2017/04/file_example_MP4_480_1_5MG.mp4',
  'https://file-examples.com/storage/fe1fa0a90c6afae849bf17f/2017/04/file_example_MP4_480_1_5MG.mp4',
  'https://file-examples.com/storage/fe1fa0a90c6afae849bf17f/2017/04/file_example_MP4_480_1_5MG.mp4',
  'https://file-examples.com/storage/fe1fa0a90c6afae849bf17f/2017/04/file_example_MP4_480_1_5MG.mp4',
  'https://file-examples.com/storage/fe1fa0a90c6afae849bf17f/2017/04/file_example_MP4_480_1_5MG.mp4',
  'https://file-examples.com/storage/fe1fa0a90c6afae849bf17f/2017/04/file_example_MP4_480_1_5MG.mp4',
  'https://file-examples.com/storage/fe1fa0a90c6afae849bf17f/2017/04/file_example_MP4_480_1_5MG.mp4',
  'https://file-examples.com/storage/fe1fa0a90c6afae849bf17f/2017/04/file_example_MP4_480_1_5MG.mp4',
  'https://file-examples.com/storage/fe1fa0a90c6afae849bf17f/2017/04/file_example_MP4_480_1_5MG.mp4',
  'https://file-examples.com/storage/fe1fa0a90c6afae849bf17f/2017/04/file_example_MP4_480_1_5MG.mp4',

];