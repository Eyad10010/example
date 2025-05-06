class Book extends AbstractLibraryItem implements Readable {
  String title;
  String author;
  bool isAvailable;

  Book(this.title, this.author) : isAvailable = true;

  @override
  void borrow() {
    if (isAvailable) {
      isAvailable = false;
      print("$title has been borrowed.");
    } else {
      print("$title is already borrowed.");
    }
  }

  @override
  void returnItem() {
    isAvailable = true;
    print("$title has been returned.");
  }

  @override
  void readSample() {
    print("Reading a sample of '$title' by $author...");
  }

  void getDetails() {
    print("Title: $title, Author: $author, Available: $isAvailable");
  }
}

class EBook extends Book {
  double fileSize; // in MB

  EBook(String title, String author, this.fileSize) : super(title, author);

  @override
  void getDetails() {
    print("Title: $title, Author: $author, File Size: ${fileSize}MB");
  }

  @override
  void readSample() {
    print("Opening sample of the eBook '$title'...");
  }
}

abstract class AbstractLibraryItem {
  void borrow();
  void returnItem();
}

class Library {
  List<AbstractLibraryItem> items = [];

  void addItem(AbstractLibraryItem item) {
    items.add(item);
  }

  void listItems() {
    print("\nLibrary Collection:");
    for (var item in items) {
      if (item is Book) {
        item.getDetails();
      }
    }
  }
}

class Member {
  String id;
  String name;
  List<Book> borrowedBooks = [];

  Member(this.id, this.name);

  void borrowBook(Book book) {
    if (book.isAvailable) {
      book.borrow();
      borrowedBooks.add(book);
    } else {
      print("$name cannot borrow ${book.title}, it's already taken.");
    }
  }

  void returnBook(Book book) {
    if (borrowedBooks.contains(book)) {
      book.returnItem();
      borrowedBooks.remove(book);
    } else {
      print("$name doesn't have this book.");
    }
  }

  void showBorrowedBooks() {
    print("\n$name's Borrowed Books:");
    for (var book in borrowedBooks) {
      print("- ${book.title}");
    }
  }
}

abstract class Readable {
  void readSample();
}

void main() {
  // Create books
  Book book1 = Book("Sherlock Holmes", "George Orwell");
  Book book2 = Book("Brave New World", "Aldous Huxley");
  EBook ebook1 = EBook("Dune", "Frank Herbert", 1.2);

  // Create library and add books
  Library library = Library();
  library.addItem(book1);
  library.addItem(book2);
  library.addItem(ebook1);

  // Create member
  Member member = Member("001", "Eyad");

  // Library listing
  library.listItems();

  // Borrowing books
  member.borrowBook(book1);
  member.borrowBook(book2);
  member.borrowBook(book1); // Trying to borrow again

  // Show borrowed books
  member.showBorrowedBooks();

  // Returning books
  member.returnBook(book1);
  member.returnBook(book2);
}
