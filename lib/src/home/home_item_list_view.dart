import 'package:flutter/material.dart';


/// Displays a list of SampleItems.
class HomeItemListView extends StatelessWidget {
    const HomeItemListView({
        super.key,
        this.items = const ["User Manager", "Notification"],
    });

    static const routeName = '/';

    final List<String> items;

    @override
    Widget build(BuildContext context) {
        GridView grid = GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // number of items in each row
                mainAxisSpacing: 8.0, // spacing between rows
                crossAxisSpacing: 8.0, // spacing between columns
                childAspectRatio: 2.0
            ),
            padding: EdgeInsets.all(8.0), // padding around the grid
            itemCount: items.length, // total number of items
            itemBuilder: (context, index) {
                final optionTitle = items[index];
                return Container(
                    //color: const Color.fromARGB(255, 215, 215, 215), // color of grid items
                    child: TextButton(
                        style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                        elevation: 0,
                        shape: RoundedRectangleBorder( borderRadius: 
                            BorderRadius.circular(8.0),)
                        ),
                        child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [ Padding(
                                                padding: EdgeInsets.only(bottom: 10.0),
                                                child: Image.asset('assets/images/app_logo.png', width: 30, height: 30,),
                                            ),
                                            Padding(
                                                padding: EdgeInsets.only(top: 10.0),
                                                child: Text(optionTitle, 
                                                    style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Color.fromARGB(255, 0, 0, 0)) 
                                                ),
                                            )
                                        ],
                            ),
                        onPressed: () {
                            Navigator.pushNamed(context, '/homeitemdetails');
                            /*Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                    return HomeItemDetailsView();
                                }),
                            );*/
                        },
                    )
                );
            },
        );

        return Scaffold(
            appBar: AppBar(
                title: const Text('Select an Option'),
                actions: [],
            ),
            body: grid
        );
    }
}
