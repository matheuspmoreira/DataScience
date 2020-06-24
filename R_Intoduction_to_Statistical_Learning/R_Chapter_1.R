x = c(1,2,3,4)
x
length(x)
y = c(5,6,7,8)
x+y
ls() # Lista de todos objetos que foram salvos ate entao
rm() # Usado para deletar qquer coisa q nao queremos
?matrix
# Preenchimento padrao R por coluna
matriz1 = matrix(c(1,2,3,4) , 2, 2)

# Preenchendo por linha
matriz2 = matrix(c(1,2,3,4), 2, 2, byrow = TRUE)
matriz2

# sqr() retorna a raiz quadrada da funcao
sqrt(4)

# rnorm() retorna um vetor aleatorio de variaveis
rnorm(3)

x = rnorm(50)
y = x + rnorm(50, mean = 50, sd = .1)
cor(x,y)

# Para repetir o mesmo conjunto de variáveis aleatórias
set.seed(3)
y = rnorm(100)
mean(y)
var(y)
sqrt(var(y))
sd(y)


# Graficos
x = rnorm(100)
y = rnorm(100)
plot(x,y)
plot(x,y, xlab = 'Eixo X', ylab = 'Eixo Y', main = 'Plot de X e Y')

# Salvando o plot em um pdf
pdf('fugure.pdf')
plot(x,y,col = 'green')

# Criando uma sequencia de numeros
x = seq(1,10)
x = 1:10
x
x = seq(0 , 1, length = 5)
x

# Produzindo um 'contour plot' para representar 3-D plot  ------- NAO ENTENDI
x = seq(1,2,length=9)
y = seq(2,4,length = 9)

z = matrix(x,9,9)
t =contour(x,y,z)
image(x,y,z)
persp(x,y,z)


# INDEXANDO DADOS

A = matrix(1:16,4,4)
A
# Selecionando dados na matriz A
A[2,3]
A[c(3,4),c(3,4)]
A[3,]
A[3:4,]

# R trata cada linha ou coluna da matriz como vetor
A[,1:2]

# O sinal - exclui todas as linhas ou colunas citadas 
A
Matriz_A_sem_linhas_1_3 = A[-c(1,3),]
Matriz_A_sem_linhas_1_3

dim(A)


# Carregando dados

# Importing data
read.table()
# Exporting data
write.table()

# Diretorio em "Documentos" Mudar
Auto = read.table('Auto.data')
fix(Auto)
# Os nomes da vars foram importados na primeira linha e lidos na 1 row
# Além disso, existem dados faltantes representados por '?'
# Para arrumar esse problemas temos que
Auto = read.table('Auto.data', header = TRUE, na.strings = '?')
fix(Auto)

# Carregando o mesmo arquivo em Excel agora
Auto = read.csv('Auto.csv', header = TRUE, na.strings = '?')
dim(Auto)
Auto[1:4,]
# Omitindo vars faltantes
Auto = na.omit(Auto)
dim(Auto)

# Verificando os nomes das vars
names(Auto)



# Adicionando gráficos e Sumários numéricos

# Como o R nao saber procurar as vars pelo nome a seguinte
# funcao retornará um erro
plot(cylinders, mpg)
# Uma solucao é usar a func attach() para tornar validas as vars
# presentes no data frame
attach(Auto)
plot(cylinders, mpg)

# Como existem um pequeno numero de 'cylinders', em comparacao
# com o numero de 'mpg', vamos trata-la como uma var qualitativa
cylinders = as.factor(cylinders)
# A func as.factor() realiza essa transformacao
plot(cylinders, mpg, col = 'red', xlab = 'Cylinders', ylab = 'MPG')

# Para plotar um histograma usamos a funcao hist()
hist(mpg)
hist(mpg, col = 2, breaks = 10)
plot(cylinders)

# Criando alguns graficos de dispersao
pairs(Auto)
pairs(???  mpg + displacement, Auto)

# Identificando 
plot(horsepower,mpg)
identify(horsepower,mpg,name)



