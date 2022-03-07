## Constructing reference topologies ##

# Installing necessary packages

  if(!require("ape")){
    install.packages("ape")
  }

# Loading neccesary libraries
  library(ape)

# There are 2 possible topologies for a four branched tree: 2x2 and 3x1
  # eq2x2 and eq3x1 resemble equal length branches
  
    # Creating "phylo" class object for eq2x2 (equal BL and paired branches: 2x2)
    
      eq2x2_edge <- matrix(data  =c(5,6,6,1,6,2,5,7,7,3,7,4),
                         nrow = 6,
                         ncol = 2,
                         byrow = TRUE)
      
      eq2x2_tip <- sprintf("t%s", seq(1:4))
      
      eq2x2_node <- 3
      
      eq2x2_edgl <- rep(1:1, times = 4)
      
      eq2x2 <- list(edge = eq2x2_edge,
                  tip.label = eq2x2_tip,
                  Nnode = eq2x2_node,
                  edge.length = eq2x2_edgl)
      
      class(eq2x2) <- "phylo"

      eq2x2      
        #Phylogenetic tree with 4 tips and 3 internal nodes.
        #Tip labels:
          #t1, t2, t3, t4

    
    # Creating "phylo" class object for eq3x1 (equal BL but not paired branches: 3x1)
    
      eq3x1_edge <- matrix(data = c(5,6,6,7,7,1,7,2,6,3,5,4),
                         nrow = 6,
                         ncol = 2,
                         byrow = TRUE)
      
      eq3x1_tip <- sprintf("t%s", seq(1:4))
      
      eq3x1_node <- 3
      
      eq3x1_edgl <- rep(1:1, times = 4)
      
      eq3x1 <- list(edge = eq3x1_edge,
                  tip.label = eq3x1_tip,
                  Nnode = eq3x1_node,
                  edge.length = eq3x1_edgl)
      
      class(eq3x1) <- "phylo"
    
      eq3x1      
        #Phylogenetic tree with 4 tips and 3 internal nodes.
        #Tip labels:
          #t1, t2, t3, t4
