
import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../widgets/primary_button.dart';
import '../widgets/custom_text_field.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lupa Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),

            const Center(
              child: Icon(
                Icons.lock_reset_rounded,
                size: 90,
                color: AppTheme.primaryColor,
              ),
            ),

            const SizedBox(height: 24),

            const Text(
              'Lupa Password?',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            const Text(
              'Masukkan email yang terdaftar. '
              'Kami akan mengirimkan instruksi '
              'untuk mengatur ulang password.',
            ),

            const SizedBox(height: 30),

            const CustomTextField(
              label: 'Email',
              icon: Icons.email_outlined,
              keyboardType: TextInputType.emailAddress,
            ),

            const SizedBox(height: 24),

            PrimaryButton(
              text: 'Kirim Instruksi',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Simulasi: instruksi reset password dikirim.',
                    ),
                  ),
                );
              },
            ),

            const SizedBox(height: 16),

            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Kembali ke Login'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}