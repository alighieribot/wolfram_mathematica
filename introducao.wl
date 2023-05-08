(*

MAT00D - Equações diferenciais A

*)

(* 1. *)
(* Sintaxe: 
    nomeDaVariável = valor 

*)

x = 5;
y = 3;
soma = x + y;
subtracao = x - y;
produto = x * y;
quociente = x / y;
potencia = x ^ y;
raizX = x^(1/2);
raizY = y^(1/2);
cubicoX = x^(1/3);
cubicoY = y^(1/3);
(* Sintaxe: Abs[valor] para valor absoluto; Mod[valor, divisor] para módulo *)
absX = Abs[x];
absY = Abs[y];
modX = Mod[x, 3];
modY = Mod[y, 2];

(* 2. *)
(* Sintaxe: 
    nomeDaFunção[argumento];
    nomeDaFunção[argumentos_] := expressão;
    nomeDaFunção[argumentos]
 *)

seno = Sin[Pi/6];
cosseno = Cos[Pi/3];
quadrado[x_] := x^2;
quadrado  = x |-> x^2
quadrado[[2]]
somaQuadrados[a_, b_] := a^2 + b^2;
quadradoDeX = quadrado[x];
somaDeQuadradosXY = somaQuadrados[x, y];

(* 3. *)
(* Sintaxe: {elemento1, elemento2, ...} para criar uma lista *)
elementos = {1, 2, 3, 4, 5};

(* Sintaxe: 
    Map[função, lista] para aplicar uma função a cada elemento da lista;
    Select[lista, critério] para selecionar elementos que atendem ao critério;
    Join[lista1, lista2] para unir duas listas;

 *)

quadrados = Map[x |-> x^2, elementos];
pares = Select[elementos, EvenQ];
uniao = Join[elementos, pares];

(* Sintaxe: 
    lista[[índice]] para acessar um elemento específico de uma lista 

*)
primeiroElemento = elementos[[1]];
segundoElemento = elementos[[2]];
tamanho = Length[elementos];


sequencia = Range[1, 10];
invertida = Reverse[elementos];
ordenada = Sort[{4, 2, 1, 3, 5}];
(* Sintaxe: 
    Take[lista, n] para extrair os primeiros n elementos da lista;
    Drop[lista, n] para remover os primeiros n elementos da lista

 *)

primeirosTres = Take[elementos, 3];
semPrimeirosTres = Drop[elementos, 3];

(* 4. *)
(* Sintaxe: 
    Plot[função, {variável, inicio, fim}]

    Formatação:
        PlotLabel: Adicionar um rótulo ao gráfico.
        AxesLabel: Adicionar rótulos aos eixos.
        PlotStyle: Personalizar a cor, espessura e estilo da linha.
        GridLines: Adicionar linhas de grade ao gráfico.
            ex: 
            Plot[função, {variável, início, fim}, 
            PlotLabel -> "Gráfico de y = função", 
            AxesLabel -> {"x", "y"}, 
            PlotStyle -> {Red, Thick}, 
            GridLines -> Automatic]

*)
Plot[Sin[x], {x, 0, 2*Pi}]

(* 5. *)
(* Sintaxe: 
    lista[[índice]] 
    lista[[inicio;;fim;;passo]]
*)

elementos = {10, 20, 30, 40, 50};
segundoElemento = elementos[[2]];  (* Retorna 20 *)
penultimoElemento = elementos[[-2]];  (* Retorna 40 *)
intervalo = elementos[[2;;4]];  (* Retorna {20, 30, 40} *)
elementosPares = elementos[[1;;-1;;2]];  (* Retorna {10, 30, 50} *)
