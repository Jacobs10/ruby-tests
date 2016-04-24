def measure(n=1)
  x = Time.now
  n.times do
    yield()
  end
  t = Time.now
  elapsed = (t-x)/n
end
