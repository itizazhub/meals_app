import 'package:flutter/material.dart';
import 'package:meals_app/providers/filters_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FiltersScreen extends ConsumerWidget {
  FiltersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilters = ref.watch(filtersProvider);
    return Scaffold(
      appBar: AppBar(title: const Text("Your Filters")),
      body: Column(children: [
        SwitchListTile(
          value: activeFilters[Filter.glutenFree]!,
          onChanged: (isChecked) {
            ref
                .read(filtersProvider.notifier)
                .setFilter(Filter.glutenFree, isChecked);
          },
          title: Text("Gluten-free"),
          subtitle: Text("Only include glutten-free meals"),
          contentPadding: const EdgeInsets.only(left: 34, right: 22),
        ),
        SwitchListTile(
          value: activeFilters[Filter.lactoseFree]!,
          onChanged: (isChecked) {
            ref
                .read(filtersProvider.notifier)
                .setFilter(Filter.lactoseFree, isChecked);
          },
          title: Text(
            'Lactose-free',
          ),
          subtitle: Text(
            'Only include lactose-free meals.',
          ),
          contentPadding: const EdgeInsets.only(left: 34, right: 22),
        ),
        SwitchListTile(
          value: activeFilters[Filter.vegetarian]!,
          onChanged: (isChecked) {
            ref
                .read(filtersProvider.notifier)
                .setFilter(Filter.vegetarian, isChecked);
          },
          title: Text(
            'Vegetarian',
          ),
          subtitle: Text(
            'Only include vegetarian meals.',
          ),
          contentPadding: const EdgeInsets.only(left: 34, right: 22),
        ),
        SwitchListTile(
          value: activeFilters[Filter.vegan]!,
          onChanged: (isChecked) {
            ref
                .read(filtersProvider.notifier)
                .setFilter(Filter.vegan, isChecked);
          },
          title: Text(
            'Vegan',
          ),
          subtitle: Text(
            'Only include vegan meals.',
          ),
          contentPadding: const EdgeInsets.only(left: 34, right: 22),
        ),
      ]),
    );
  }
}
