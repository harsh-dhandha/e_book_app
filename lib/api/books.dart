import 'package:e_book_app/api/generated_books.dart';
import 'package:e_book_app/models/book.dart';

enum Category {
  all,
  fiction,
  nonFiction,
  mystery,
  scienceFiction,
  romance,
  thriller,
  biography,
}

class BookAPI {
  static String getCategoryString(Category category) {
    switch (category) {
      case Category.all:
        return 'All Books';
      case Category.fiction:
        return 'Fiction';
      case Category.nonFiction:
        return 'Non-Fiction';
      case Category.mystery:
        return 'Mystery';
      case Category.scienceFiction:
        return 'Science Fiction';
      case Category.romance:
        return 'Romance';
      case Category.thriller:
        return 'Thriller';
      case Category.biography:
        return 'Biography';
      default:
        return 'Unknown';
    }
  }

  static List<Book> getBooksByCategory(Category category) {
    if (category == Category.all) {
      print("Total books available: ${GeneratedBooks.allBooks.length}");
      return List.from(GeneratedBooks.allBooks);
    }
    var filteredBooks =
        GeneratedBooks.allBooks
            .where((book) => book.category == category)
            .toList();
    print("Books in category $category: ${filteredBooks.length}"); // Debugging
    return filteredBooks;
  }

  static List<Book> searchBooks(String query) {
    return GeneratedBooks.allBooks
        .where(
          (book) =>
              book.title.toLowerCase().contains(query.toLowerCase()) ||
              book.author.toLowerCase().contains(query.toLowerCase()),
        )
        .toList();
  }
}
