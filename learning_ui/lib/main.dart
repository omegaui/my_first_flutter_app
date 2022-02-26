//This is my first flutter project,
//After struggling so much to learn about layouts,

//Wrtten on: gedit:3.36, Builded purely on cli!

import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
		debugShowCheckedModeBanner: false,
		home: Scaffold(
			body: MainScreen(),
		),
));

class MainScreen extends StatefulWidget {
	@override
	_MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
	
	int count = 5;
	
	@override
	Widget build(BuildContext context){
		return Container(
			child: Padding(
				padding: EdgeInsets.all(30),
				child: Container(
					child: Center(
						child: Column(
							mainAxisAlignment: MainAxisAlignment.end,
							crossAxisAlignment: CrossAxisAlignment.center,
							children: [
								Expanded(
									child: Container(
										child: LayoutBuilder(
											builder: (BuildContext context, BoxConstraints constraints){
												return Center(
													child: Image(
														image: AssetImage('images/flame-thanksgiving.png'),
														width: constraints.maxWidth - 100,
														height: constraints.maxHeight - 100,
													),
												);
											},
										),
									),
								),
								Text(
									'Hit Like!',
									style: TextStyle(
										fontSize: 36,
										fontWeight: FontWeight.bold,
										color: Colors.grey[850],
									),
								),
								Text(
									'$count',
									style: TextStyle(
										color: Colors.red,
										fontSize: 24,
										fontWeight: FontWeight.bold,
									),
								),
								SizedBox(height: 2),
								IconButton(
									onPressed: () {
										setState(() {
											count++;
										});
									},
									icon: Icon(
										Icons.favorite,
										color: Colors.pink,
										size: 24.0,
									),
									splashRadius: 25,
								),
							],
						),
					),
				),
			),
		);
	}
}
