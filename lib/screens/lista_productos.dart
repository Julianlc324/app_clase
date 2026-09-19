import 'package:flutter/material.dart';
import '../models/producto.dart';
import 'detalle_producto.dart';

class ListaProductosScreen extends StatelessWidget {
  const ListaProductosScreen({super.key});

  final List<Producto> productos = const []; // O inicialízalos en el build

  @override
  Widget build(BuildContext context) {
    final listaProductos = [
      Producto(
        nombre: 'Aguacate Hass',
        descripcion: 'Aguacate fresco cultivado en San Cristóbal.',
        precio: 4500.0,
        imagen: '🥑',
      ),
      Producto(
        nombre: 'Café Artesanal',
        descripcion: 'Café de origen 100% colombiano.',
        precio: 18000.0,
        imagen: '☕',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mercado Campesino - Productos'),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: listaProductos.length,
        itemBuilder: (context, index) {
          final producto = listaProductos[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ListTile(
              leading: Text(producto.imagen, style: const TextStyle(fontSize: 30)),
              title: Text(producto.nombre),
              subtitle: Text('\$${producto.precio}'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navegación con Navigator.push y paso de datos por constructor
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetalleProductoScreen(producto: producto),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}