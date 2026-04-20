class AuthService {
    // Replace with your Laravel backend URL
    final String baseUrl = 'https://your-laravel-backend.com/api';

    Future<bool> login(String username, String password) async {
        final response = await http.post(
            Uri.parse('$baseUrl/login'),
            body: {'username': username, 'password': password},
        );

        if (response.statusCode == 200) {
            // Handle successful login
            return true;
        } else {
            // Handle login failure
            return false;
        }
    }
}