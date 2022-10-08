Pod::Spec.new do |s|
  s.name             = 'Finance'

  s.dependency 'FinanceIO'
  s.dependency 'OperationsIO'
  s.dependency 'AccountIO'
  s.dependency 'MBUIFoundation'
  s.dependency 'ConcurrencyPrimitives'
  s.dependency 'SensitiveModeKitIO'
  s.dependency 'AccountCardsIO'
  s.dependency 'ProductsHomeIO'
  s.dependency 'AccountDetailsIO'
  s.dependency 'DepositsIO'
  s.dependency 'SelfServiceIO'
  s.dependency 'TPrivateAvailabilityInterfaces'

  s.dependency 'FeatureToggles'
  s.dependency 'MobileBankUI'
  s.dependency 'MobileBankPlatform'
  s.dependency 'MobileBankUtils'
  s.dependency 'MBLocalization'
  s.dependency 'TinkoffCalendar'
  s.dependency 'TinkoffServiceIcons'
  s.dependency 'TinkoffUIFoundation'
  s.dependency 'TinkoffUI'
  s.dependency 'MBUIComponents'

end
