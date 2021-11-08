part of 'pages.dart';

class OngkirPage extends StatelessWidget {
  const OngkirPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Coba Rajaongkir API"),
        centerTitle: true,
      ),
      body: BlocBuilder<RajaongkirBloc, RajaongkirState>(
          builder: (context, state) {
        return Container(
          padding: const EdgeInsets.all(16),
          alignment: Alignment.center,
          child: ListView(children: [
            ElevatedButton(
                onPressed: () {
                  context.read<RajaongkirBloc>().add(ChangeOngkir());
                },
                child: const Text("Hit API")),
            (state is RajaongkirValue)
                ? Text("" + state.value)
                : const Text("0"),
          ]),
        );
      }),
    );
  }
}
