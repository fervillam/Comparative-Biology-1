
if(!require("ape")){
  install.packages("ape")
}
library(ape)

# There are 2 possible topologies for a four branched tree
  # eq1 and eq2 resemble equal length branches

    # Creating phylo class objects for eq1 (paired branches)

    eq1_edge <- matrix(data=c(5,6,6,1,6,2,5,7,7,3,7,4),
                      nrow = 6,
                      ncol = 2,
                      byrow = TRUE)

    eq1_tip <- sprintf("t%s", seq(1:4))
      
    eq1_node <- 3
    
    eq1_edgl<- rep(1:1, times=4)
    
    eq1 <- list("edge" <- eq1_edge,
                eq1_tip,
                eq1_node,
                eq1_edge)
    
    
   
     
    