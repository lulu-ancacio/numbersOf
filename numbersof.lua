local numbersOf = {}

---------Support Functions---------

local function factorial(n)
    local fac_n = 1
    for i=n, 1, -1 do
      fac_n = fac_n * i  
    end
    return fac_n
end

local function binomial(n, m)
    return factorial(n)/(factorial(m)*factorial(n-m))
  end

local function zeta(n)
    local zeta_n = 0
        for i=1, 10000000 do
          zeta_n = zeta_n + 1/i^n
        end
    return zeta_n
end

local function stirlingS2(n, m)
    local stirling_n = 0
    for k=0, m do
      stirling_n = stirling_n + ((-1)^(m-k))*binomial(m, k)*(k^n)
    end
    return stirling_n/factorial(m)
  end

local function risingFactorial(n, m)
    local risingFac_n = 1
    for i=0, m-1 do
        risingFac_n = risingFac_n*(n+i)
    end
    return risingFac_n
end

-------------Sequences-------------

function numbersOf.metalic(n)
    if n ~= math.floor(n) or math.abs(n) ~= n then
        return nil
    else
        return (n+math.sqrt(4+n^2))/2
    end
end

function numbersOf.harmonic(n, m)
    local harmonic_n = 0
    if n ~= math.floor(n) or math.abs(n) ~= n then
        return nil
    else
        for i=1, n do
            harmonic_n = harmonic_n + 1/i^m
        end
        return harmonic_n
    end
end

function numbersOf.mersenne(n)
    if n ~= math.floor(n) or math.abs(n) ~= n then
        return nil
    else
        return -1+2^n
    end
end

function numbersOf.catalan(n)
    local catalan_n = 1
    if n ~= math.floor(n) or math.abs(n) ~= n then
        return nil
    else
        for i=2, n do
            catalan_n = catalan_n*(n+i)/i
        end
        return catalan_n
    end
end

function numbersOf.polygonal(n, m)
    if n<3 or (n or m) ~= math.floor(n or m) or math.abs(m) ~= m or m == 0 then
        return nil
    else
        return (m^2)*((n/2)-1)-((n/2)-2)*m
    end
end

function numbersOf.fermat(n)
    if n ~= math.floor(n) or math.abs(n) ~= n then
        return nil
    else
        return (2^(2^n))+1
    end
end

function numbersOf.fibonacci(n)
    if n ~= math.floor(n) or math.abs(n) ~= n then
        return nil
    elseif n == 0 then
        return 0
    elseif n == 1 or n == 2 then
        return 1
    else
        return numbersOf.fibonacci(n-1)+numbersOf.fibonacci(n-2)
    end
end

function numbersOf.tribonacci(n)
    if n ~= math.floor(n) or math.abs(n) ~= n then
        return nil
    elseif n == 0 then
        return 0
    elseif n == 1 or n == 2 then
        return 1
    elseif n == 3 then
        return 2
    else
        return numbersOf.tribonacci(n-1)+numbersOf.tribonacci(n-2)+numbersOf.tribonacci(n-3)
    end
end

function numbersOf.tetranacci(n)
    if n ~= math.floor(n) or math.abs(n) ~= n then
        return nil
    elseif n == 0 then
        return 0
    elseif n == 1 or n == 2 then
        return 1
    elseif n == 3 then
        return 2
    else
        return numbersOf.tetranacci(n-1)+numbersOf.tetranacci(n-2)+numbersOf.tetranacci(n-3)+numbersOf.tetranacci(n-4)
    end
end

function numbersOf.pentanacci(n)
    if n ~= math.floor(n) or math.abs(n) ~= n then
        return nil
    elseif n == 0 then
        return 0
    elseif n == 1 or n == 2 then
        return 1
    elseif n == 3 then
        return 2
    elseif n == 4 then
        return 4
    else
        return numbersOf.pentanacci(n-1)+numbersOf.pentanacci(n-2)+numbersOf.pentanacci(n-3)+numbersOf.pentanacci(n-4)+numbersOf.pentanacci(n-5)
    end
end

