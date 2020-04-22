#Lets play with Matrices
#Lets create a simple vector
1:10
2.3:11

#Lets start with creating simple matrix
c <- 1:10
b <- 5:14

matrix(c)

#Lets learn about nrow and ncol
matrix(c, nrow = 5)
C <- matrix(c, ncol = 2)
B <- matrix(b, ncol = 3)

C<- matrix(c, nrow=3)
B<- matrix(b, nrow=3)

nrow(C)
ncol(B)

#Lets do some simple exercise
C+B
C*B
C%%B

#Lets name the rows and columns
Z<- C*B
colnames(Z) <- c("First","Second","Third","Fourth")
rownames(Z) <- c("Row 1","Row 2","Row 3")

#Let's do some Matrix Operations
matrix(1:12, byrow = FALSE, nrow=4)
matrix(1:12, byrow = TRUE, nrow=4)

#How to select a bunch of elements
a <- matrix(1:30, byrow=F, nrow = 5)
a[2,3]
a[2,]
a[,3]
a[1:3,]
a[1:3,5]
a[1:3,2:5]

#Binding of matrix
b<- 31:35
cbind(a,b)

#Transpose of matrix
a
t(a)

#Sum of columns
colSums(a)

#Sum of rows
rowSums(a)

#Mean
rowMeans(a)
colMeans(a)
