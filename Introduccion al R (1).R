#BIENVENIDOS A LA MATERIA PRG/PDA

#Utilizaremos la tecla # cuando queremos comentar algo o dejar una nota.C
#Es importante comentar lo que se realiza en los scripts



# LA COMBINACI�N DE TECLAS <Ctrl ENTER>  corre lo seleccionado 

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

vector1<-c(1,3,5,7)
vector1
vector2<-c(4,5,8,9)
vector3<-c("a","b","c","d")
vector4<-c(TRUE,FALSE,TRUE,TRUE)

mode(vector1) 
mode(vector2); mode(vector3); mode(vector4)
length(vector1)
length(vector2);length(vector3);length(vector4)
str(vector1)
str(vector2);str(vector3);str(vector4)
summary(vector1)



# otro ejemplo: vector con longitud 1

m<-5


mode(m)
length(m)

#Supongamos que quiero eliminar el vector a, uso la funcion rm
rm(m)

############################################################################
rm(list = ls(all = TRUE))

pais<-c("Japan", "Argentina", "Australia", "Bulgaria", "Egypt", "Ethiopia")  
precio_pc<-c(120, 900, 140, 1040, 259, 3606)
#precio_pc: precios de laptop en dolares
precio_pc


ventas<-c(127317900, 40381860,  21370348, 751364600,  78976122,  8307960800) 
ventas

# voy a crear un nuevo vector llamado unidades
# nacimientos =poblacion* tasa_de natalidad/1000
unidades<- ventas/precio_pc
unidades


#cual es el pais que se encuentra en el 2do lugar?
pais[2]
#Argentina

#otro ejemplo:
# se informa los empleados pertenecientes a 5 bancos: A,B,C,D Y E
# dichos empleados presentan dos modalidades de contratacion: autonomos, y monotributistas

monotributistas<-c(20,35,12,7,40)
autonomos<- c(81,22,47,56,62)

#queremos saber cuantos empleados tiene cada banco?
empleados<- monotributistas+autonomos

# 101  57  59  63 102



#cuantos empleados hay en el 2do y 3er lugar en el vector llamado empleados?
empleados[c(2,3)]
#57 59
#Quiero saber los empleados de las posiciones 3 a la 5
empleados[3:5]
empleados[c(3,5)]

# 59 102

#cuantos empleados hay en la posicion 1?
empleados[1]

#101

# Tambi�n podemos identificar la posici�n del maximo y minimo valor, usando which max y which min
which.max(empleados)
#5
which.min(empleados)
#2


#2 FACTOR: es un vector que tiene una cantidad limitada de posibles valores. Se denomina tambien
#una variable categ�rica. No s�lo incluye los valores de cada observaci�n
# sino los "niveles" o valores que puede asumir. 
# Ej:
factor_b<-factor(c(1,2,3,1,3,1,2,1,1,1,2,2), levels = c(1,2,3))

table((factor_b))

# otro ejemplo
pago_impuestos<-c(1, 3, 1, 1, 3, 99, 3, 2, 2, 1, 2, 2, 1, 1, 3, 3, 1, 3, 3, 3, 3, 3, 3, 3, 1, 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 99, 3, 1, 1, 1, 3, 2, 3, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 2, 2, 3, 1, 2, 1, 2, 1, 3, 3, 1, 1, 2, 1, 2, 1, 3, 1, 1, 2, 3, 1, 1, 1, 1, 3, 1, 3, 3, 1, 3, 1, 1, 2, 1, 3, 1, 1, 1, 1, 1, 1, 3, 2, 1, 1, 2, 1, 1, 1, 1, 3, 1, 3, 3, 3, 3, 1, 99, 2, 2, 3, 3, 1, 1, 2, 2, 1, 1, 2, 3, 3, 1, 99, 3, 1, 1, 1, 3, 1, 1, 1, 1, 2, 2, 2, 1, 3, 2, 3, 1, 3, 2, 3, 3, 99, 3, 3, 2, 2, 3, 1, 2, 1, 3, 3, 3, 2, 1, 3, 2, 1, 1, 1, 2, 3, 3, 2, 1, 2, 1, 3, 3, 1, 2, 1, 2, 2, 3, 1, 2, 1, 2, 3)
length(pago_impuestos)
#Etiquetas:
#  1  Paga el 5% de su sueldo en impuestos 
#  2  Paga el 15% de su sueldo en impuestos
#  3  No paga impuestos
#  99 No Sabe/No contesta

