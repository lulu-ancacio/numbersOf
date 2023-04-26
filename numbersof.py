import math

#---------Support Functions---------

def factorial(n):
    fac = 1
    for i in range(1, (n+1)):
        fac *=i 
    return fac

def binomial(n, m):
    return factorial(n)/(factorial(m)*factorial(n-m))
  
def zeta(n):
    zeta_n = 0
    for i in range(1, 100001):
        zeta_n += 1/i**n
    return zeta_n

def stirlingS2(n, m):
    stirling_n = 0
    for k in range(0, m):
      stirling_n += ((-1)**(m-k))*binomial(m, k)*(k**n)
    return stirling_n/factorial(m)
  
def risingFactorial(n, m):
    risingFac_n = 1
    for i in range(0, (m-1)):
        risingFac_n *= (n+i)
    return risingFac_n

#-------------Sequences-------------

def metalic(n):
    if n != math.floor(n) or abs(n) != n:
        return None
    else:
        return (n+math.sqrt(4+n**2))/2
    
def harmonic(n, m):
    harmonic_n = 0
    if n != math.floor(n) or abs(n) != n:
        return None
    else:
        for i in range(1, n):
            harmonic_n += 1/i**m
        return harmonic_n
    
def mersenne(n):
    if n != math.floor(n) or abs(n) != n:
        return None
    else:
        return -1+2**n
    
def catalan(n):
    catalan_n = 1
    if n != math.floor(n) or abs(n) != n:
        return None
    else:
        for i in range(2, n):
            catalan_n = catalan_n*(n+i)/i
        return catalan_n
    
def polygonal(n, m):
    if n<3 or (n or m) != math.floor(n or m) or abs(m) != m or m == 0:
        return None
    else:
        return (m**2)*((n/2)-1)-((n/2)-2)*m
    
def fermat(n):
    if n != math.floor(n) or abs(n) != n:
        return None
    else:
        return (2**(2**n))+1
    
def fibonacci(n):
    if n != math.floor(n) or abs(n) != n:
        return None
    elif n == 0:
        return 0
    elif n == 1 or n == 2:
        return 1
    else:
        return fibonacci(n-1)+fibonacci(n-2)
    
def tribonacci(n):
    if n != math.floor(n) or abs(n) != n:
        return None
    elif n == 0:
        return 0
    elif n == 1 or n == 2:
        return 1
    elif n == 3:
        return 2
    else:
        return tribonacci(n-1)+tribonacci(n-2)+tribonacci(n-3)
    
def tetranacci(n):
    if n != math.floor(n) or abs(n) != n:
        return None
    elif n == 0:
        return 0
    elif n == 1 or n == 2:
        return 1
    elif n == 3:
        return 2
    else:
        return tetranacci(n-1)+tetranacci(n-2)+tetranacci(n-3)+tetranacci(n-4)
    
def pentanacci(n):
    if n != math.floor(n) or abs(n) != n:
        return None
    elif n == 0:
        return 0
    elif n == 1 or n == 2:
        return 1
    elif n == 3:
        return 2
    elif n == 4:
        return 4
    else:
        return pentanacci(n-1)+pentanacci(n-2)+pentanacci(n-3)+pentanacci(n-4)+pentanacci(n-5)
    
def hexanacci(n):
    if n != math.floor(n) or abs(n) != n:
        return None
    elif n == 0:
        return 0
    elif n == 1 or n == 2:
        return 1
    elif n == 3:
        return 2
    elif n == 4:
        return 4
    elif n == 5:
        return 8
    else:
        return hexanacci(n-1)+hexanacci(n-2)+hexanacci(n-3)+hexanacci(n-4)+hexanacci(n-5)+hexanacci(n-6)
    
def heptanacci(n):
    if n != math.floor(n) or abs(n) != n:
        return None
    elif n == 0:
        return 0
    elif n == 1 or n == 2:
        return 1
    elif n == 3:
        return 2
    elif n == 4:
        return 4
    elif n == 5:
        return 8
    elif n == 6:
        return 16
    else:
        return heptanacci(n-1)+heptanacci(n-2)+heptanacci(n-3)+heptanacci(n-4)+heptanacci(n-5)+heptanacci(n-6)+heptanacci(n-7)
    
def leonardo(n):
    if n != math.floor(n) or abs(n) != n:
        return None
    elif n == 0 or n == 1:
        return 1
    else:
        return leonardo(n-1)+leonardo(n-2)+1
    
def lucas(n):
    if n != math.floor(n) or abs(n) != n:
        return None
    elif n == 0:
        return 2
    elif n == 1:
        return 1
    else:
        return lucas(n-1)+lucas(n-2)
    
