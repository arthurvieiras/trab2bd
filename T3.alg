S3(PECA,PESO,15,T3A1P1)
P1(T3A1P1,1,IDPECA,T3A1P2)
J1(T3A1P2,PECAFORNECEDOR,IDPECA=IDPECA,T3A1P3)
J1(T3A1P3,FORNECEDOR,IDFORNPECAFORNECEDOR=IDFORN,T3A1P4)
P4(T3A1P4,1,NOMEFORNECEDOR,T3A1R,NOMEFORNECEDOR)
S3(PECA,PESO,15,T3A2P1)
P1(T3A2P1,1,IDPECA,T3A2P2)
J1(T3A2P2,PECAFORNECEDOR,IDPECA=IDPECA,T3A2P3)
J2(T3A2P3,FORNECEDOR,IDFORNPECAFORNECEDOR=IDFORN,T3A2P4)
P3(T3A2P4,1,NOMEFORNECEDOR,T3A2R)