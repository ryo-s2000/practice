require './lib/deep_freezable'

class Team
  extend DeepFreezable

  COUNTRIES = deep_feeze(['Japan', 'USA', 'India'])
end