I uppgiften ska sinus, cosinus och tangens värden för 0 till 10 radianer med 1 rad ökning 
skrivas ut som en tabell. 
  
% Skapa vektor med radievärden från 0 till 10 med ökning 1
radianer = 0:1:10;

% Beräkna sinus-, cosinus- och tangentvärden för varje radie
sinus = sin(radianer);
cosinus = cos(radianer);
tangent = tan(radianer);

% Skriv ut värdena som en tabell
disp('Radianer     Sinus      Cosinus     Tangent')
disp('--------------------------------------------')
for i = 1:length(radianer)
    fprintf('%4.0f       %6.4f     %6.4f     %6.4f\n', radianer(i), sinus(i), cosinus(i), tangent(i))
end

I  uppgiften  ska  sinus,  cosinus  och  tangens  värden  för  0  till  45  grader  skrivas  ut  som  en 
tabell. I uppgiften är ökningen inte angiven så jag väljer en ökning av 5 grader. 

% Konvertera vinklar från grader till radianer
grad = 0:5:45;
rad = deg2rad(grad);

% Beräkna sinus-, cosinus- och tangentvärden för varje grad
sinus = sin(rad);
cosinus = cos(rad);
tangent = tan(rad);

% Skriv ut värdena som en tabell
disp('Grader     Radianer     Sinus      Cosinus     Tangent')
disp('-----------------------------------------------------')
for i = 1:length(grad)
    fprintf('%5.0f       %6.4f     %6.4f     %6.4f     %6.4f\n', grad(i), rad(i), sinus(i), cosinus(i), tangent(i))
end

I uppgift 2 skall den totala utstrålade effekten på en uppvärmd stålplatta med storleken 1m 
x 1m beräknas. Temperaturdatan, i form av en 10x10 matris T är infogat med uppgiften. 
Den utstrålade effekten från ett ytelement ges av ekvation 1: 
 
W  =  Ae𝜎(T4-To4)                                                        (1) 
 
Stålplattansarea  delas  upp  till  100  delar  (10x10  punkter).  Arean  av  varje  område  blir  då 
0.1x0.1m dvs A = 0.01m2. Konstanterna To har värdet 300 K och e har värdet 0.6. 
  
% Definiera konstanter
To = 300;   % Kelvin
e = 0.6;
sigma = 5.67e-8;   % Stefan-Boltzmanns konstant (W/m^2*K^4)

% Definiera temperaturdatan som en 10x10 matris
T = [25 25 25 25 25 25 25 25 25 25;
     25 25 25 25 25 25 25 25 25 25;
     25 25 25 25 25 25 25 25 25 25;
     25 25 25 25 25 25 25 25 25 25;
     25 25 25 25 25 25 25 25 25 25;
     25 25 25 25 25 25 25 25 25 25;
     25 25 25 25 25 25 25 25 25 25;
     25 25 25 25 25 25 25 25 25 25;
     25 25 25 25 25 25 25 25 25 25;
     25 25 25 25 25 25 25 25 25 25];

% Beräkna utstrålade effekten för varje ytelement
A = 0.01;   % m^2
W = A*e*sigma*(T.^4 - To^4);

% Beräkna den totala utstrålade effekten genom att summera alla ytelements effekter
total_effekt = sum(W(:));
disp(['Den totala utstrålade effekten är ', num2str(total_effekt), ' W.'])
