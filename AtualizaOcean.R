

AtualizaOcean <- setClass(
  # Set the name for the class
  "AtualizaOcean",
  
  # Define the slots
  slots = c(
    # //Constantes para calculo do modelo//
    #e = Math.E;// 2.718281828459;
    e = "numeric",
    divisorFx = "numeric",
    multFP = "numeric",
    K = "numeric",
    X00 = "numeric",
    pAmbiental = "Ocean",
    pBiologico = "Ocean",
    occ = "Occ",
    emocoesBoas = "numeric",
    tempo = "numeric",
    x = "vector",
    #   // vetor que representa o estado emocional
    et = "Occ",
    #   // vetor referente a informa?f§?f£o emocional
    #   // definida como uma mudan?f§a de desejo na intensidade emocional para cada emo?f§?f£o
    #   // ?f© basicamente o valor de entrada que corresponde as intera?f§?fµes com o meio
    #   //no artigo ?f© o vetor 'a'
    a = "Occ"
  ),
  
  # Set the default values for the slots
  prototype=list(
    e = exp(1),
    divisorFx = 50,
    multFP = 2.5,
    K = 8,
    X00 = 0.0000001,
    pAmbiental = new("Ocean"),
    pBiologico = new("Ocean"),
    occ = new("Occ"),
    emocoesBoas = 0,
    tempo = 0,
    x = vector(length = 5),
    et = new("Occ"),
    a = new("Occ")
  )
)



# private Random gerador = new Random();




#   
#   private OCCxOCEAN P0 = new OCCxOCEAN(0);
#   private OCCxOCEAN P1 = new OCCxOCEAN(0);
#   private OCCxOCEAN P2 = new OCCxOCEAN(1);
#   //importancia de cada emo?f§?f£o dependendo da personalidade
#   //esta matriz ?f© toda zerada, somente com valores da diagonal principal
#   //no artigo ?f© a matriz 'P'
#   private double[][] P = new double[22][22];//double P[OCC][OCC];
#   //vetor que pega o resultado do produto entre 'P0' e 'p'
#   //para depois se tornar a diagonal principal de 'P'
#   //no artigo ?f© o vetor 'u'
#   private Occ u = new Occ();//double u[OCC];
#   //vetor responsavel por fazer o decaimento temporal dos pesos das emo?f§?fµes
#   // no artigo ?f© onde tem o peso 'Ce' = -0,1
#   private Occ Ce = new Occ();//double Ce[OCC];
#   //errei alguma coisa e faltou esse vetor...
#   //---------arrumar-----------
#     private Occ emotionalHistory = new Occ(); //double emotionalHistory[OCC];