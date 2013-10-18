require "./gcd.rb" #Máximo Común Divisor

def gcm(u,v)
  u, v = u.abs, v.abs
  (u/gcd(u,v))*v
end