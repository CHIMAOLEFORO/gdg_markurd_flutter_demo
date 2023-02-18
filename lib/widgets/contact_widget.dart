import 'package:flutter/material.dart';
import 'package:gdg_makurdi_intro/model/contact.dart';
import 'package:gdg_makurdi_intro/screens/contact_detail.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({super.key, required this.contact});

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return ContactDetail(contact: contact);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            SizedBox(
              height: 50,
              width: 50,
              child: Hero(
                tag: contact.title,
                child: Container(
                  // color: Colors.deepPurpleAccent,
                  decoration: BoxDecoration(
                    color: contact.color,
                    // borderRadius: BorderRadius.circular(50),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  contact.title,
                  style: TextStyle(fontSize: 25, color: Colors.grey.shade700),
                ),
                Text(contact.subtitle),
              ],
            )
          ],
        ),
      ),
    );
  }
}
