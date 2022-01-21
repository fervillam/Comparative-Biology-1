
#Install "ape" package

if(!require("ape")){
  install.packages("ape")
}
library(ape)

# There are 2 possible topologies for a four branched tree
  # eq1 and eq2 resemble equal length branches

    # Creating phylo class object for eq1 (equal paired branches)

    eq1_edge <- matrix(data  =c(5,6,6,1,6,2,5,7,7,3,7,4),
                      nrow = 6,
                      ncol = 2,
                      byrow = TRUE)

    eq1_tip <- sprintf("t%s", seq(1:4))
      
    eq1_node <- 3
    
    eq1_edgl <- rep(1:1, times = 4)
    
    eq1 <- list(edge = eq1_edge,
                tip.label = eq1_tip,
                Nnode = eq1_node,
                edge.length = eq1_edgl)
    
    class(eq1) <- "phylo"
   
     # Creating phylo class object for eq2 (equal not paired branches)
    
     eq2_edge <- matrix(data = c(5,6,6,7,7,1,7,2,6,3,5,4),
                        nrow = 6,
                        ncol = 2,
                        byrow = TRUE)
     
     eq2_tip <- sprintf("t%s", seq(1:4))
     
     eq2_node <- 3
     
     eq2_edgl <- rep(1:1, times = 4)
     
     eq2 <- list(edge = eq2_edge,
                 tip.label = eq2_tip,
                 Nnode = eq2_node,
                 edge.length = eq2_edgl)
     
     class(eq2) <- "phylo"
    
   # df1 and df2 resemble different branched toplogies by a "2x" factor
     # Creating phylo class object for df1 (non equal paired branches)
     
     df1_edge <- matrix(data  = c(5,6,6,1,6,2,5,7,7,3,7,4),
                        nrow = 6,
                        ncol = 2,
                        byrow = TRUE)
     
     df1_tip <- sprintf("t%s", seq(1:4))
     
     df1_node <- 3
     
     df1_edgl <- c(1, 2, 4, 8)
     
     df1 <- list(edge = df1_edge,
                 tip.label = df1_tip,
                 Nnode = df1_node,
                 edge.length = df1_edgl)
     
     class(df1) <- "phylo"
     
     # Creating phylo class object for df2 (non equal no paired branches)
     
     df2_edge <- matrix(data = c(5,6,6,7,7,1,7,2,6,3,5,4),
                        nrow = 6,
                        ncol = 2,
                        byrow = TRUE)
     
     df2_tip <- sprintf("t%s", seq(1:4))
     
     df2_node <- 3
     
     df2_edgl <- c(1, 2, 4, 8)
     
     df2 <- list(edge = df2_edge,
                 tip.label = df1_tip,
                 Nnode = df1_node,
                 edge.length = df2_edgl)
