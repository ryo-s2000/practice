def judge(age)
  adult = Proc.new{ |n| n > 20 }
  child = Proc.new{ |n| n < 20 }

  case age
  when adult
    'You are adult.'
  when child
    'You are child.'
  else
    'You are 20.'
  end
end

p judge(26)
p judge(16)
p judge(20)

reverse_proc = Proc.new{ |s| s.reverse }
p ['Ruby', 'Java', 'Perl'].map(&reverse_proc)

split_proc = :split.to_proc
p split_proc.call('a-b-c-d e')
p split_proc.call('a-b-c-d e', '-')
p split_proc.call('a-b-c-d e', '-', 3)

def generate_proc(array)
  counter = 0

  Proc.new do
    counter += 10
    array << counter
  end
end

values = []
sample_proc = generate_proc(values)
sample_proc.call
p values
sample_proc.call
p values
sample_proc.call
p values
