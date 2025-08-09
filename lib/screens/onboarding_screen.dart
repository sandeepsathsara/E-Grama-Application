import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/onboarding.png", height: 250),
            const SizedBox(height: 30),
            Text(
              "Welcome to GN Services",
              style: Theme.of(
                context,
              ).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Get your Grama Niladhari services digitally with ease.",
            ),
            const SizedBox(height: 40),
            DropdownButtonFormField(
              decoration: const InputDecoration(labelText: "Select Language"),
              items: const [
                DropdownMenuItem(value: "en", child: Text("English")),
                DropdownMenuItem(value: "si", child: Text("සිංහල")),
                DropdownMenuItem(value: "ta", child: Text("தமிழ்")),
              ],
              onChanged: (val) {},
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, '/login'),
              child: const Text("Continue"),
            ),
          ],
        ),
      ),
    );
  }
}
