import 'package:flutter/material.dart';
import 'package:supabase_auth_ui/supabase_auth_ui.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('auth ui example'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24.0),
        children: [
          const SupaEmailAuth(
            authAction: AuthAction.signUp,
            redirectUrl: '/home',
          ),
          TextButton(
            child: const Text(
              'Already have an account? Sign In',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/sign_in');
            },
          ),
          const Divider(),
          const Text(
            'Or',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            width: double.infinity,
            height: 40,
            child: ElevatedButton(
              child: const Text(
                'Sign Up with Magic Link',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/magic_link');
              },
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const SupaSocialsAuth(
            colored: true,
            socialProviders: [
              SocialProviders.apple,
              SocialProviders.azure,
              SocialProviders.bitbucket,
              SocialProviders.discord,
              SocialProviders.facebook,
              SocialProviders.github,
              SocialProviders.gitlab,
              SocialProviders.google,
              SocialProviders.slack,
              SocialProviders.spotify,
              SocialProviders.twitch,
              SocialProviders.twitter,
            ],
          ),
          TextButton(
            child: const Text(
              'Test Google sign in',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: () async {
              // await SupabaseAuthUi().socialSignIn();
            },
          ),
        ],
      ),
    );
  }
}
