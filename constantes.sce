//Constantes simulación
R = 1.8;        //resistencia de la armadura
L = 0.000159;   //inductancia de la armadura
Kt = 0.05567;   //constante de torque del motor
Kb = 0.05871;   //constante de velocidad del motor
Im = 0.00004534;//inercia generalizada motor-reductor
Ip = 0.00004534;//momento de inercia
m = 0.218;      //masa 
n = 0.95;       //eficiencia de la reducción
rp = 0.011;     //radio de paso del piñón
rg = 20;       //relación de transmsión del tren de engranajes
betaa = 0.004;  //coeficiente de fricción viscosa
betaam = 0.004; //fricción viscosa en los cojinetes
Ff = 1;        //fricción de Coulomb

//Parámetros
J = Im + (Ip+m*rp*rp)/(n*rg*rg);
B = betaam + (betaa*rp*rp)/(n*rg*rg);
Tf = Ff*rp/(n*rg);

//Controlador
C = 1.5;
rho = 0.5;
