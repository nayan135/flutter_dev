import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
        return Card(
          margin: const EdgeInsets.all(10),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(project.image, height: 200, fit: BoxFit.cover),
                const SizedBox(height: 10),

                Text(
                  project.name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
 
      Padding(
       padding: const EdgeInsets.symmetric(horizontal: 16),
      
      child: Text(
        project.shortDesc ?? 'do you really forget this',
        style: const TextStyle(fontSize: 16),
      ),

    ),
  


                const SizedBox(height: 5),

                Row(
                  children: project.devs.map<Widget>((dev) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage(dev.image),
                          ),
                          Text(dev.name, style: const TextStyle(fontSize: 14)),
                          Text(dev.role, style: const TextStyle(fontSize: 12, color: Colors.grey)),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}