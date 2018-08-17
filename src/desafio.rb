class Desafio
	def caixaEletronico
		print "Digite o valor que deseja sacar: "

		resto = gets.to_i

		a = 100


		for i in 0...7
			cedula = resto.to_i/a.to_i
			resto %= a.to_i
			print cedula,  " cedulas de R$", a.to_i ,",00 \n"
			if(a == 50 || a == 5)
				a/=2.5
				next
			end
			a/=2
			i+=1

		end
	end
end

a = Desafio.new

a.caixaEletronico

#include<stdio.h>
#include<stdlib.h>
int main(){
    double valor = 20;
    double latinha = 4.78;
    double troco = valor-latinha;
    int cedula = 0;

    double a = 100;
    int i = 0;
    for(i=0;i<12;i++){
        cedula = troco/a;
        (int)troco = (int)troco%(int)a;
        if(a>0){
            printf("%f",cedula);
            printf(" cedulas de R$%f",a,",00");
            printf("\n");
            if(a==50 || a == 5 || a == 0.25){
                a/=2.5;
                continue;
            }else if(a==0.05){
                a/=5;
                continue;
            }
        }
        a/=2;
    }
}
