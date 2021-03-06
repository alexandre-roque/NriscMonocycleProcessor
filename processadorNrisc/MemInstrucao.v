/*
Implementação em Verilog dos componentes do nRisc que armazenam estado.
Aluno: Alexandre Roque.
Disciplina: Arquitetura e Organização de Computadores.
Professor: Mateus Felipe Tymburibá Ferreira.
*/
module MemInstrucao(Endereco, instr, clock);
    input clock;
	 input [7:0] Endereco;
    integer i;
    output [7:0] instr;
	 reg [7:0] memoria [255:0];


    //initial $readmemb("C:/Users/alexa/Documents/programEmBinario.txt",memoria);

    /*always begin
        @(posedge clock)
            instr <= memoria[endereco];
    end//always*/

    assign instr = memoria[Endereco];

endmodule
