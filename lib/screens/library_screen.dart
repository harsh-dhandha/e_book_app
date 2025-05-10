import 'package:flutter/material.dart';
import '../api/books.dart';
import '../models/book.dart';
import '../widgets/book_card.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  Category selectedCategory = Category.all;

  @override
  Widget build(BuildContext context) {
    // Get books for the selected category
    final books = BookAPI.getBooksByCategory(selectedCategory);

    return Scaffold(
      appBar: AppBar(title: const Text('Library')),
      body: Column(
        children: [
          // Category chips
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(16),
            child: Row(
              children:
                  Category.values.map((category) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: FilterChip(
                        selected: selectedCategory == category,
                        label: Text(BookAPI.getCategoryString(category)),
                        onSelected: (selected) {
                          if (selected) {
                            setState(() {
                              selectedCategory = category;
                            });
                          }
                        },
                      ),
                    );
                  }).toList(),
            ),
          ),
          // Books grid
          Expanded(
            child:
                books.isEmpty
                    ? const Center(
                      child: Text('No books found in this category'),
                    )
                    : GridView.builder(
                      padding: const EdgeInsets.all(16),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.65,
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 16,
                          ),
                      itemCount: books.length,
                      itemBuilder: (context, index) {
                        return BookCard(book: books[index]);
                      },
                    ),
          ),
        ],
      ),
    );
  }
}
