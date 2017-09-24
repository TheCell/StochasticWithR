mat <- matrix(c(1,0,0,0,2,0,0,0,3),nrow=3)
mat
mat[1,1] #gibt wert bei 1,1 aus
mat[,2] #gibt 2 spalte aus
mat[3,] #gibt 3 zeile aus
mat[1:3,2] #gibt von zeile 1-3 jeweils Column 2 aus
mat[-1,2] #entfernt die angegebene Zeile und gibt dann 2 spalte aus