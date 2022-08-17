#BIENVENIDOS A LA MATERIA PRG/PDA

#Utilizaremos la tecla # cuando queremos comentar algo o dejar una nota.C
#Es importante comentar lo que se realiza en los scripts



# LA COMBINACIÓN DE TECLAS <Ctrl ENTER>  corre lo seleccionado 

# <Ctrl 1>     y      <Ctrl 2>    permiten pasar de la ventana de script (arriba) a la consola de abajo.

# <Ctrl S>   graba

# <Ctrl A> selecciona todo el contenido de la ventana de Scripts.

# <cTRL l> LIMPIA LA CONSULA

# ESC   INTERRUMPE EL PROCESO CORRIENDO EN R


#Siempre antes de empezar borramos cualquier objeto en memoria con:


rm(list=ls(all = TRUE))

# otra forma"click en la "escoba"que se encuentra en el environment


# En R podemos hacer cuentas...
#Dividir
12/6
#Multiplicar
25*2
#Sumar
39696+410
#Restar
30-2
#Potenciacion
5^2
#Radicacion
sqrt(4)
#Numero e
exp(1)
#Logaritmo neperiano
log(4)
#Logaritmo  base 10
log10(10)
#Valor absoluto de un numero
abs(-3)
#Numero pi
pi

#Operaciones combinadas:
((20-2)*3)/(log10(100)+sqrt(125))

#VECTORES

vector_a_1<-c(1,3,5,7)
vector_a_1
vector_a_2<-c(4,5,8,9)
vector_a_3<-c("a","b","c","d")
vector_a_4<-c(TRUE,FALSE,TRUE,TRUE)

mode(vector_a_1) 
mode(vector_a_2); mode(vector_a_3); mode(vector_a_4)
length(vector_a_1)
length(vector_a_2);length(vector_a_3);length(vector_a_4)
str(vector_a_1)
str(vector_a_2);str(vector_a_3);str(vector_a_4)
summary(vector_a_1)



# otro ejemplo: vector con longitud 1

a<-6


mode(a)
length(a)

#Supongamos que quiero eliminar el vector a, uso la funcion rm
rm(a)

############################################################################
rm(list = ls(all = TRUE))

pais<-c("Japan", "Argentina", "Australia", "Bulgaria", "Egypt", "Ethiopia")  
t_nat<-c(8.7, 18.414, 14, 10.4, 25.928, 36.062)
t_nat


poblacion<-c(127317900, 40381860,  21370348, 751364600,  78976122,  8307960800) 
poblacion

# voy a crear un nuevo vector llamado nacimientos
# nacimientos =poblacion* tasa_de natalidad/1000
nacimientos<-poblacion*t_nat/1000
nacimientos

infectados_año1<-c(10,12,11,3,7)
infectados_año2<-c(11,12,14,5,5)
infectados_totales<-infectados_año1+infectados_año2
infectados_totales
pob_expuesta_año1<-c(500,550,468,200, 180)
pob_expuesta_año2<-c(530,565,470,205, 190)


prevalencia_año1 <- infectados_año1 / pob_expuesta_año1 * 100
prevalencia_año1

#cual es el pais que se encuentra en el 2do lugar?
pais[2]
#Argentina

#cuantos habitantes hay en el 2do y 3er lugar en el vector poblacion?
poblacion[c(2,3)]
#40381860 21370348
#Quiero saber los nacimientos de las posiciones 2 a la 4
nacimientos[2:4]
nacimientos[c(2,4)]

nacimientos[1]
#743591.6  299184.9 7814191.8
# También podemos identificar la posición del maximo y minimo valor, usando which max y which min
which.max(nacimientos)
which.min(nacimientos)



#2 FACTOR: es un vector que tiene una cantidad limitada de posibles valores. Es lo que 
# en Estadística llamamos variable categórica. No sólo incluye los valores de cada observación
# sino los "niveles" o valores que puede asumir. 
# Ej:
factor_b<-factor(c(1,2,3,1,3,1,2,1,1,1,2,2), levels = c(1,2,3))

table((factor_b))

# otro ejemplo
fuma<-c(1, 3, 1, 1, 3, 99, 3, 2, 2, 1, 2, 2, 1, 1, 3, 3, 1, 3, 3, 3, 3, 3, 3, 3, 1, 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 99, 3, 1, 1, 1, 3, 2, 3, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 2, 2, 3, 1, 2, 1, 2, 1, 3, 3, 1, 1, 2, 1, 2, 1, 3, 1, 1, 2, 3, 1, 1, 1, 1, 3, 1, 3, 3, 1, 3, 1, 1, 2, 1, 3, 1, 1, 1, 1, 1, 1, 3, 2, 1, 1, 2, 1, 1, 1, 1, 3, 1, 3, 3, 3, 3, 1, 99, 2, 2, 3, 3, 1, 1, 2, 2, 1, 1, 2, 3, 3, 1, 99, 3, 1, 1, 1, 3, 1, 1, 1, 1, 2, 2, 2, 1, 3, 2, 3, 1, 3, 2, 3, 3, 99, 3, 3, 2, 2, 3, 1, 2, 1, 3, 3, 3, 2, 1, 3, 2, 1, 1, 1, 2, 3, 3, 2, 1, 2, 1, 3, 3, 1, 2, 1, 2, 2, 3, 1, 2, 1, 2, 3)
length(fuma)
#Etiquetas:
#  1  Todos los días
#  2  Algunos días a semana
#  3  No fuma
#  99 No Sabe/No contesta