def jacobsthal(n):
    if n != math.floor(n) or abs(n) != n:
        return None
    elif n == 0:
        return 0
    elif n == 1:
        return 1
    else:
        return jacobsthal(n-1)+2*jacobsthal(n-2)
    
def pell(n):
    if n != math.floor(n) or abs(n) != n:
        return None
    elif n == 0:
        return 0
    elif n == 1:
        return 1
    else:
        return 2*pell(n-1)+pell(n-2)
    
def golomb(n):
    if n != math.floor(n) or abs(n) != n:
        return None
    elif n == 1:
        return 1
    else:
        return 1+golomb(n-golomb(golomb(n-1)))
    
def padovan(n):
    if n != math.floor(n) or abs(n) != n:
        return None
    elif n == 0 or n == 1 or n == 2:
        return 1
    else:
        return padovan(n-2)+padovan(n-3)

def perrin(n):
    if n != math.floor(n) or abs(n) != n:
        return None
    elif n == 0:
        return 3
    elif n == 1:
        return 0
    elif n == 2:
        return 2
    else:
        return perrin(n-2)+perrin(n-3)
    
def cullen(n):
    if n != math.floor(n) or abs(n) != n:
        return None
    else:
        return n*(2**n)+1
    
def motzkin(n):
    if n != math.floor(n) or abs(n) != n:
        return None
    elif n == 0 or n == 1:
        return 1
    else:
        return (((2*n+1)/(n+2))*motzkin(n-1))+(((3*n-3)/(n+2))*motzkin(n-2))
    
def repunit(n, m):
    if n != math.floor(n) or m != math.floor(m) or abs(n) != n or n == 0 or m<2:
        return None
    else:
        return (-1+m**n)/(m-1)
    
def woodall(n):
    if n != math.floor(n) or abs(n) != n or n == 0:
        return None
    else:
        return n*(2**n)-1
    
def star(n):
    if n != math.floor(n) or abs(n) != n or n == 0:
        return None
    else:
        return 6*n*(n-1)+1
    
def oblongo(n):
    if n != math.floor(n) or abs(n) != n:
        return None
    else:
        return n*(n+1)
    
def thabit(n):
    if n != math.floor(n) or abs(n) != n:
        return None
    else:
        return 3*(2**n)-1

def belphegor(n):
    if n != math.floor(n) or abs(n) != n:
        return None
    else:
        return 10**(4+2*n)+666*(10**(n+1))+1
 
def narayana(n, m):
    if n>0 and m<=n and 1<=n and (n and m) == math.floor(n and m) and (n and m) != 0:
        return (1/n)*binomial(n, m)*binomial(n, (m-1))
    else:
        return None

def hermite(n):
    if n != math.floor(n) or abs(n) != n:
        return None
    elif n/2 == math.floor(n/2) or n == 0:
        return (((-1)**(n/2))*factorial(n))/(factorial(n/2))
    else:
        return 0

def connell(n):
    if n != math.floor(n) or abs(n) != n or n == 0:
        return None
    else:
        return (2*n)-math.floor((1/2)*(1+math.sqrt(8*n-7)))

def apery(n):
    apery_n = 0
    if n != math.floor(n) or abs(n) != n:
        return None
    else:
        for i in range(0, n):
            apery_n += (binomial(n, i)**2)*(binomial((n+i), i))**2 
        return apery_n

def gregory(n):
    return math.atan(1/n)

def beraha(n):
    if n != math.floor(n) or abs(n) != n and n == 0:
        return None
    else:
        return 2+2*math.cos(2*math.pi*(1/n))

#----------Approximations-----------

def bernoulli(n):
    if n/2 == math.floor(n/2) and n != 0:
      return ((-1)**(1+(n/2)))*((2*factorial(n))/(2*math.pi)**(n))*zeta(n)
    elif n == 0:
      return 1
    elif n == 1:
      return -0.5
    else:
      return 0

def genocchi(n):
    if n != math.floor(n) or abs(n) != n:
        return None
    elif n == 1:
        return -1
    elif n == 2:
        return math.floor(2*(1-2**n)*bernoulli(n))
    elif n == 4:
        return math.ceil(2*(1-2**n)*bernoulli(n))
    else:
        return 2*(1-2**n)*bernoulli(n)

def euler(n):
    euler_n = 0
    if n != math.floor(n) or abs(n) != n:
        return None
    elif n == 0:
        return 1
    else:
        for  i in range(1, n):
            euler_n = euler_n + ((((-1)**i)*stirlingS2(n, i))/(i+1))*(3*risingFactorial(1/4, i)-risingFactorial(3/4, i))
        return euler_n*2**(2*n-1)

def tangent(n):
    if n != math.floor(n) or abs(n) != n or n == 0:
        return None
    else:
        return ((2**(2*n))*((2**(2*n))-1))*abs(bernoulli(2*n))*(1/(2*n))