pago_impuestos<-factor(pago_impuestos, levels = c(1,2,3,99), labels = c("Paga 5%", "Paga 15%","No paga","No sabe / No contesta"))
pago_impuestos
table(pago_impuestos)

#pago_impuestos
Paga 5%              Paga 15%               No paga No sabe / No contesta 
97                    40                    58                     5 


#3 MATRIZ:  es un arreglo de filas y columnas. Es un vector con un atributo adicional (dim) 
# el cual, a su vez, es un vector num�rico 
# de longitud 2, que define el n�mero de filas y columnas de la matriz
# Ej:

#La empresas A,B,C, D y E, presentan la siguiente cantidad de empleados con sueldos y cargas sociales para c/u de ellos
sueldo<-c(10485,	9687,	112501,	3889,	4279)
carga_social<-c(176,	91,	356,	73,	78)
empleados<-c(17,	6,	52,	10,	15)

#se genera la matriz uniendo los 3 vectores anteriores por columna (cbind)
legajos <- cbind(sueldo, carga_social, empleados)
legajos
#utilizando rbind (r de row) se unen los vectores por filas
legajos <- rbind(robos, homicidios, secuestros)
legajos



class(legajos)
length(legajos) 
mode(legajos)


rm(list=ls(all = TRUE))
# A continuacion se presentan las ventas mensuales en miles de dolares de 4 empresas de auditoria
#(empresas: a,b,c y d)

ventas_a<-c(20,23,25,19,20,21,27,26,30,28,29,24,25,26,24,28,26,30,22,24)
ventas_b<- c(21,22,25,28,25,25,22,24,27,22,27,22,21,22,22,24,26,23,20,22)
ventas_c<-c(20,24,20,24,25,26,27,28,25,21,22,29,23,25,19,20,21,27,25,28)
ventas_d<-c(22,23,20,21,22,25,24,30,22,22,23,25,20,22,25,20,22,23,24,25)

ventales_totales<-cbind(ventas_a, ventas_b, ventas_c, ventas_d)



#�Cu�ntas ventas hubo en la empresa A en el primer mes?

ventas_a[1]
#20 (20.000 dolares)


#�Cu�ntas ventas hubo en la empresa C en el quinto mes?
ventas_c[5]
#25 (25.000 dolares)


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
# diferente tipo de datos (num�ricos, car�cter, l�gico).
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
#A excepcion de las listas y los data.frames, los vectores s�lo pueden contener un s�lo tipo de datos.



#Mas ejercicios:
#1)Coloque su nombre y apellido.


#
#2)Crear un vector numerico llamado edad que contenga los elementos: 15,2,8,3,9,22


#3) Crear un vector logico llamado a_2 que contenga los elementos: TRUE, FALSE, FALSE, FALSE


#4) Crear un vector llamado comprobantes que contenga los elementos: 4, 5, 20, 32, 8, 11


#5) Cual es la longitud del vector edad ? (creado en item 2)


#6) Sume la cantidad de elementos del vector edad (creado en item 2)



#7)Cargar el siguiente vector y convertirlo en factor (renombrandolo barrios_f):
barrios <- c("Belgrano", "Belgrano", "Caballito", "Saavedra", "Paternal","Retiro" ,"Saavedra", "Colegiales", "Retiro")
barrios_f <- as.factor(barrios)