fuma_f<-factor(fuma, levels = c(1,2,3,99), labels = c("Todos los dias", "Algunos dias a la semana","No fuma","No sabe / No contesta"))
fuma_f
table(fuma_f)



#3 MATRIZ:  es un arreglo de filas y columnas. Es un vector con un atributo adicional (dim) 
# el cual, a su vez, es un vector numérico 
# de longitud 2, que define el número de filas y columnas de la matriz
# Ej:


robos<-c(10485,	9687,	112501,	3889,	4279)
homicidios<-c(176,	91,	356,	73,	78)
secuestros<-c(17,	6,	52,	10,	15)

#se genera la matriz uniendo los 3 vectores anteriores por columna (cbind)
eventos <- cbind(robos, homicidios, secuestros)
eventos <- rbind(robos, homicidios, secuestros)

eventos


class(eventos)
length(eventos) 
mode(eventos)


rm(list=ls(all = TRUE))

nac_hosp_1<-c(20,23,25,19,20,21,27,26,30,28,29,24,25,26,24,28,26,30,22,24)
nac_hosp_2<- c(21,22,25,28,25,25,22,24,27,22,27,22,21,22,22,24,26,23,20,22)
nac_hosp_3<-c(20,24,20,24,25,26,27,28,25,21,22,29,23,25,19,20,21,27,25,28)
nac_hosp_4<-c(22,23,20,21,22,25,24,30,22,22,23,25,20,22,25,20,22,23,24,25)

nacimientos<-cbind(nac_hosp_1, nac_hosp_2, nac_hosp_3, nac_hosp_4)



#¿Cuántos nacimientos hubo en el hospital 1 en el primer mes?

nac_hosp_1[1]
#20 nacimientos


#Uso de operadores
#Caso: cada vector representa la cantidad de empleados bancarios por ciudades, tipo de banco y genero mayoritario
banco <- c("A", "A", "B", "B", "A", "B", "A", "A")
genero <-c("M", "F", "M", "F", "F", "M", "M", "F" )
ciudad_1 <-c(7355, 4831, 1104, 964, 1563, 9986, 1014, 618 )
ciudad_2 <-c(90, 38, 15, 15, 18, 111, 5, 0)


#Cuantas  personas de genero femenino  ciudad 1 son del banco A?
ciudad_1[genero=="F" & banco == "A"]

#4831 1563  618


#Cuantas  personas de genero masculino  ciudad 2 son del banco B?
ciudad_2[genero=="M" & banco == "B"]
# 15 111

#Cual fue la cantidad de personas en la ciudad_2
sum(ciudad_2)
#292

#Cual fue la cantidad de personas de genero masculino en la ciudad 2?
sum(ciudad_2[genero=="M"])
#221

#A que banco pertenecen aquellos que tienen al menos 1000 empleados en la ciudad 1 
# y, a la vez, mas de 100 en la ciudad 2?
banco[ciudad_1>=1000 & ciudad_2>=100]
# B


#4  DATA.FRAME: o marco de datos, es una base de dats plana, que permite combinar vectores con 
# diferente tipo de datos (numéricos, carácter, lógico).
# Ej:

Vector_a_1<-c(1,3,5,7)
vector_a_2<-c(4,5,8,9)
vector_a_3<-c("a","b","c","d")
vector_a_4<-c(TRUE,FALSE,TRUE,TRUE)

#Vamos a crear un data frame llamado datos
datos<-data.frame(Vector_a_1, vector_a_2, vector_a_3, vector_a_4)

View(datos)
dim(datos)
#Si quiero ver una variable (columna especifica del data frame), ej vector_a_1, utilizo el signo $
datos$vector_a_1

datos$vector_a_2
datos


# Si queremos una parte del data frame, por ejemplo, las primeras 2 filas:
head(datos,2)

# Con la funcion summary obtenemos las medidas de resumen de cada columna del data frame
summary(datos)

# En el caso de querer las funciones resumen de solo una columna:
summary(datos$vector_a_2)

# LISTAS: corresponden a vectores genericos que contiene otros objetos creados antes y que es utilizado 
# por determinadas funciones de R u otros objetos.
# Ej:
lista_e<-list(vector_a_1, vector_a_2, vector_a_3, vector_a_4)

View(lista_e)

###Aclaracion:
#A excepcion de las listas y los data.frames, los vectores sólo pueden contener un sólo tipo de datos.