function numbersOf.hexanacci(n)
    if n ~= math.floor(n) or math.abs(n) ~= n then
        return nil
    elseif n == 0 then
        return 0
    elseif n == 1 or n == 2 then
        return 1
    elseif n == 3 then
        return 2
    elseif n == 4 then
        return 4
    elseif n == 5 then
        return 8
    else
        return numbersOf.hexanacci(n-1)+numbersOf.hexanacci(n-2)+numbersOf.hexanacci(n-3)+numbersOf.hexanacci(n-4)+numbersOf.hexanacci(n-5)+numbersOf.hexanacci(n-6)
    end
end

function numbersOf.heptanacci(n)
    if n ~= math.floor(n) or math.abs(n) ~= n then
        return nil
    elseif n == 0 then
        return 0
    elseif n == 1 or n == 2 then
        return 1
    elseif n == 3 then
        return 2
    elseif n == 4 then
        return 4
    elseif n == 5 then
        return 8
    elseif n == 6 then
        return 16
    else
        return numbersOf.heptanacci(n-1)+numbersOf.heptanacci(n-2)+numbersOf.heptanacci(n-3)+numbersOf.heptanacci(n-4)+numbersOf.heptanacci(n-5)+numbersOf.heptanacci(n-6)+numbersOf.heptanacci(n-7)
    end
end

function numbersOf.leonardo(n)
    if n ~= math.floor(n) or math.abs(n) ~= n then
        return nil
    elseif n == 0 or n == 1 then
        return 1
    else
        return numbersOf.leonardo(n-1)+numbersOf.leonardo(n-2)+1
    end
end

function numbersOf.lucas(n)
    if n ~= math.floor(n) or math.abs(n) ~= n then
        return nil
    elseif n == 0 then
        return 2
    elseif n == 1 then
        return 1
    else
        return numbersOf.lucas(n-1)+numbersOf.lucas(n-2)
    end
end

function numbersOf.jacobsthal(n)
    if n ~= math.floor(n) or math.abs(n) ~= n then
        return nil
    elseif n == 0 then
        return 0
    elseif n == 1 then
        return 1
    else
        return numbersOf.jacobsthal(n-1)+2*numbersOf.jacobsthal(n-2)
    end
end

function numbersOf.pell(n)
    if n ~= math.floor(n) or math.abs(n) ~= n then
        return nil
    elseif n == 0 then
        return 0
    elseif n == 1 then
        return 1
    else
        return 2*numbersOf.pell(n-1)+numbersOf.pell(n-2)
    end
end

function numbersOf.golomb(n)
    if n ~= math.floor(n) or math.abs(n) ~= n then
        return nil
    elseif n == 1 then
        return 1
    else
        return 1+numbersOf.golomb(n-numbersOf.golomb(numbersOf.golomb(n-1)))
    end
end

function numbersOf.padovan(n)
    if n ~= math.floor(n) or math.abs(n) ~= n then
        return nil
    elseif n == 0 or n == 1 or n == 2 then
        return 1
    else
        return numbersOf.padovan(n-2)+numbersOf.padovan(n-3)
    end
end

function numbersOf.perrin(n)
    if n ~= math.floor(n) or math.abs(n) ~= n then
        return nil
    elseif n == 0 then
        return 3
    elseif n == 1 then
        return 0
    elseif n == 2 then
        return 2
    else
        return numbersOf.perrin(n-2)+numbersOf.perrin(n-3)
    end
end

function numbersOf.cullen(n)
    if n ~= math.floor(n) or math.abs(n) ~= n then
        return nil
    else
        return n*(2^n)+1
    end
end

function numbersOf.motzkin(n)
    if n ~= math.floor(n) or math.abs(n) ~= n then
        return nil
    elseif n == 0 or n == 1 then
        return 1
    else
        return (((2*n+1)/(n+2))*numbersOf.motzkin(n-1))+(((3*n-3)/(n+2))*numbersOf.motzkin(n-2))
    end
end

