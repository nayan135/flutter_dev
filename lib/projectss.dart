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
        
          borderRadius: BorderRadius.circular(15),
          
  
         ),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(15),
              ),
              child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Image.asset(
            project.image,
            fit: BoxFit.cover,
          ),
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
                            elevation: 0, 
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
                      
                    ],
                  ),
                    const SizedBox(height: 16),

  

                         const Text(
                            "Developers",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          const SizedBox(height: 10),
                Row(
                  children: project.devs.map<Widget>((dev){
                    return Container(
                      padding: const EdgeInsets.only(right:12.0),
                      child: Column(
                        children: [
                        CircleAvatar(
                          radius: 23,
                          backgroundImage: NetworkImage(dev.image),

                        ),
                        const SizedBox(height: 6),
                        Text(dev.name, style: const TextStyle(fontSize: 13)),
                        Text(dev.role, style: const TextStyle(fontSize: 11, color: Colors.grey)),
                        ],
                        ),
                      );
                   }).toList(),
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