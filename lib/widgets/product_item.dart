import 'package:flutter/material.dart';
import 'package:projeto_shop/utils/app_routes.dart';
import 'package:provider/provider.dart';
import '../models/product.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    final Product product = Provider.of<Product>(
      context,
      listen:
          false, /*Esse atributo deixa claro se esse componente vai querer ouvir todas as mudanças realizadas no produto ou não, quando false, ele geralmente pode ser utilizado com o Consumer para otimizar o carregamento da tela, do qual só será alterado o widget envolvido por ele*/
    );

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: Consumer<Product>(
            // child: Text('Nunca Muda'), //child é utilizado pra que na hora do consumer carregara alteração, seja possível otimizar um campo que sabemos que não irá mudar
            builder: (ctx, product, child) => IconButton(
              icon: Icon(product.isfavorite
                  ? Icons.favorite
                  : Icons.favorite_border_outlined),
              onPressed: () {
                product.toggleFavorite();
              },
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
            icon: const Icon(Icons.shopping_cart),
            color: Theme.of(context).colorScheme.secondary,
            onPressed: () {},
          ),
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context)
                .pushNamed(AppRoutes.PRODUCT_DETAIL, arguments: product);

            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context) => const ProductDetailScreen(product),
            //   ),
            // );
          },
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
