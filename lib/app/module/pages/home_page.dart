import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text("OnList"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Text("Titulo"),
            Flexible(
              child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Dismissible(
                      background: Container(
                        alignment: Alignment.centerLeft,
                        color: Colors.red,
                        child: const Text('Delete'),
                      ),
                      onDismissed: (direction) {
                        if (direction == DismissDirection.startToEnd) {
                          debugPrint('NEgativo');
                        } else if (direction == DismissDirection.endToStart) {
                          debugPrint('Positivo');
                        }
                      },
                      secondaryBackground: Container(
                        color: Colors.green,
                        alignment: Alignment.centerRight,
                        child: const Text('Done'),
                      ),
                      key: Key('$index'),
                      child: ListTile(
                        title: const Text('teste'),
                        subtitle: const Text("testand subtitulo"),
                        leading: Checkbox.adaptive(
                          value: true,
                          onChanged: (onChanged) {},
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
