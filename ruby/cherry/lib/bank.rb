require './lib/deep_freezable'

class Bank
  extend DeepFreezable

  COUNTRIES = deep_feeze({'Japan' => 'yen', 'USA' => 'doller', 'India' => 'rupee'})
end