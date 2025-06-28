pr = proc { |n| n * n }
p pr.call(3)
lb = ->(n) { n * n }
p lb.call(3)

pr = proc { |m, n| m * n }
p (1..5).reduce(&pr)
