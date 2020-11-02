# fibonacci sequence - returns 'n' members of the sequence

# linear 
def fibs(n)
  seq = [0, 1]
  return "" if n == 0
  return "0" if n == 1
  while (seq.length - 1) < n
    seq << seq[-2] + seq[-1]
  end
  return seq[0..-2].join(', ')
end

# recursive
def fibs_rec(n, seq=(n == 0 ? ["", "", ""] : [0, 1]))
  return seq[0..-3].join(', ') if n == 0
  seq << seq[-2] + seq[-1]
  return fibs_rec(n-1, seq)
end

p fibs(0)
p fibs(1)
p fibs(2)
p fibs(3)
p fibs(5)
puts "-------"
p fibs_rec(0)
p fibs_rec(1)
p fibs_rec(2)
p fibs_rec(3)
p fibs_rec(5)