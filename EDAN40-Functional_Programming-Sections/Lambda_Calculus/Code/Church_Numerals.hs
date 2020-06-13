type ChurchNatural a = (a -> a) -> (a -> a)

zeroC, oneC, twoC :: ChurchNatural a
zeroC f = id -- zeroC = const id, adding zero to something is something
oneC f = f -- oneC = id
twoC f = f.f

succC n f = f.(n f)
threeC = succC twoC

plusC x y f = (x f).(y f)
timeC x y = x.y
expC x y = y x
