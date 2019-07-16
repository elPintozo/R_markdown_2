#===================================================================================================
#asignar_hospital: Esta función emplea el nombre de un alumno para generar una semilla aleatoria
#y así asignar un establecimiento de salud.
#Entrada: nombre de alumno
#Salida: nombre de establecimiento de salud
#===================================================================================================

asignar_hospital=function(entrada)
{
  #Codificar nombres y definir semilla
  entrada=strsplit(entrada,"")[[1]]
  diccionario <- letters[1:26]
  conversion=match(entrada,diccionario)
  conversion[which(is.na(conversion))]=0
  conversion=sum(conversion)
  set.seed(conversion)
  
  #Lectura de archivos y creación de tablas
  tabla=read.csv("source/BD/hospitales.csv",header=T,sep=",", encoding = "latin1")
  sel1=sample(1:nrow(tabla),1)
  
  return(tabla[sel1,])
  }
  
    
  
  