function numbersOf.repunit(n, m)
    if n ~= math.floor(n) or m ~= math.floor(m) or math.abs(n) ~= n or n == 0 or m<2 then
        return nil
    else
        return (-1+m^n)/(m-1)
    end
end

function numbersOf.woodall(n)
    if n ~= math.floor(n) or math.abs(n) ~= n or n == 0 then
        return nil
    else
        return n*(2^n)-1
    end
end

function numbersOf.star(n)
    if n ~= math.floor(n) or math.abs(n) ~= n or n == 0 then
        return nil
    else
        return 6*n*(n-1)+1
    end
end

function numbersOf.oblongo(n)
    if n ~= math.floor(n) or math.abs(n) ~= n then
        return nil
    else
        return n*(n+1)
    end
end

function numbersOf.thabit(n)
    if n ~= math.floor(n) or math.abs(n) ~= n then
        return nil
    else
        return 3*(2^n)-1
    end
end

function numbersOf.belphegor(n)
    if n ~= math.floor(n) or math.abs(n) ~= n then
        return nil
    else
        return 10^(4+2*n)+666*(10^(n+1))+1
    end
end

function numbersOf.narayana(n, m)
    if n>0 and m<=n and 1<=n and (n and m) == math.floor(n and m) and (n and m) ~= 0 then
        return (1/n)*binomial(n, m)*binomial(n, (m-1))
    else
        return nil
    end
end

function numbersOf.hermite(n)
    if n ~= math.floor(n) or math.abs(n) ~= n then
        return nil
    elseif n/2 == math.floor(n/2) or n == 0 then
        return (((-1)^(n/2))*factorial(n))/(factorial(n/2))
    else
        return 0
    end
end

function numbersOf.connell(n)
    if n ~= math.floor(n) or math.abs(n) ~= n or n == 0 then
        return nil
    else
        return (2*n)-math.floor((1/2)*(1+math.sqrt(8*n-7)))
    end
end

function numbersOf.apery(n)
    local apery_n = 0
    if n ~= math.floor(n) or math.abs(n) ~= n then
        return nil
    else
        for i=0, n do
            apery_n = apery_n + (binomial(n, i)^2)*(binomial((n+i), i))^2
        end
    end
    return apery_n
end

function numbersOf.gregory(n)
    return math.atan(1/n)
end

function numbersOf.beraha(n)
    if n ~= math.floor(n) or math.abs(n) ~= n and n == 0 then
        return nil
    else
        return 2+2*math.cos(2*math.pi*(1/n))
    end
end

----------Approximations-----------

function numbersOf.bernoulli(n)
    if n/2 == math.floor(n/2) and n ~= 0 then
      return ((-1)^(1+(n/2)))*((2*factorial(n))/(2*math.pi)^(n))*zeta(n)
    elseif n == 0 then
      return 1
    elseif n == 1 then
      return -0.5
    else
      return 0
    end
end

function numbersOf.genocchi(n)
    if n ~= math.floor(n) or math.abs(n) ~= n then
        return nil
    elseif n == 1 then
        return -1
    elseif n == 2 then
        return math.floor(2*(1-2^n)*numbersOf.bernoulli(n))
    elseif n == 4 then
        return math.ceil(2*(1-2^n)*numbersOf.bernoulli(n))
    else
        return 2*(1-2^n)*numbersOf.bernoulli(n)
    end
end

function numbersOf.euler(n)
    local euler_n = 0
    if n ~= math.floor(n) or math.abs(n) ~= n then
        return nil
    elseif n == 0 then
        return 1
    else
        for  i=1, n do
            euler_n = euler_n + ((((-1)^i)*stirlingS2(n, i))/(i+1))*(3*risingFactorial(1/4, i)-risingFactorial(3/4, i))
        end
        return euler_n*2^(2*n-1)
    end
end

function numbersOf.tangent(n)
    if n ~= math.floor(n) or math.abs(n) ~= n or n == 0 then
        return nil
    else
        return ((2^(2*n))*((2^(2*n))-1))*math.abs(numbersOf.bernoulli(2*n))*(1/(2*n))
    end
end

--------------Return---------------

return numbersOf
