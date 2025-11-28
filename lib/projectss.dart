import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import './models/project_model.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({super.key});

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  List<Project> projects = [];

  @override
  void initState() {
    super.initState();
    loadProjects();
  }

  Future<void> loadProjects() async {
    final String response = await rootBundle.loadString('assets/project.json');
    final List<dynamic> data = json.decode(response);

    setState(() {
      projects = data.map((e) => Project.fromJson(e)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    if (projects.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    return ListView.builder(
      itemCount: projects.length,
      itemBuilder: (context, index) {
        final project = projects[index];
        return Container(
         margin: const EdgeInsets.symmetric(horizontal:12, vertical:10),
         decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
             color: Colors.grey.withOpacity(0.3),
             spreadRadius: 2,
             blurRadius: 8,
             offset: const Offset(0, 4),

            ),

          ],
         ),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(15),
              ),
              child: Image.asset(
                project.image, 
                height: 200, 
                width: double.infinity, 
                fit: BoxFit.cover
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    project.name,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6.5),
                  Text(
                    project.shortDesc ?? 'do you really forget this',
                    style: const TextStyle(
                      fontSize: 15,
                      height: 1.4,
                      color: Color.fromARGB(255, 113, 111, 111),
                    ),
                  ),
                  
                  const SizedBox(height: 10),

                  Row(
                    children: [
                      if (project.github != null)
                        ElevatedButton(
                          onPressed: () {
                            launchUrl(Uri.parse(project.github!));
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                            backgroundColor: Colors.lightBlue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text("GitHub"),
                        ),
                      const SizedBox(width: 10),
                      if (project.playableUrl != null)
                        OutlinedButton(
                          onPressed: () {
                            launchUrl(Uri.parse(project.playableUrl!));
                          },
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            side: const BorderSide(color: Colors.blue),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Text("Live Preview"),
                        ),
                        const SizedBox(height: 16),
                    ],
                  ),
                ],
              ),
            ),
          ],
         ),
       
        );
      },
    );
  }
}