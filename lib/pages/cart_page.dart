import 'package:flutter/material.dart';
import 'package:test_flutter/core/store.dart';
import 'package:test_flutter/models/cart.dart';
import 'package:test_flutter/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.make(),
      ),
      backgroundColor: MyTheme.creamColor,
      body: Column(
        children: [
          _CartListState().p32().expand(),
          const Divider(),
          const _CartTotal()
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CartModel _cart = (VxState.store as MyStore).cartModel;

    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          VxConsumer(
              builder: (context, _, __) {
                return "\$${_cart.totalPrice}"
                    .text
                    .xl4
                    .color(context.theme.accentColor)
                    .make();
              },
              mutations: const {RemoveMutation},
              notifications: const {}),
          30.widthBox,
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: "Buy not supported yet".text.make(),
                ),
              );
            },
            child: "Buy".text.white.make(),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(context.theme.buttonColor),
            ),
          ).w32(context)
        ],
      ),
    );
  }
}

class _CartListState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cartModel;
    return _cart.items.isEmpty
        ? "Nothing to show".text.xl3.makeCentered()
        : ListView.builder(
            itemCount: _cart.items.length,
            itemBuilder: (context, index) => ListTile(
              leading: const Icon(Icons.done),
              trailing: IconButton(
                onPressed: () {
                  RemoveMutation(_cart.items[index]);
                },
                icon: const Icon(Icons.remove_circle_outline),
              ),
              title: _cart.items[index].name.text.make(),
            ),
          );
  }
}
