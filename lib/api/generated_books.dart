import '../models/book.dart';
import 'books.dart';

class GeneratedBooks {
  static final List<Book> allBooks = [
    // Fiction Books
    Book(
      title: 'The Great Gatsby',
      author: 'F. Scott Fitzgerald',
      coverUrl: 'lib/assets/images/great gosby.jpg',
      rating: 4.5,
      category: Category.fiction,
      description:
          'A story of decadence and excess, The Great Gatsby portrays the lives of wealthy New Yorkers during the Roaring Twenties.',
      pages: 180,
      language: 'English',
      publishedDate: '1925',
    ),
    Book(
      title: 'To Kill a Mockingbird',
      author: 'Harper Lee',
      coverUrl: 'lib/assets/images/mocking.jpg',
      rating: 4.8,
      category: Category.fiction,
      description:
          'A story of racial injustice and the loss of innocence in the American South.',
      pages: 281,
      language: 'English',
      publishedDate: '1960',
    ),
    Book(
      title: 'Harry Potter and the Chamber of Secrets',
      author: 'J. K. Rowling',
      coverUrl: 'lib/assets/images/Harry_potter.jpg',
      rating: 4.7,
      category: Category.fiction,
      description:
          'Spending the summer with the Dursleys, Harry Potter meets Dobby, a house-elf who warns him not to return to Hogwarts or danger will strike. When Harry refuses, Dobby sabotages an important dinner for the Dursleys, who lock up Harry to prevent his departure. Harry friend Ron Weasley and his brothers Fred and George rescue him in their father flying car',
      pages: 251,
      language: 'English',
      publishedDate: '1998',
    ),

    // Science Fiction Books
    Book(
      title: '1984',
      author: 'George Orwell',
      coverUrl: 'lib/assets/images/1984.jpeg',
      rating: 4.7,
      category: Category.scienceFiction,
      description:
          'A dystopian social science fiction novel that follows the life of Winston Smith in a totalitarian society.',
      pages: 328,
      language: 'English',
      publishedDate: '1949',
    ),
    Book(
      title: 'Dune',
      author: 'Frank Herbert',
      coverUrl: 'lib/assets/images/dune.jpg',
      rating: 4.7,
      category: Category.scienceFiction,
      description:
          'An epic science fiction tale of politics, religion, and ecology.',
      pages: 412,
      language: 'English',
      publishedDate: '1965',
    ),

    // Mystery Books
    Book(
      title: 'Murder on the Orient Express',
      author: 'Agatha Christie',
      coverUrl: 'lib/assets/images/orient_express.jpg',
      rating: 4.6,
      category: Category.mystery,
      description:
          'Detective Hercule Poirot investigates a murder that occurred on the famous Orient Express train.',
      pages: 256,
      language: 'English',
      publishedDate: '1934',
    ),
    Book(
      title: 'The Da Vinci Code',
      author: 'Dan Brown',
      coverUrl: 'lib/assets/images/da_vinci.jpg',
      rating: 4.5,
      category: Category.mystery,
      description:
          'A thrilling mystery involving secret societies and religious conspiracies.',
      pages: 454,
      language: 'English',
      publishedDate: '2003',
    ),

    // Romance Books
    Book(
      title: 'Pride and Prejudice',
      author: 'Jane Austen',
      coverUrl: 'lib/assets/images/pride_prejudice.jpeg',
      rating: 4.8,
      category: Category.romance,
      description:
          'A romantic novel following the emotional development of Elizabeth Bennet.',
      pages: 432,
      language: 'English',
      publishedDate: '1813',
    ),
    Book(
      title: 'The Notebook',
      author: 'Nicholas Sparks',
      coverUrl: 'lib/assets/images/notebook.jpg',
      rating: 4.4,
      category: Category.romance,
      description: 'A love story about the enduring power of true love.',
      pages: 214,
      language: 'English',
      publishedDate: '1996',
    ),

    // Biography Books
    Book(
      title: 'Steve Jobs',
      author: 'Walter Isaacson',
      coverUrl: 'lib/assets/images/steve_jobs.jpeg',
      rating: 4.6,
      category: Category.biography,
      description:
          'The exclusive biography of the innovative founder of Apple.',
      pages: 656,
      language: 'English',
      publishedDate: '2011',
    ),
    Book(
      title: 'Einstein: His Life and Universe',
      author: 'Walter Isaacson',
      coverUrl: 'lib/assets/images/einstein.jpg',
      rating: 4.7,
      category: Category.biography,
      description:
          'The definitive biography of the most influential scientist of the 20th century.',
      pages: 675,
      language: 'English',
      publishedDate: '2007',
    ),

    // Thriller Books
    Book(
      title: 'The Silent Patient',
      author: 'Alex Michaelides',
      coverUrl: 'lib/assets/images/silent_patient.jpg',
      rating: 4.5,
      category: Category.thriller,
      description:
          'A psychological thriller about a woman-s act of violence against her husband.',
      pages: 336,
      language: 'English',
      publishedDate: '2019',
    ),
    Book(
      title: 'Gone Girl',
      author: 'Gillian Flynn',
      coverUrl: 'lib/assets/images/gone_girl.jpg',
      rating: 4.6,
      category: Category.thriller,
      description:
          'A psychological thriller about a marriage gone terribly wrong.',
      pages: 432,
      language: 'English',
      publishedDate: '2012',
    ),

    // Non-Fiction Books
    Book(
      title: 'A Brief History of Time',
      author: 'Stephen Hawking',
      coverUrl: 'lib/assets/images/brief_history.jpg',
      rating: 4.7,
      category: Category.nonFiction,
      description:
          'An exploration of cosmology and the universe\'s biggest questions.',
      pages: 256,
      language: 'English',
      publishedDate: '1988',
    ),
  ];

  static final List<Book> popularBooks = [
    allBooks[0], // The Great Gatsby
    allBooks[2], // 1984
    allBooks[6], // Pride and Prejudice
  ];

  static final List<Book> recentlyAddedBooks = [
    allBooks[10], // The Silent Patient
    allBooks[8], // Steve Jobs
    allBooks[4], // Murder on the Orient Express
  ];
}
