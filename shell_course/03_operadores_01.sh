# ! /bin/bash
# Programa para revisar algunos tipos de operadores
# Autor: LMM - mi_email@dominio.com

A=10
B=14

echo "Operadores Aritméticos"
echo "Numeros A:$A y B:$B"
echo "Sumar A + B: "$((A+B))
echo "Restar A - B: "$((A-B))
echo "Multiplicar A * B: "$((A*B))
echo "Dividir A / B: "$((A/B))
echo "Residuo A % B: "$((A%B))

echo -e "\nOperadores Relacionales"
echo "Numeros A:$A y B:$B"
echo "A > B: "$((A>B))
echo "A < B: "$((A<B))
echo "A >= B: "$((A>=B))
echo "A <= B: "$((A<=B))
echo "A == B: "$((A==B))
echo "A != B: "$((A!=B))


echo "Operadores de Asignación"
echo "Numeros A:$A y B:$B"
echo "Sumar A += B: "$((A+=B))
echo "Restar A -= B: "$((A-=B))
echo "Multiplicar A *= B: "$((A*=B))
echo "Dividir A /= B: "$((A/=B))
echo "Residuo A %= B: "$((A%=B))
