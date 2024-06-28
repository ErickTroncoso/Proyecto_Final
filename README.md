---
output:
  html_document: default
  pdf_document: default
---
# Anuros de Pichincha  
### Erick Troncoso (eatroncoso@puce.edu.ec)
### 27 Jun 2024

Los anfibios son el grupo de vertebrados terrestres más abundante en la región neotropical. Ecuador es el tercer país con mayor diversidad de anfibios en el mundo y el primero en número de especies por cada 100,000 km², con 676 especies formalmente identificadas hasta junio de 2023. A pesar de esta riqueza, Ecuador es uno de los países del neotrópico más afectados por el declive de sus poblaciones de anfibios. Alrededor del 44.8% de sus especies se encuentran amenazadas o en peligro de extinción, y el 56.7% está en alguna categoría de amenaza o carece de datos suficientes para conocer su estado de conservación, convirtiendo a Ecuador en el tercer país con mayor número de especies de anfibios amenazadas. En la provincia de Pichincha, ubicada en la Cordillera de los Andes en Ecuador, se encuentra una notable diversidad de especies de anfibios gracias a la variedad de microclimas y ecosistemas presentes, desde bosques nublados hasta páramos de alta montaña.

### [Si quieres saber mas información sobre los anfibios de Ecuador visita ](https://www.bioweb.bio/faunaweb/amphibiaweb/)

### Objetivos
El objetivo de este trabajo es realizar una filogenia de los diferentes anfibios del orden Anura que se encuentran en la provincia de Pichincha.

### Metodología

1. Se descargaron 65 secuencias en formato FASTA de anfibios ecuatorianos previamente investigados en la Bioweb.

2. Se juntaron los 65 archivos correspondientes a las secuencias de cada uno de los anfibios utilizando el siguiente comando en la terminal:

   ```
   cat *.fasta > d:\combined.fasta
   ```

3. Se verificó que se uniera todo correctamente usando el siguiente comando para contar el número de secuencias en el archivo combinado:

   ```
   grep ">" combined.fasta | wc -l
   ```

4. Se utilizó el programa MAFFT para alinear las secuencias de ADN:

   ```
   mafft combined.fasta > combined_aling.fasta
   ```

5. Se realizó una extensión de IQ-Tree, un programa para la construcción de filogenias, especificando su ubicación en el sistema:

   ```
   export IQTREE=/Users/erick_troncoso/Desktop/PF_Anurospichincha/Programas/iqtree-2.2.0-MacOSX/bin/iqtree2
   ```

6. Se ejecutó IQ-TREE sobre el archivo previamente alineado para realizar los análisis de filogenia con 1000 repeticiones de bootstrap:

   ```
   $IQTREE -s combined_aling.fasta -B 1000
   ```

7. Se editó la filogenia resultante utilizando el programa FigTree para visualización y análisis adicionales.

### Filogenia de Anuros de Pichincha
![]( Imagenes/Filogenia.jpg?raw=true "Filogenia")  

La filogenia resultó con algunos errores, los cuales se determinó que se debieron a la calidad de las secuencias descargadas de GenBank. Se utilizó la región 12s del RNA ribosomal, de la cual algunas secuencias no estaban completas, afectando así la precisión y fiabilidad de los resultados obtenidos.

### Diferencia en las secuencias 
![]( Imagenes/Secuen.jpeg?raw=true "Secuencias") 

### Video sobre *Ranas de Ecuador*:   
[![Alt text](https://img.youtube.com/vi/v=o6yefgZ8jmI)](https://www.youtube.com/watch?v=o6yefgZ8jmI) 

### Video sobre *Anfibios de DMQ*:  
[![Alt text](https://img.youtube.com/vi/eKorfzWtS8U/0.jpg)](https://www.youtube.com/eKorfzWtS8U)



