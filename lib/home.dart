import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Lista com URLs das imagens
  final List<String> imageUrls = [
    'https://cryptologos.cc/logos/bitcoin-btc-logo.png',
    'https://cryptologos.cc/logos/ethereum-pow-ethw-logo.png',
    'https://cryptologos.cc/logos/tether-usdt-logo.png',
    'https://cryptologos.cc/logos/bnb-bnb-logo.png',
    'https://cdn-icons-png.flaticon.com/512/6001/6001527.png',
    'https://png.pngtree.com/png-vector/20220709/ourmid/pngtree-usd-coin-usdc-digital-stablecoin-icon-technology-pay-web-vector-png-image_37843734.png',
    'https://static.vecteezy.com/system/resources/previews/024/093/519/original/xrp-glass-crypto-coin-3d-illustration-free-png.png',
    'https://upload.wikimedia.org/wikipedia/pt/d/d0/Dogecoin_Logo.png',
    'https://cdn-icons-png.flaticon.com/512/12114/12114250.png',
  ];

  // Lista com os preços correspondentes
  final List<double> prices = [
    659.32, 400.55, 123.45, 567.89, 789.10, 234.56, 345.67, 456.78, 567.89
  ];

  // Lista de títulos
  final List<String> titles = [
    'Bitcoin', 'Ethereum', 'Tether', 'BNB', 'USD Coin',
    'Ripple', 'Cardano', 'Dogecoin', 'Polkadot'
  ];

  // Lista de descrições
  final List<String> descriptions = [
    'Criptomoeda descentralizada', 'Plataforma de contratos inteligentes',
    'Stablecoin atrelada ao dólar', 'Moeda da Binance',
    'Stablecoin regulada', 'Protocolo de pagamento',
    'Blockchain sustentável', 'Moeda meme famosa',
    'Rede de blockchain interoperável'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.orange,
        title: Text(
          'Preços de criptomoedas',
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.network(
                        imageUrls[index],
                        width: 50,
                        height: 50,
                      ),
                      SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            titles[index],
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            descriptions[index],
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    'R\$${prices[index].toStringAsFixed(2)}',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}