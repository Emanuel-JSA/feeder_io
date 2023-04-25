import 'package:feeder_io/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 8.0),
        child: Column(
          children: [
            ListTile(
              title: Text(
                '🏠  Home',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                '📖  Ler depois',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                '🔄  Sync',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Spacer(),
            ListTile(
              title: Text(
                '☀️  Tema claro',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                '⚙  Configurações',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'versão 0.0',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: AppColors.grey9E),
              ),
            )
          ],
        ),
      ),
    );
  }
}
