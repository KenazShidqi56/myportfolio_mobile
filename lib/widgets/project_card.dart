import 'package:flutter/material.dart';
import 'package:myportfolio_mobile/screens/project_form.dart';
import 'package:myportfolio_mobile/screens/project_list_screen.dart';
import 'package:myportfolio_mobile/services/auth_state.dart';
import 'package:myportfolio_mobile/widgets/auth_guard.dart';
import 'package:provider/provider.dart';

class ItemHomepage {
  const ItemHomepage(this.name, this.icon, this.color);

  final String name;
  final IconData icon;
  final Color color;
}

class ItemCard extends StatelessWidget {
  const ItemCard(this.item, {super.key});

  final ItemHomepage item;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.color,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: () async {
          if (item.name == 'View Achievements') {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (_) => const ProjectListScreen(),
              ),
            );
          } else if (item.name == 'Add Achievement') {
            final navigator = Navigator.of(context);
            final allowed = await ensureLoggedIn(context);
            if (!allowed) return;
            navigator.push(
              MaterialPageRoute<void>(
                builder: (_) => const ProjectFormPage(),
              ),
            );
          } else if (item.name == 'Logout') {
            final authState = context.read<AuthState>();
            final messenger = ScaffoldMessenger.of(context);
            if (!authState.isLoggedIn) {
              messenger.showSnackBar(
                const SnackBar(content: Text('You are not logged in.')),
              );
              return;
            }
            await authState.logout();
            messenger.showSnackBar(
              const SnackBar(content: Text('Logged out successfully.')),
            );
          } else {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(content: Text('You pressed the ${item.name} button!')),
              );
          }
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(item.icon, color: Colors.white, size: 30),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}