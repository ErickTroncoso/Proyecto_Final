#Saber donde nos encontramos 
pwd
#Navegar al escritorio
cd Desktop/
#Navegar a carpeta 
cd PF_Anurospichincha
#combinar archivos descargados en formato FASTA
cat *.fasta > d:\combined.fasta
#Alinear las secuencias
mafft combined.fasta > combined_aling.fasta
#extensión de IQ-Tree
export IQTREE=/Users/erick_troncoso/Desktop/PF_Anurospichincha/iqtree-2.2.0-MacOSX/bin/iqtree2
#Iniciar el analisis
$IQTREE -s combined_aling.fasta -B 1000 
