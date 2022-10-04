%Guilherme Saad Botrel
%12121ECP018

%Racha cuca difícil: Visita ao Aquário.
%https://rachacuca.com.br/logica/problemas/visita-ao-aquario/

%Mochila
%Nome
%Sobrenome
%Suco
%Signo
%Animal



resolver(Aq) :-

             Aq = aquario(menina(_,_,_,_,_,_),
                        menina(_,_,_,_,_,_),
                        menina(_,_,_,_,_,_),
                        menina(_,_,_,_,_,_),
                        menina(_,_,_,_,_,_)),
                        
                        
%A menina da mochila Branca tem sobrenome Andrade.
             menina(A,Aq),
             mochila(A,branca),
             sobrenome(A,andrade),
             
%Milene é do signo de Virgem.
             menina(B,Aq),
             signo(B,virgem),
             nome(B,milene),
             
%A garota do sobrenome Santos deseja ver o Peixe-boi.
             menina(C,Aq),
             sobrenome(C,santos),
             animal(C,peixeboi),

%A garota do signo de Câncer tem o sobrenome Dias.
             menina(D,Aq),
             signo(D,cancer),
             sobrenome(D,dias),
             
%Gisele é a dona da mochila Amarela.
             menina(E,Aq),
             mochila(E,amarela),
             nome(E,gisele),
             
             
%Garota da mochila Amarela(E) está em algum lugarentre a da mochila Verde(F)
% e a Sabrina(G), nessa ordem.

             algum_lugar_entre(E,F,G,Aq),
             
             menina(F,Aq),
             nome(G,sabrina),
             mochila(F,verde),
             
%A menina da mochila Amarela(E) está em algum lugar entre a Regina(H) e
% a garota de sobrenome Andrade(A), nessa ordem.

             algum_lugar_entre(E,H,A,Aq),
             
             menina(H,Aq),
             nome(H,regina),

%A garota da mochila Amarela(E) está em algum lugar entre a do signo
% de Peixes(I) e a Cristina(J), nessa ordem.
             menina(I,Aq),
             menina(J,Aq),
             signo(I,peixes),
             nome(J,cristina),
             algum_lugar_entre(E,I,J,Aq),
             
%A garota que quer ver o Tubarão(K) está em algum lugar entre a que gosta
% de suco de Uva(L) e a quer ver a Arraia(M), nessa ordem.
             menina(K,Aq),
             menina(L,Aq),
             menina(M,Aq),
             animal(K,tubarao),
             suco(L,uva),
             animal(M,arraia),
             algum_lugar_entre(K,L,M,Aq),
             
%A menina de Câncer(D) está exatamente à direita da que quer ver o Peixe-boi(C).
             exatamente_direita(D,C,Aq),

%Milene(B) e Sabrina(G) estão lado a lado.
             lado_lado(B,G,Aq),
             
%A garota que quer ver a Piranha está em uma das pontas.
             menina(N,Aq),
             pontas(N,Aq),
             
%A garota do signo de Áries(O) está ao lado da que quer ver o Peixe-boi(C).
             menina(O,Aq),
             ao_lado(O,C,Aq),
             
%Sabrina(G) esta em uma das pontas.
             pontas(G,Aq),

%Na terceira posição(P) está a menina que gosta de suco de Maçã(Q).
             menina(P,Aq),
             menina(Q,Aq),
             terceira_posicao(P,Aq),
             suco(Q,maca),
             
%A garota que quer ver o Tubarão(K) está exatamente à direita da garota
% da mochila Amarela(E).
             exatamente_direita(K,E,Aq),
            
%A menina de sobrenome Lima(R) está ao lado da garota q gosta de suco de Uva(L).
             menina(R,Aq),
             nome(R,lima),
             ao_lado(R,L,Aq),
             
%Na segunda posição está a menina que nasceu em outubro(S).
             menina(S,Aq),
             mes(S,outubro),
             segunda_posicao(S,Aq),

%Em uma das pontas está a menina do signo de Peixes(I).
             pontas(I,Aq),
             
