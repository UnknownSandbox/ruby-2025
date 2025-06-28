block = proc { |x| x.even? }
p [*1..10].select(&block) # [2, 4, 6, 8, 10]
p :even?.to_proc

p([1, 2, 3, 4, 5].reduce { |m, x| m * x }) # 120
p [1, 2, 3, 4, 5].reduce(&:*)
p [1, 2, 3, 4, 5].reduce(:*)
