% 1.a.

% E - Pacote recebido com erros 
% N - Link Normal
% I - Link com Interfer�ncia

p_N = [0.99 0.999 0.9999 0.99999];
p_I = 1 - p_N;

pN = 10^-7;
pI = 10^-3;
n = 128 * 8;
p_E_N = 1 - (nchoosek(n,0) * pN^0 * (1-pN)^(n-0));
p_E_I = 1 - (nchoosek(n,0) * pI^0 * (1-pI)^(n-0));

p_E = p_E_N * p_N + p_E_I * p_I;

p_N_E = (p_E_N * p_N) ./ p_E * 100;
p_I_E = (p_E_I * p_I) ./ p_E * 100;

% 1.b.

p_N = [0.99 0.999 0.9999 0.99999];
p_I = 1 - p_N;


pN = 10^-7;
pI = 10^-3;
n = 128 * 8;
for i = 2:5
    p_E_N = (1 - nchoosek(n,0) * pN^0 * (1-pN)^(n-0))^i;
    p_E_I = (1 - nchoosek(n,0) * pI^0 * (1-pI)^(n-0))^i;

    p_E = p_E_N * p_N + p_E_I * p_I;

    p_N_E = ((p_E_N * p_N) ./ p_E) * 100
    disp(i)
end

% 1.c.

p_N = [0.99 0.999 0.9999 0.99999];
p_I = 1 - p_N;


pN = 10^-7;
pI = 10^-3;
n = 128 * 8;

for i = 2:5
    p_E_N = 1 - (1 - (1-pN)^(n-0))^i;
    p_E_I = 1 - (1 - (1-pI)^(n-0))^i;

    p_E = p_E_N * p_N + p_E_I * p_I;
    
    p_I_E = (p_E_I * p_I) ./ p_E * 100
    disp(i)
end

% 1.d.

% A partir dos resultados, podemos afirmar que � medida que a probabilidade
% de estar no estado normal aumenta, a probabilidade de falsos negativos
% diminui e a probabilidade de falsos positivos aumenta. Isto porque como � 
% mais prov�vel estar no estado normal, a incid�ncia de erros � menor 
% diminuindo os falsos negativos e aumentando os falsos positivos. Por 
% outro lado, quando o n�mero de pacotes aumenta, a probabilidade de falsos 
% negativos aumenta e a probabilidade de falsos positivos diminui. Isto 
% porque com o aumento de pacotes, basta que um n�o contenha erro para que 
% ele considere que esteja em estado normal embora n�o esteja da� o aumento 
% dos falsos negativos e a diminui��o dos falsos positivos.



% 1.e.

% A partir dos resultados obtidos nos exerc�cios 1b e 1c, para um valor de 
% p=99.999%, o valor de n que respeita uma probabilidade de falsos positivos 
% e falsos negativos inferior a 0.1% � n = 3. 