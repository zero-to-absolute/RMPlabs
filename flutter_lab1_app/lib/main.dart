import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Lab 1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar для красивого заголовка
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Лабораторная работа №1'),
      ),
      
      // Основное содержимое
      body: Column(
        children: [
          // Первый контейнер с заданными параметрами
          Container(
            width: 300,
            height: 150,
            color: Colors.blue,
            // Центрируем содержимое контейнера
            child: const Center(
              child: Text(
                'Контейнер 1',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          
          // Отступ между элементами
          const SizedBox(height: 20),
          
          // Row с тремя текстовыми элементами
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text(
                'Текст 1',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'Текст 2',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'Текст 3',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          
          // Отступ между элементами
          const SizedBox(height: 20),
          
          // Второй контейнер с другими параметрами
          Container(
            width: 250,
            height: 100,
            color: Colors.green,
            child: const Center(
              child: Text(
                'Контейнер 2',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          
          // Отступ между элементами
          const SizedBox(height: 20),
          
          // Expanded с Row и CircleAvatar
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Первый CircleAvatar с изображением из сети
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/159755304?s=400&u=38ddbc2c31b114e63c57db5718e6c86e65437f5b&v=4',
                  ),
                  backgroundColor: Colors.grey,
                ),
                
                // Второй CircleAvatar с другим радиусом
                const CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.orange,
                  child: Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      
      // FloatingActionButton с обработчиком нажатия
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Выводим сообщение в консоль при нажатии
          print('Button pressed!');
          print('Кнопка нажата - Лабораторная работа №1 выполнена!');
          
          // Также показываем SnackBar для визуального подтверждения
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Кнопка нажата! Проверьте консоль.'),
              duration: Duration(seconds: 2),
            ),
          );
        },
        tooltip: 'Нажми меня',
        child: const Icon(Icons.add),
      ),
    );
  }
}