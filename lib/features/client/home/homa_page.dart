import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:os_project/core/enums/formz_status.dart';
import 'package:os_project/core/extensions/context.dart';
import 'package:os_project/core/extensions/size.dart';

import '../../../assets/assets.dart';
import 'bloc/client_home_bloc.dart';

class ClientHomePage extends StatelessWidget {
  const ClientHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buy & Rent Easy'),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: context.colorScheme.secondary,
                child: const Text('JM'),
              ),
              6.w,
              const Text(
                'John Mellio',
                style: TextStyle(color: Colors.white),
              ),
              6.w,
              IconButton(
                onPressed: () {
                  //todo
                },
                icon: Icon(Icons.login),
              )
            ],
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(30),
          child: Column(
            children: [
              Row(
                children: [
                  Text('House type'),
                  10.w,
                ],
              ),
              Row(
                children: [
                  Text('Regions'),
                  10.w,
                ],
              ),
            ],
          ),
        ),
      ),
      body: BlocBuilder<ClientHomeBloc, ClientHomeState>(
        builder: (context, state) {
          if (state.status.isLoading) {
            return Center(
              child: Lottie.asset(AppAnimations.loadingAnimation),
            );
          }
          return GridView.builder(
            padding: const EdgeInsets.all(16),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 400,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: 1.75,
            ),
            itemCount: 100,
            itemBuilder: (context, index) => DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.white,
                boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 4)],
              ),
            ),
          );
        },
      ),
    );
  }
}
