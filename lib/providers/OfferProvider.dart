import 'package:e_commerce_app_with_getx/models/offers/OfferModel.dart';
import 'package:e_commerce_app_with_getx/repositories/OfferRepository.dart';

class OfferProvider {
  final OfferRepository _offerRepository;

  OfferProvider(this._offerRepository);

  Future<List<OfferModel>> getOffers() async {
    var offers = await _offerRepository.getOffers();

    return offers.map((offer) => OfferModel.fromJson(offer)).toList();
  }
}
