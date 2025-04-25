// login_screen.dart

class LoginScreen extends StatelessWidget {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.message)),
          );
        }
      },
      builder: (context, state) {
        if (state is AuthLoading) {
          return Center(child: CircularProgressIndicator());
        }

        return Scaffold(
          body: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(controller: _emailController, decoration: InputDecoration(labelText: 'Email')),
                TextField(controller: _passwordController, obscureText: true, decoration: InputDecoration(labelText: 'Contraseña')),
                ElevatedButton(
                  onPressed: () {
                    context.read<AuthBloc>().add(
                      SignInRequested(
                        email: _emailController.text,
                        password: _passwordController.text,
                      ),
                    );
                  },
                  child: Text('Iniciar Sesión'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}