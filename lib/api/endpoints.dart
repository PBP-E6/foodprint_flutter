/// Daftar endpoint Django REST Framework yang dipakai aplikasi.
///
/// Semua data tetap tersimpan di situs web FoodPrint (PWS), aplikasi hanya
/// mengambil dan mengirim data lewat endpoint di bawah `/api/v1/`.
class Endpoints {
  Endpoints._();

  static const String baseUrl = 'https://ilham-naufal-foodprint.pws.cs.ui.ac.id';
  static const String api = '$baseUrl/api/v1';

  // Food Catalog: bisa dibuka tanpa login. Filter: ?category= dan ?search=
  static const String foods = '$api/foods/';
  static String food(int id) => '$foods$id/';

  // Daily Intake Tracker: harus login, hanya catatan milik sendiri. Filter: ?date=YYYY-MM-DD
  static const String intake = '$api/intake/';
  static String intakeLog(int id) => '$intake$id/';

  // Carbon Goals: harus login, hanya target milik sendiri.
  static const String goals = '$api/goals/';
  static String goal(int id) => '$goals$id/';

  // Custom Meals: paket publik + paket milik sendiri.
  static const String customMeals = '$api/custom-meals/';
  static String customMeal(int id) => '$customMeals$id/';

  // Eco-Alternatives: bisa dibuka tanpa login. Filter: ?q=
  static const String ecoAlternatives = '$api/eco-alternatives/';
  static String ecoAlternative(int id) => '$ecoAlternatives$id/';
}
