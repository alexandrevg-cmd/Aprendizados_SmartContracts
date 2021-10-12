// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract OrdemDosAdvogadosDoBrasilCarteira {
    
    // *** Exercicio para categorizar os elementos da carteira da OAB no formato "smart-contracts" ***
    
    string public nomeDoInscritoOAB = "Alexandre Vichinheski Garcia";
    string filiacaoNomeDoPai = "David Garcia Neto";
    string filiacaoNomeDaMae = "Marisa Vichinheski Garcia";
    string constant naturalidadeCidade = "Porto Alegra";
    string constant naturalidadeEstado = "RS";
    string constant rg = "3083069314";
    string constant rgOrgaoEmissor = "SSP/RS";
    string constant cpf = "97594291188";
    uint constant public dataDeNascimento = 19801105;
    uint public dataDeExpedicao = 20200219;
    uint constant public inscricao = 123456789;
    bool temCarteiraEtherium = true;
    address carteiraEtherium =  0xEdadFE14fcB5aF91153C39d73cB7f66ea00f08E4;
    
}
