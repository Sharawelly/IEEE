// 1. BankAccount Class
class BankAccount {
  String accountID;
  double balance;

  BankAccount({required this.accountID, required this.balance});

  BankAccount.defaultBalance(this.accountID) : balance = 0.0;

  bool withdraw(double amount) {
    if (amount <= 0) {
      print("Invalid amount");
      return false;
    }
    if (balance >= amount) {
      balance -= amount;
      return true;
    } else {
      return false;
    }
  }

  void deposit(double amount) {
    if (amount <= 0) {
      return;
    }
    balance += amount;
  }
}

class Holiday {
  String name;
  int day;
  String month;

  Holiday({required this.name, required this.day, required this.month});

  static bool inSameMonth(Holiday holiday1, Holiday holiday2) {
    return holiday1.month == holiday2.month;
  }

  static double avgDate(List<Holiday> holidays) {
    if (holidays.isEmpty) return 0.0;

    int sum = 0;
    for (Holiday holiday in holidays) {
      sum += holiday.day;
    }
    return sum / holidays.length;
  }
}

class Movie {
  String title;
  String studio;
  String rating;

  Movie(this.title, this.studio, this.rating);

  Movie.defaultRating(this.title, this.studio) : rating = "PG";

  static List<Movie> getPG(List<Movie> movies) {
    List<Movie> pgMovies = [];
    for (Movie movie in movies) {
      if (movie.rating.contains("PG")) {
        pgMovies.add(movie);
      }
    }
    return pgMovies;
  }
}

void main() {
  print("=== Testing BankAccount Class ===");

  // Test BankAccount
  BankAccount account1 = BankAccount(accountID: "ACC001", balance: 1000.0);
  BankAccount account2 = BankAccount.defaultBalance("ACC002");

  print(account1);
  print(account2);

  account1.withdraw(200.0);
  account1.deposit(150.0);
  account2.deposit(500.0);
  account2.withdraw(600.0);

  print("\n=== Testing Holiday Class ===");

  Holiday independenceDay = Holiday(
    name: "Independence Day",
    day: 4,
    month: "July",
  );
  Holiday christmasDay = Holiday(
    name: "Christmas Day",
    day: 25,
    month: "December",
  );
  Holiday canadaDay = Holiday(name: "Canada Day", day: 1, month: "July");

  print(independenceDay);
  print(
    "Independence Day and Christmas Day in same month: ${Holiday.inSameMonth(independenceDay, christmasDay)}",
  );
  print(
    "Independence Day and Canada Day in same month: ${Holiday.inSameMonth(independenceDay, canadaDay)}",
  );

  List<Holiday> holidays = [independenceDay, christmasDay, canadaDay];
  double avgDay = Holiday.avgDate(holidays);
  print("Average day of holidays: ${avgDay.toStringAsFixed(2)}");

  print("\n=== Testing Movie Class ===");

  Movie casinoRoyale = Movie("Casino Royale", "Eon Productions", "PG13");
  Movie toyStory = Movie.defaultRating("Toy Story", "Pixar");
  Movie darkKnight = Movie("The Dark Knight", "Warner Bros", "PG13");
  Movie findingNemo = Movie("Finding Nemo", "Pixar", "G");
  Movie shrek = Movie("Shrek", "DreamWorks", "PG");

  print(casinoRoyale);
  print(toyStory);

  List<Movie> allMovies = [
    casinoRoyale,
    toyStory,
    darkKnight,
    findingNemo,
    shrek,
  ];
  List<Movie> pgMovies = Movie.getPG(allMovies);

  print("\nAll movies:");
  for (Movie movie in allMovies) {
    print("  $movie");
  }

  print("\nPG-rated movies:");
  for (Movie movie in pgMovies) {
    print("  $movie");
  }
}
