// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.9;

contract FuncoesPodemSerFaceis {
    
    // CONTRATO DE COMPRA E VENDA DE VEICULO
    string nomeDoVendedor = "Mona Mour";
    string cpfDoVendedor = "14725836921"; //string porque se o CPF começar com zero, a fórmula não vai identificar
    string public nomeDoComprador;
    string public cpfDoComprador;
    string modeloVeiculo = "Ferrari California";
    string placaDoVeiculo = "MON36A8";
    uint renavam = 147258369;
    uint valorDeVenda = 80000000;
     uint public valorPagoDeEntrada;
    uint numeroDeParcelas = 12;
    uint valorDeCadaParcela;
    uint valorJaPago;
    uint saldoDevedor;
    uint multaIncidente = 10;
    uint valorDaMulta;
    
    constructor(
        
        string memory _nomeDoComprador,
        string memory _cpfDoComprador,
        uint _valorDaEntrada
        
        
        ){
            nomeDoComprador = _nomeDoComprador;
            cpfDoComprador = _cpfDoComprador;
            valorPagoDeEntrada = _valorDaEntrada;
            valorDeCadaParcela = _calculoValordeCadaParcela();
            
    }
    
    function _calculoValordeCadaParcela () public view returns(uint){
        
        return(valorDeVenda - valorPagoDeEntrada) / numeroDeParcelas;
    }
    
    function _calculaSaldoDevedor(uint _numeroDeParcelasPagas) public view returns(uint, string memory){
        
        return ((valorDeVenda - valorPagoDeEntrada) - (valorDeCadaParcela * _numeroDeParcelasPagas) , "O SaldoDevedor eh ");
        
    }
    
}
