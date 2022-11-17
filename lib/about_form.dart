import 'package:flutter/material.dart';

class AboutForm extends StatelessWidget {
  AboutForm(this.next, {super.key});
  final void Function() next;

  final linkedInController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 80),
        constraints: const BoxConstraints(
          maxWidth: 600,
          minHeight: 300,
        ),
        decoration: BoxDecoration(color: Colors.grey.shade100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Please share about yourself',
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(height: 50),
            TextField(
              controller: linkedInController,
              decoration: const InputDecoration(hintText: 'Email'),
            ),
            const SizedBox(height: 30),
            TextField(
              controller: linkedInController,
              decoration: const InputDecoration(hintText: 'Email'),
            ),
            const SizedBox(height: 30),
            TextField(
              controller: linkedInController,
              maxLines: 10,
              minLines: 4,
              decoration: const InputDecoration(hintText: 'About Me'),
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
