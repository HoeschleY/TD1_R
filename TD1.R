#= Com
# Maj pris en compte en R
#EXO 1
a= 10
b = 5

A = 7.2
B= 10.1

resultat = a * b
print(resultat)

rm(A,B,b,a,resultat)



#EXO 2 Les fonctions c(), class

v1 <- c(1,2,3,4,5)
#class(V1) ne marche pas on ne sait pas pk
v1[3]
v2 = v1 +3

v3 = c(v1,6) # ou v3 <- 1:6
v4 = v3**2
v5 = v4/2
vsemaine <- c("Lundi", "Mardi", "Mercredi", "Jeudi", "Vendredi", "Samedi", "Dimanche")
class(vsemaine)
vsemaine[c(2,7)]
v6 = c(0,1)
class(v6)

v7 = c(1.1,1.2,1.3,1.4,1.5,1.6,1.7)
class(v7)
v7[-3]

vmois = c("J","F","M","A","M","J","J","A","S","O","N","D")
class(vmois)
vmois[c(1,2,3)]

v8 = c(-1,-2,-3,-4,-5,-6)
class(v8)
v8[c(1,6)]

v9 = c("Pommes","Poires","Fraises","Oranges","Banane")
class(v9)
v9[3:5] #ou v[-c(1,2)]

v10 = c(1,2,NA,4,5)
class(v10)
rm(list = ls())

# Les fonctions c(), seq(), length()

s1 = seq(1,10)
l1 = length(s1)


s2 = seq(2,20,2)
l2 = length(s2)

s3 = seq(0,-5)
l3 = length(s3)


s4 = seq(5,50,5)
l4 = length(s4)

s5 = seq(10,1)
l5 = length(s5)

s6 = seq(0,1,0.1)
l6 = length(s6)

s7 = seq(5,-5)
l7 = length(s7)

s8 = seq(1,10,2)
l8 = length(s8)

rm(list = ls())

#Les fonctions c(), rep()

v1 = c(rep(3,5))

v2 = c(rep(c("A","B","C"),3))

v3 = c(rep(c(1,2,3),3)) # ou vecteur = rep(1:3, times = 3)

v4 = c(rep(c("TRUE","FALSE"),4))

rm(list = ls())


#EXO 3
#Les fonctions runif(), mean(), median(), min(), max()

v1 = c(runif(5,0,1))
v1
mean(v1)
median(v1)
min(v1)
max(v1)

v2 = c(runif(10,-5,5))

v3 =  c(runif(100,10,20))

v4 = c(runif(15,50,100))

rm(list = ls())
# Les fonctions rnorm(), mean(), sd(), hist(), quantile()

v1 = c(rnorm(20,-2,3))


#echantillon <- rnorm(n = 200, mean = -2, sd = 3)
#moyenne <- mean(echantillon)
#ecart_type <- sd(echantillon)
#print(paste("Moyenne : ", moyenne))
#print(paste("Écart-type : ", ecart_type))
#hist(echantillon)

v2 = c(rnorm(2000,-2,3))
moyenne = mean(v2)
etype = sd(v2)

v3 = c(quantile(v2,c(0.25,0.5,0.75)))

v4 = c(quantile(v2,c(seq(0,1,0.1))))

v5 = c(quantile(v2,c(seq(0,1,0.01))))
rm(list = ls())

#Les fonctions sum() , round()

v1 = c(rnorm(3000,2400,300))
moyenne = mean(v1)
etype = sd(v1)

v2 = c(round(rnorm(3000,2400,300),2))

massesalariale = sum(v1)

meidanne = median(v1)

q99 = quantile(v1,0.99)

q20 = quantile(v1,0.20)

rm(list = ls())

#Les fonctions sample(), table(), prop.table() , unique(), sort()

sample(x = c(1,2,3,4,5,6), size = 1)

simulation = sample(c(1,2,3,4,5,6), size = 12, replace = TRUE)
            
unique(simulation)
table(simulation)

sort(table(simulation),FALSE)

prop.table(table(simulation),NULL)

simulation2 = sample(c(1,2,3,4,5,6), size = 100000, replace = TRUE)

sort(prop.table(table(simulation2),NULL))
print("Oui, d'après la loi des grands nombres, les probabilités d'obtenir chacune des faces se rapprochent des probabilités théoriques.")
