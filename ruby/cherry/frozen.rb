# class Team
#   COUNTRIES = deep_freez(['Japan', 'USA', 'India'])
# end
#
# Team::COUNTRIES.frozen?
# Team::COUNTRIES.all?{|country| country.frozen?}
#
# class Bank
#   COUNTRIES = deep_freez({'Japna' => 'yen', 'USA' => 'doller', 'India' => 'rupee'})
# end
#
# Bank::COUNTRIES.frozen?
# Bank::COUNTRIES.all?{|key,value| key.frozen? && value.frozen?}

module DeepFreezable
  def deep_freeza(array_or_hash)

  end
end
