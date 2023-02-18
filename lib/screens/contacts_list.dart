import 'package:flutter/material.dart';
import 'package:gdg_makurdi_intro/data/contact.data.dart';
import 'package:gdg_makurdi_intro/widgets/contact_widget.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        /// Loop over the [allContacts] variable and display each contact
        /// There are several ways to loop. the following commented snippets
        /// do the same thing

        ///[Mapping]
        children: allContacts.map((contact) => ContactWidget(contact: contact)).toList(),

        /// [Looping]
        // children: [
        //   for (final contact in allContacts) ContactWidget(contact: contact)
        // ],
      ),
    );
  }
}
