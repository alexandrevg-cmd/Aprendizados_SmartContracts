// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.9;

contract tokenizacaoimobiliaria {
    
        string nomecartorio;
        string nomecondominio;
        address incorporador;
        address estado;
        
        
        struct lote {
            
            uint numeromatricula;
            uint numerocasa;
            uint valordolote;
            uint areaprivativa;
            address proprietario;
            bool disponivel;
            bool negociavel;
        }
        
        mapping (uint => lote) public loteamento; // mapea uma lista chamado loetamento com número como chave e lote como valor
        mapping (uint => bool) public numerodacasa; // mapea uma lista chamado numerdacasa com número como chave e bool como valor
        
        constructor 
        (
            string memory _nomecartorio, // obrigado preencher no deploy
            string memory _nomecondominio, // obrigado preencher no deploy
            address _estado // obrigado preencher no deploy
        )
        {
               nomecartorio = _nomecartorio;
               nomecondominio = _nomecondominio;
               estado = _estado;
               incorporador = msg.sender; // atribui a carteira do deployer ao incorporador
        }
        
        
        function criarlote (
            uint _numeromatricula,
            uint _numerocasa,
            uint _valordolote,
            uint _areaprivativa,
            address _primeiroproprietario,
            bool _disponivel,
            bool _negociavel
            
        ) public {
            
            require(msg.sender == incorporador, "somente o incorporador pode criar lotes");
            require(loteamento[_numeromatricula].numeromatricula == 0, "matricula ja registrada"); // se o número da matricula for zero significa que ainda não há dados na memória
            require(numerodacasa[_numerocasa] == false, "casa ja existe");
            require(_valordolote > 0, "favor inserir um valor diferente de zero");
            
            loteamento[_numeromatricula] = lote( _numeromatricula, _numerocasa, _valordolote, _areaprivativa, _primeiroproprietario, true, true);
        }
        
        
        function ComprarLote(uint _numeromatricula ) public payable returns (address , string memory) {
            
            require(loteamento[_numeromatricula].disponivel == true, "O imovel deve estar disponivel ");
            require(loteamento[_numeromatricula].negociavel == true, "O imovel deve estar negociavel");
            require (msg.sender != loteamento[_numeromatricula].proprietario, "o atual dono nao pode comprar o imovel");
            payable(loteamento[_numeromatricula].proprietario).transfer(msg.value);
            loteamento[_numeromatricula].proprietario = msg.sender;
            loteamento[_numeromatricula].negociavel = false; 
            return(loteamento[_numeromatricula].proprietario, "O Novo proprietrio e a carteira");
        }
        
        
        
        
        
        
    }
