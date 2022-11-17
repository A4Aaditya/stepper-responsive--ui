import 'package:flutter/material.dart';

class SocialForm extends StatelessWidget {
  SocialForm(this.next, {super.key});
  final void Function() next;
  final linkedInController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 80),
        constraints: const BoxConstraints(
          maxWidth: 400,
        ),
        decoration: BoxDecoration(color: Colors.grey.shade100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Please share social links',
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(height: 50),
            TextField(
              controller: linkedInController,
              decoration: const InputDecoration(hintText: 'LinkedIn'),
            ),
            const SizedBox(height: 30),
            TextField(
              controller: linkedInController,
              decoration: const InputDecoration(hintText: 'GitHub'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: next,
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Continue'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
