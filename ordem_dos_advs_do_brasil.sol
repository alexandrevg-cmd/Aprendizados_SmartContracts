// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract OrdemDosAdvogadosDoBrasilCarteira {
    
    // *** Exercicio para categorizar os elementos da carteira da OAB no formato "smart-contracts" ***    
   
    string constant public nomeDoInscritoOAB = "Alexandre Vichinheski Garcia";
    string public filiacaoNomeDoPai = "David Garcia Neto";
    string public filiacaoNomeDaMae = "Marisa Vichinheski Garcia";
    string public naturalidadeCidade = "Porto Alegra";
    string public naturalidadeEstado = "RS";
    
    // RG e CPF coloquei em 'string' pois previne o caso de documentos que começam com zero (0)...
    string private rg = "3083069314";
    string private rgOrgaoEmissor = "SSP/RS";
    string private cpf = "97594291188";
    uint public dataDeNascimento = 19801105;
    uint public expedidoEm;
    uint public inscricao = 123456789;
    
    // O Boolean e o Address coloquei só para exercitar o uso...
    bool public temCarteiraEtherium = true;
    address constant public carteiraEtherium =  0xEdadFE14fcB5aF91153C39d73cB7f66ea00f08E4;
}
