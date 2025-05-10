import '../api/books.dart';

class Book {
  final String title;
  final String author;
  final String coverUrl;
  final double rating;
  final String description;
  final Category category;
  final int pages;
  final String language;
  final String publishedDate;

  Book({
    required this.title,
    required this.author,
    required this.coverUrl,
    required this.rating,
    required this.description,
    required this.category,
    required this.pages,
    required this.language,
    required this.publishedDate,
  });
} 