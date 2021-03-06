#Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
  # 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

f = c(1,2)
while (max(f) < 4000000) {
  i = length(f)
  f = c(f, f[i-1] + f[i])
}

value = sum(f[f%%2 == 0])