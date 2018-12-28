def convert_hash_syntax(old_syntax)
  # old_syntax.gsub(/:(\w+) *=> */,'\1:')
  old_syntax.gsub(/:(\w+) *=> */, '\1: ')
  # actle = old_syntax.gsub(/:(\w+) *=> */,'\1:')
  # puts actle
  # assert_equal expected, actle
end
