import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_project/features/students/ui/manager/all_doctors_cubit/all_doctors_cubit.dart';
import 'package:grad_project/features/students/ui/manager/all_doctors_cubit/all_doctors_state.dart';

class DoctorsList extends StatelessWidget {
  DoctorsList({super.key});
  // final List<String> doctorNames = [
  //   'doc1',
  //   'doc2',
  //   'doc3',
  //   'doc4',
  //   'doc5',
  //   'doc6'
  // ];

  final List<String> doctorImages = [
    "assets/images/doctor.png",
    "assets/images/doctor.png",
    "assets/images/doctor.png",
    "assets/images/doctor.png",
    "assets/images/doctor.png",
    "assets/images/doctor.png",
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllDoctorsCubit, AllDoctorsState>(
        builder: (context, state) {
      if (state is AllDoctorsSuccess) {
        return ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: state.doctorsList.length,
          separatorBuilder: (context, index) =>const SizedBox(width: 12),
          itemBuilder: (context, index) {
            return Column(
              children: [
                CircleAvatar(
                  radius: 32,
                  backgroundImage: AssetImage(doctorImages[index]),
                ),
                const SizedBox(height: 8),
                Text(
                  state.doctorsList[index].user?.name ?? "unKnown",
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            );
          },
        );
      } else if (state is AllDoctorsFailure) {
        return const Center(
            child: Text("Failed to load doctors",
                style: TextStyle(color: Colors.red)));
      } else if (state is AllDoctorsLoading) {
        return const Center(child: CircularProgressIndicator());
      } else {
        return const Center(
            child: Text("No data", style: TextStyle(color: Colors.grey)));
      }
    });
  }
}
//   if (state is NewestBooksSuccess) {
//   return SliverList(
//   delegate: SliverChildBuilderDelegate(
//   (context, index) {
//   return Padding(
//   padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 30),
//   child: BookListViewItem(bookModel: state.books[index]),
//   );
//   },
//   childCount: state.books.length,
//   ),
//   );
//   } else if (state is NewestBooksFailure) {
//   return SliverFillRemaining(
//   child: CustomErrorWidget(errorMessage: state.errorMessage),
//   );
//   } else {
//   return const SliverFillRemaining(
//   child: CustomLoadingIndicator(),
//   );
//   }
// },
// );
// }

