import 'package:flutter/material.dart';
import 'package:grad_project/features/students/ui/widgets/custom_app_bar_post_screen.dart';
import 'package:grad_project/features/students/ui/widgets/custom_snake_massge_post_screen.dart';




class AddQuizScreen extends StatefulWidget {
  const AddQuizScreen({super.key});

  @override
  State<AddQuizScreen> createState() => _AddQuizScreenState();
}

class _AddQuizScreenState extends State<AddQuizScreen> {
  final quizNameController = TextEditingController();
  final questionController = TextEditingController();
  final degreeController = TextEditingController();
  final deadlineController = TextEditingController();
  final totalController = TextEditingController();
  String? selectedLevel;

  List<Map<String, dynamic>> answers = [
    {"text": "answer1", "isCorrect": false},
    {"text": "answer2", "isCorrect": false},
  ];

  final List<String> levels = ['level 1', 'level 2', 'level 3','level 4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // ------------ BODY ------------
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.fromLTRB(16, 130, 16, 100),
            children: [
              const Row(
                children: [
                  SizedBox(width: 10,),
                  Icon(Icons.arrow_back_ios, size: 18, color: Colors.black),
                  SizedBox(width: 140,),
                  Text("Add Quiz", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                ],
              ),
              const SizedBox(height: 20),
              buildTextField("quez name", quizNameController),
              buildTextField("question 1", questionController),
              buildTextField("degree", degreeController),

              const SizedBox(height: 12),
              buildAnswersSection(),

              const SizedBox(height: 16),
              buildDateField("Deadline", deadlineController),
              buildTextField("Final total", totalController),

              const SizedBox(height: 12),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  hintText: "Level",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                value: selectedLevel,
                items: levels.map((level) {
                  return DropdownMenuItem(value: level, child: Text(level));
                }).toList(),
                onChanged: (val) {
                  setState(() {
                    selectedLevel = val!;
                  });
                },
              ),
            ],
          ),


          CustomAppBarPostScreen(),
          
          CustomSnakeMassgePostScreen(),
        ],
      ),
    );
  }

  Widget buildTextField(String hint, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }

  Widget buildDateField(String hint, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: TextField(
        controller: controller,
        readOnly: true,
        decoration: InputDecoration(
          hintText: hint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          suffixIcon: const Icon(Icons.calendar_today),
        ),
        onTap: () async {
          DateTime? pickedDate = await showDatePicker(
            context: context,
            firstDate: DateTime.now(),
            lastDate: DateTime(2100),
            initialDate: DateTime.now(),
          );
          if (pickedDate != null) {
            controller.text = pickedDate.toLocal().toString().split(' ')[0];
          }
        },
      ),
    );
  }

  Widget buildAnswersSection() {
    return Column(
      children: [
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: List.generate(answers.length, (index) {
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Checkbox(
                  value: answers[index]["isCorrect"],
                  onChanged: (val) {
                    setState(() {
                      answers[index]["isCorrect"] = val!;
                    });
                  },
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(answers[index]["text"]),
                ),
              ],
            );
          }),
        ),
        const SizedBox(height: 8),
        Align(
          alignment: Alignment.centerLeft,
          child: IconButton(
            icon: const Icon(Icons.add, size: 24),
            onPressed: () {
              setState(() {
                answers.add({"text": "answer${answers.length + 1}", "isCorrect": false});
              });
            },
          ),
        ),
      ],
    );
  }
}
