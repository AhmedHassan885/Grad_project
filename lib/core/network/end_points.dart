// ignore_for_file: constant_identifier_names
class EndPoints {
  static const String baseUrl = "https://95cd2b38ab2c.ngrok-free.app/api";

  // Auth
  static const String register = "$baseUrl/register";
  static const String login = "$baseUrl/login";
  static const String logout = "$baseUrl/logout";
  static const String forgotPassword = "$baseUrl/forgotpassword";
  static const String resetPassword = "$baseUrl/resetpassword";

  // Profile
  static const String showProfile = "$baseUrl/profile";
  static const String updateProfile = "$baseUrl/profileupdate";
  static const String changePassword = "$baseUrl/profilechangepassword";

  // Admin
  static const String pendingUsers = "$baseUrl/users/pending";
  static String approveAccount(int id) => "$baseUrl/users/$id/approve";
  static String rejectAccount(int id) => "$baseUrl/users/$id/reject";

  // Materials
  static const String getAllMaterials = "$baseUrl/materials";
  static const String addMaterial = "$baseUrl/materials";
  static String showMaterial(int id) => "$baseUrl/materials/$id";
  static String updateMaterial(int id) => "$baseUrl/materials/update/$id";
  static String deleteMaterial(int id) => "$baseUrl/materials/destroy/$id";
  static String downloadMaterial(int id) => "$baseUrl/download/$id";

  // Posts
  static const String getAllPosts = "$baseUrl/posts";
  static const String addPost = "$baseUrl/posts/store";
  static String updatePost(int id) => "$baseUrl/posts/update/$id";
  static String deletePost(int id) => "$baseUrl/posts/destroy/$id";
  static String storeComment(int postId) => "$baseUrl/storeComment/$postId";

  // Courses
  static const String getAllCourses = "$baseUrl/courses";
  static const String addCourse = "$baseUrl/courses/store";
  static String deleteCourse(int id) => "$baseUrl/courses/destroy/$id";

  // Instructors
  static const String getAllInstructors = "$baseUrl/instructors";

  // Quizzes
  static const String addQuiz = "$baseUrl/quizzes";
  static String submitQuiz(int id) => "$baseUrl/quizzes/$id/submit";
  static String showQuiz(int id) => "$baseUrl/quizzes/$id";
  static const String getAllQuizzes = "$baseUrl/quizzes";
  static const String showSubmissions = "$baseUrl/quizzes/submissions";


  // Questions
  static const String addQuestion = "$baseUrl/questions";
}
















// abstract class EndPoints {
//   static const String baseURL = 'https://a3a3-156-197-155-244.ngrok-free.app/api/';

//   // end points
//   static const String register = 'register';
//   static const String login = 'login';
//   static const String forget_password = 'forgotpassword';
//   static const String reset_password = 'resetpassword';
//   static const String show_profile = 'profile';
//   static const String update_profile = 'profileupdate';
//   static const String profile_change_password = 'profilechangepassword';
//   static const String edit_category = 'category/2';
//   static const String get_category = 'categories';
//   static const String new_product = 'new_product';
//   static const String get_product = 'products';
//   static const String get_best_seller = 'best_seller_products';
// }
