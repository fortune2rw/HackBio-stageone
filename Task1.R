##GC% calculation

my_sequence1 <- "GCATTTAT"
my_sequence1 <- strsplit(x = my_sequence1, split = "")[[1]]


#Looping through my_sequence1 to count GC

#my_sequence1
gc_count1 <- 0 #initialize gc_counter
for(x in my_sequence1 ){
  
  if(x == "G"|x == "C" ){
    gc_count1 <- gc_count1 + 1
  }
}



#calculating gc% for both

(gc_count1 / length(my_sequence1))*100



#making the calculator
GC_calculator <- function(input_gene) {
  input_gene <- toupper(input_gene)
  input_gene <- strsplit(x = input_gene, split = "")[[1]]
  
  gc_count1 <- 0 #initialize gc_counter
  for(x in input_gene ){
    #print x
    
    if(x == "G"|x == "C" ){
      gc_count1 = gc_count1 + 1
    }
  }
  
  return((gc_count1 / length(input_gene)) *100 )
  
}

#EXAMPLES
gene11 <- "GCATTTAT"
gene12 <- "gcaTTTAT"
GC_calculator(input_gene = "GCATTTAT")
