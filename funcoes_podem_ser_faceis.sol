// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;


// *** Exemplos de funções em Utility para elucidação da mecânica envolvida até agora! ***

contract OlaMundo {
    
    // Função que recebe uma string e retorna a string digitada.
    function SeuNome(string memory _nome) public pure returns(string memory, string memory){
        
        return ("Ola ", _nome);
    }
    
    // Função que recebe dois valores uint (separados por uma vírgula) e retorna a soma deles.   
    function Soma(uint a, uint b) pure public returns(uint){
            
        return a+b;
        
    }
    
    // Função que receb dois valores uint (separados por uma vírgula) e retorna a multiplicação deles.
    function Multiplica(uint c, uint d) pure public returns(uint){
        
        return c*d;
    }
    
}