%A menina da mochila Azul(T) está em algum lugar à esquerda da que gosta
% de suco de Maracujá(U).
             menina(T,Aq),
             menina(U,Aq),
             suco(U,maracuja),
             mochila(U,azul),
             algum_lugar_esquerda(T,U,Aq),
             
%A menina que gosta de suco de Maçã(Q) está ao lado da que quer ver o
% Lobo-marinho(V).
             menina(V,Aq),
             animal(V,lobomarinho),
             ao_lado(Q,V,Aq),
             
%A menina que gosta de suco de Caju está em uma das pontas.
             menina(W,Aq),
             suco(W,caju),
             pontas(W,Aq),
             
%Regina(H) está em uma das pontas.
             pontas(H,Aq),
             

%==============================================================================%

menina(aquario(X,_,_,_,_),X).
menina(aquario(_,X,_,_,_),X).
menina(aquario(_,_,X,_,_),X).
menina(aquario(_,_,_,X,_),X).
menina(aquario(_,_,_,_,X),X).


mochila(menina(X,_,_,_,_,_),X).
nome(menina(_,X,_,_,_,_),X).
sobrenome(menina(_,_,X,_,_,_),X).
suco(menina(_,_,_,X,_,_),X).
signo(menina(_,_,_,_,X,_),X).
animal(menina(_,_,_,_,_,X),X).


exatamente_direita(aquario(B,A,_,_,_),A,B).
exatamente_direita(aquario(_,B,A,_,_),A,B).
exatamente_direita(aquario(_,_,B,A,_),A,B).
exatamente_direita(aquario(_,_,_,B,A),A,B).

algum_lugar_entre(aquario(C,D,E,_,_),C,D,E).
algum_lugar_entre(aquario(C,D,_,E,_),C,D,E).
algum_lugar_entre(aquario(C,D,_,_,E),C,D,E).
algum_lugar_entre(aquario(C,_,D,E,_),C,D,E).
algum_lugar_entre(aquario(C,_,D,_,E),C,D,E).
algum_lugar_entre(aquario(C,_,_,D,E),C,D,E).
algum_lugar_entre(aquario(_,C,D,E,_),C,D,E).
algum_lugar_entre(aquario(_,C,D,_,E),C,D,E).
algum_lugar_entre(aquario(_,C,_,D,E),C,D,E).
algum_lugar_entre(aquario(_,_,C,D,E),C,D,E).


ao_lado(aquario(A,B,_,_,_),A,B).
ao_lado(aquario(B,A,_,_,_),A,B).
ao_lado(aquario(_,A,B,_,_),A,B).
ao_lado(aquario(_,B,A,_,_),A,B).
ao_lado(aquario(_,_,A,B,_),A,B).
ao_lado(aquario(_,_,B,A,_),A,B).
ao_lado(aquario(_,_,_,A,B),A,B).
ao_lado(aquario(_,_,_,B,A),A,B).



exatamente_a_esquerda(A,B,Aq) :-
    exatamente_a_direita(B,A,Aq).

algum_lugar_a_esquerda(aquario(X,Y,_,_,_),X,Y).
algum_lugar_a_esquerda(aquario(X,_,Y,_,_),X,Y).
algum_lugar_a_esquerda(aquario(X,_,_,Y,_),X,Y).
algum_lugar_a_esquerda(aquario(X,_,_,_,Y),X,Y).
algum_lugar_a_esquerda(aquario(_,X,Y,_,_),X,Y).
algum_lugar_a_esquerda(aquario(_,X,_,Y,_),X,Y).
algum_lugar_a_esquerda(aquario(_,X,_,_,Y),X,Y).
algum_lugar_a_esquerda(aquario(_,_,X,Y,_),X,Y).
algum_lugar_a_esquerda(aquario(_,_,X,_,Y),X,Y).
algum_lugar_a_esquerda(aquario(_,_,_,X,Y),X,Y).


segunda_posicao(aquario(_,X,_,_,_),X).

terceira_posicao(aquario(_,_,X,_,_),X).

pontas(aquario(_,_,_,_,X),X).
pontas(aquario(X,_,_,_,_),X).

             

             


             


             


             









           



