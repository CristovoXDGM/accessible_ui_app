import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final objectsList = List.generate(
      6,
      (index) => {
        'title': "Title $index",
        "sub_title": "subtitle $index",
        "selected": false,
      },
    );

    final contentList = ValueNotifier(objectsList);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => Container(),
          );
        },
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
            Text(
              "Titulo",
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Flexible(
              child: ListView.builder(
                  itemCount: contentList.value.length,
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
                      child: ValueListenableBuilder(
                          valueListenable: contentList,
                          builder: (context, list, child) {
                            final map = list[index];

                            return ListTile(
                              title: Text("${map['title']}"),
                              subtitle: Text("${map['sub_title']}"),
                              trailing: const Icon(Icons.today_outlined),
                              leading: Checkbox.adaptive(
                                value: map['selected'] as bool,
                                onChanged: (onchange) {
                                  map['selected'] = onchange!;

                                  contentList.value = List.from(list);
                                },
                              ),
                            );
                          }),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
