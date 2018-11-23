def run_once(&block)
  count = 1
  lambda do
    return if count == nil
    count = nil
    yield
  end
end

a = run_once { puts "hello" }
a.call #=> "hello"
a.call #=> nil
a.call #=> nil
a.call #=> nil
