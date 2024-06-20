

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:test7/data/member_list.dart';
import 'package:url_launcher/url_launcher.dart';

class MemberScreen extends StatefulWidget {
  const MemberScreen({super.key});

  @override
  State<MemberScreen> createState() => _MemberScreenState();
}

class _MemberScreenState extends State<MemberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'সদস্য',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: allMember.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: const BoxDecoration(
                color: Colors.white,
               boxShadow: [
                 BoxShadow(
                   color: Colors.black26,
                   spreadRadius: 1,
                   blurRadius: 1,
                 ),
               ],
              ),
              child: ListTile(
                title: Text(allMember[index]['title']),
                subtitle: Text(allMember[index]['subtitle']),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(allMember[index]['img'] ?? ''),
                ),
                trailing: IconButton(
                  onPressed: ()async{
                  final Uri url = Uri(
                    scheme: 'tel',
                    path: allMember[index]['phone'],
                  );
                  if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                  } else {
                  log("can't lounce this url".toString());
                  }
                },
                    icon: const Icon(
                        Icons.phone,
                      color: Colors.green,
                    ),
                ),
              ),
            );
          },
      ),
    );
  }
}