#8) Que valor de media, mediana, desvio estandar, varianza tiene el vector viajes?
viajes <- c(1, 1, 2, 3, 0, 2, 4, 5, 0, 5, 5, 2, 2, 3, 2, 1)




#9) Instale y cargue la libreria ggplot2
install.packages(ggplot2)
library(ggplot2)


#10)Ingrese los siguientes vectores que corresponden al consumo de soja entre los a�os 2000 y 2010 por pais (en miles de toneladas)
venezuela<-c(76.4, 76.7, 77.0, 77.2, 77.4, 77.5, 77.6, 77.7, 77.8, 77.8, 77.9)
argentina<-c( 77.5, 77.8, 78.0, 78.2, 78.4, 78.6, 78.8, 78.9, 79.1, 79.3, 79.4)
bolivia<-c(62.8, 63.4, 64.0, 64.6, 65.2, 65.8, 66.4, 67.0, 67.6, 68.2, 68.8)
brasil<-c(74.0, 74.4, 74.8, 75.1, 75.5, 75.8, 76.0, 76.3, 76.6, 76.9, 77.2)
canada<-c(81.9, 82.1, 82.1, 82.4, 82.6, 82.7, 82.8, 83.0, 83.1, 83.4, 83.6)
chile<-c(80.1, 80.5, 80.9, 81.2, 81.5, 81.9, 82.2, 82.5, 82.8, 83.1, 83.4)
colombia<-c(74.8, 75.1, 75.3, 75.6, 75.8, 76.0, 76.3, 76.5, 76.7, 76.9, 77.0)
costa_rica<-c(79.8, 80.0, 80.1, 80.2, 80.4, 80.5, 80.6, 80.8, 80.9, 81.1, 81.3)
cuba<-c(78.6, 78.9, 79.1, 79.3, 79.6, 79.9, 80.2, 80.5, 80.8, 80.9, 81.1)
ecuador<-c(76.1, 76.4, 76.6, 76.8, 77.0, 77.2, 77.4, 77.5, 77.6, 77.8, 77.9)
peru<-c(73.2, 73.7, 74.1, 74.5, 74.9, 75.2, 75.5, 75.8, 76.0, 76.2, 76.4)
paraguay<-c(72.3, 72.6, 72.8, 73.0, 73.2, 73.4, 73.6, 73.8, 74.0, 74.3, 74.5)
uruguay<-c(78.5, 78.7, 78.9, 79.0, 79.2, 79.3, 79.5, 79.6, 79.8, 79.9, 80.1)
haiti<-c(59.5, 59.8, 60.1, 60.4, 60.7, 61.1, 61.6, 62.0, 62.5, 62.9, 63.4)
mexico<-c(76.8, 77.0, 77.2, 77.4, 77.6, 77.8, 77.9, 78.1, 78.2, 78.4, 78.5)
puerto_rico<-c(80.9, 81.4, 82.2, 82.2, 82.3, 82.5, 82.6, 82.6, 82.0, 82.2, 82.5)
estados_unidos<-c(79.3, 79.5, 79.6, 79.7, 80.1, 80.1, 80.3, 80.6, 80.6, 80.9, 81.0)

#11)Cual fue el consumo de soja en Argentina y en Chile en el a�o 2010?





#12) Unir en una matriz llamada sudamerica los vectores venezuela, chile,bolivia, paraguay, uruguay, argentina, peru y colombia, por columna

#13) Cuantos elementos y de que tipo son los de la matriz sudamerica?


#14) Cargue los siguientes vectores y construya un data frame llamado familia
nombres<-c("Jose", "Eva", "Juan", "Sheila", "Juliana", "Pablo", "Nancy", "Marcela")
edad<-c(37, 38, 56, 14, 66, 42, 25, 70)
cantidad_series<-c(7, 18, 12, 5, 2, 9, 13, 3)


#15) Mediante este comando grafique:

plot(edad,cantidad_series,pch=20,col="violet", xlab= "Edad", ylab="Cantidad de series")
#Que observa?


