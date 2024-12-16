part of 'home_page.dart';

mixin ClientHomePageMixin on State<ClientHomePage> {
  ClientHomeBloc get clientHomeBloc => context.read<ClientHomeBloc>();

  void clearType() {
    clientHomeBloc.add(const ClientHomeEvent.selectRealEstate(type: null));
  }

  void selectType(RealEstateType realEstateType) {
    clientHomeBloc.add(ClientHomeEvent.selectRealEstate(type: realEstateType));
  }

  void clearRegion() {
    clientHomeBloc.add(const ClientHomeEvent.selectRegion(region: null));
  }

  void selectRegion(String region) {
    clientHomeBloc.add(ClientHomeEvent.selectRegion(region: region));
  }
}
