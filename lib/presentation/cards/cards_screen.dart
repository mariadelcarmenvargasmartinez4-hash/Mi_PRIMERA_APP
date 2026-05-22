import 'package:flutter/material.dart';

const cards = <Map<String, dynamic>>[
  {'elevation': 0.0, 'label': 'Elevation 0'},
  {'elevation': 1.0, 'label': 'Elevation 1'},
  {'elevation': 2.0, 'label': 'Elevation 2'},
  {'elevation': 3.0, 'label': 'Elevation 3'},
];

class CardsScreen extends StatelessWidget {
  static const String name = 'cards-screen';

  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards'),
      ),
      body: const _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [

          ...cards.map(
            (card) => _CardType1(
              label: card['label'],
              elevation: card['elevation'],
            ),
          ),

          ...cards.map(
            (card) => _CardType2(
              label: card['label'],
              elevation: card['elevation'],
            ),
          ),

          ...cards.map(
            (card) => _CardType3(
              label: card['label'],
              elevation: card['elevation'],
            ),
          ),

          ...cards.map(
            (card) => _CardType4(
              label: card['label'],
              elevation: card['elevation'],
            ),
          ),

        ],
      ),
    );
  }
}

class _CardType1 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType1({
    required this.label,
    required this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.more_vert_outlined),
                onPressed: () {},
              ),
            ),

            Text(
              label,
              style: Theme.of(context).textTheme.titleMedium,
            ),

            const SizedBox(height: 10),

            const Text(
              'Material Design Card',
            ),
          ],
        ),
      ),
    );
  }
}

class _CardType2 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType2({
    required this.label,
    required this.elevation,
  });

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Card(
  elevation: elevation,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12),
    side: BorderSide(
      color: colors.outline,
    ),
  ),
  margin: const EdgeInsets.only(bottom: 12),
  child: Padding(
    padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Align(
          alignment: Alignment.topRight,
          child: IconButton(
            icon: const Icon(Icons.more_vert_outlined),
            onPressed: () {},
          ),
        ),

        Text(
          label,
          style: Theme.of(context).textTheme.titleMedium,
        ),

        const SizedBox(height: 10),

        const Text(
          'Material Design Card',
        ),

      ],
    ),
  ),
);
  }
}

class _CardType3 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType3({
    required this.label,
    required this.elevation,
  });

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Card(
      elevation: elevation,
      color: colors.surfaceContainer,
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.more_vert_outlined),
                onPressed: () {},
              ),
            ),

            Text(
              label,
              style: Theme.of(context).textTheme.titleMedium,
            ),

            const SizedBox(height: 10),

            const Text(
              'Material Design Card',
            ),

          ],
        ),
      ),
    );
  }
}

class _CardType4 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType4({
    required this.label,
    required this.elevation,
  });

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Card(
      elevation: elevation,
      color: colors.surfaceContainer,
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Image.network(
              'https://picsum.photos/id/${elevation.toInt()}/600/200',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            Align(
              alignment: Alignment.topRight,
              child: Container(
                decoration: BoxDecoration(
                  color: colors.surfaceContainer,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: const Icon(Icons.more_vert_outlined),
                  onPressed: () {},
                ),
              ),
            ),

            Text(
              label,
              style: Theme.of(context).textTheme.titleMedium,
            ),

            const SizedBox(height: 10),

            const Text(
              'Material Design Card',
            ),

          ],
        ),
      ),
    );
  }
}