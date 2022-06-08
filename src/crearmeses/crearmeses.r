#limpio la memoria
rm( list=ls() )  #remove all objects
gc()             #garbage collection

require( "data.table" )
setwd("C:/Users/Sebastian/OneDrive/Escritorio/DataMining/DMEco")   #Establezco el Working Directory

dataset  <- fread( "./datasets/paquete_premium.csv.gz" )#.gz

fwrite( dataset[ foto_mes==202011, ],
        file= "./datasets/paquete_premium_202011.csv.gz",
        sep=";" )

fwrite( dataset[ foto_mes==202101, ],
        file= "./datasets/paquete_premium_202101.csv.gz",
        sep=";" )

