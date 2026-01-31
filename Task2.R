###Task2


##prepare amino acid weight table

aa_weights <- c(A = 89.09, R = 174.20, N =132.12, D =133.10, C = 121.15,
                E =147.13, Q= 146.15, G= 75.07, H= 155.16, I = 131.18,
                L = 131.18, K =146.19, M= 149.21, F = 165.19, P =115.13,
                S= 105.09, T =119.12, W = 204.23, Y = 181.19, V = 117.15)


#KiloDalton Calculator

kD_Calc <- function(input_protein) {
  input_protein <- toupper(input_protein) #chnage to upper case
  input_protein <- strsplit(x = input_protein, split = "")[[1]] #strip
  
  aaw <- input_protein[input_protein %in% names(aa_weights)] #search input_protein for names in aa_weight
  sum_aa <- sum(aa_weights[aaw]) / 1000 
  
  return(sum_aa)
  
}

#OUTPUT
kD_Calc(input_protein = "FORTUNE")
