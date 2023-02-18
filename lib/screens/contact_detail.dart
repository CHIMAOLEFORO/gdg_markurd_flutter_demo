import 'package:flutter/material.dart';
import 'package:gdg_makurdi_intro/model/contact.dart';

class ContactDetail extends StatelessWidget {
  const ContactDetail({Key? key, required this.contact}) : super(key: key);

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final splitInTwo = height / 2;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: splitInTwo,
            color: Colors.grey,
            child: Center(
              child: SizedBox(
                height: 200,
                width: 200,
                child: Hero(
                  tag: contact.title,
                  child: Container(
                    decoration: BoxDecoration(
                        color: contact.color,
                      borderRadius: BorderRadius.circular(100)
                    ),
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
