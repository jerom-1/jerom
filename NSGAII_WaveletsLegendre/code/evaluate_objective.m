function f = evaluate_objective(x, M, V)
f = [];

%% ejemplo 1
% Funci�n objetivo 1
% f(1) = (x(1)-(sqrt(3)*x(2)))^2+(2*sqrt(2)*x(2)+0.211*(x(1)+x(2)*sqrt(3)*(2*(0.211-(0.211)^2)-1))+...
%        0.211*(x(1)+x(2)*sqrt(3)*(0.422-1))^2-1-(0.211^2));
% 
% % Funci�n objetivo 2
% f(2) = (2*sqrt(2)*x(2)+0.211*(x(1)+x(2)*sqrt(3)*(2*(0.211-(0.211)^2)-1))+...
%        0.211*(x(1)+x(2)*sqrt(3)*(0.422-1))^2-1-(0.211^2))^2;
% 
% f(3) = f(1)+f(2);
%% ejemplo 2
%%% m=2 
% f = [(x(1) - 3^(1/2)*x(2) + 5^(1/2)*x(3) - 1)^2;
%     (3.4641*x(2) - 13.416*x(3) - 1.0)^2;
%     (3.4924*x(2) - 0.044521*x(1) + 17.913*x(3) - 1.0*(3.4641*x(2) - 7.7547*x(3))*(x(1) - 1.0011*x(2) + 0.0025178*x(3)) + (3.4641*x(2) - 7.7547*x(3))^2 - 2.355)^2];
% f(4)=f(1)+f(2)+f(3);
%% m=3
% f = [(x(1) - sqrt(3)*x(2) + sqrt(5)*x(3) - sqrt(7)*x(4) - 1)^2;
%      (3.4641*x(2) - 13.416*x(3) + 31.749*x(4) - 1.0)^2;
%      (3.4924*x(2) - 0.044521*x(1) + 17.913*x(3) - 82.084*x(4) - 1.0*(3.4641*x(2) - 7.7547*x(3) + 5.3213*x(4))*(x(1) - 1.0011*x(2) + 0.0025178*x(3) + 1.0166*x(4)) + (3.4641*x(2) - 7.7547*x(3) + 5.3213*x(4))^2 - 2.355)^2;
%      (3.2476*x(2) - 0.25*x(1) + 20.194*x(3) + 2.2737*x(4) + (3.4641*x(2) - 7.9373*x(4))^2 - 1.0*(x(1) - 1.118*x(3))*(3.4641*x(2) - 7.9373*x(4)) - 2.4035)^2];
% f(5) = f(1)+f(2)+f(3)+f(4);
%% m=5
% 
% f = [(x(1) + 3*x(5) - 3^(1/2)*x(2) + 5^(1/2)*x(3) - 7^(1/2)*x(4) - 11^(1/2)*x(6) - 1)^2;
%      (3.4641*x(2) - 13.416*x(3) + 31.749*x(4) - 60.0*x(5) + 99.499*x(6) - 1.0)^2;
%      (3.4924*x(2) - 0.044521*x(1) + 17.913*x(3) - 82.084*x(4) + 119.33*x(5) - 14.191*x(6) + (3.4641*x(2) - 7.7547*x(3) + 5.3213*x(4) + 5.7344*x(5) - 16.583*x(6))^2 - 1.0*(3.4641*x(2) - 7.7547*x(3) + 5.3213*x(4) + 5.7344*x(5) - 16.583*x(6))*(x(1) - 1.0011*x(2) + 0.0025178*x(3) + 1.0166*x(4) - 1.1685*x(5) + 0.32453*x(6)) - 2.355)^2;
%      (3.2476*x(2) - 0.25*x(1) + 20.194*x(3) + 2.2737*x(4) - 80.408*x(5) - 14.844*x(6) - 1.0*(x(1) - 1.118*x(3) + 1.125*x(5))*(3.4641*x(2) - 7.9373*x(4) + 12.437*x(6)) + (3.4641*x(2) - 7.9373*x(4) + 12.437*x(6))^2 - 2.4035)^2;
%      (2.6788*x(2) - 0.4489*x(1) + 18.315*x(3) + 57.124*x(4) - 11.779*x(5) - 172.86*x(6) + (3.3495*x(4) - 4.5616*x(3) - 3.4641*x(2) + 11.173*x(5) + 4.201*x(6))^2 + 1.0*(3.3495*x(4) - 4.5616*x(3) - 3.4641*x(2) + 11.173*x(5) + 4.201*x(6))*(x(1) + 0.5889*x(2) - 0.7303*x(3) - 1.0894*x(4) - 0.0001059*x(5) + 1.0924*x(6)) - 1.9753)^2;
%      (3.4925*x(2) - 0.053361*x(1) + 18.226*x(3) - 76.901*x(4) + 93.214*x(5) + 34.586*x(6) + 1.0*(3.4641*x(2) - 7.218*x(3) + 3.5497*x(4) + 7.8593*x(5) - 16.08*x(6))*(0.93184*x(2) - 1.0*x(1) + 0.14721*x(3) - 1.1051*x(4) + 1.0317*x(5) + 0.0037746*x(6)) + (3.4641*x(2) - 7.218*x(3) + 3.5497*x(4) + 7.8593*x(5) - 16.08*x(6))^2 - 2.3788)^2];
% f(6)= f(1)+f(2)+f(3)+f(4)+f(6);
%% ejemplo 3
%% M=3
% f = [(x(1) + 3*x(5) - 3^(1/2)*x(2) + 5^(1/2)*x(3) - 7^(1/2)*x(4) - 11^(1/2)*x(6))^2;
%      (3.4641*x(2) - 13.416*x(3) + 31.749*x(4) - 60.0*x(5) + 99.499*x(6) - 1.0)^2;
%      (3.0*x(1) - 3.7302*x(2) + 29.058*x(3) - 92.33*x(4) + 121.07*x(5) - 3.4583*x(6) - 1.0*(x(1) - 1.0011*x(2) + 0.0025178*x(3) + 1.0166*x(4) - 1.1685*x(5) + 0.32453*x(6))^2 - 0.16675)^2;
%      (3.0*x(1) - 1.6779*x(2) + 26.626*x(3) - 2.1688*x(4) - 85.623*x(5) - 1.925*x(6) - 1.0*(x(1) - 1.118*x(3) + 1.125*x(5))^2 - 0.2652)^2;
%      (3.0*x(1) - 0.42402*x(2) + 27.123*x(3) + 50.233*x(4) - 16.068*x(5) - 152.96*x(6) - 1.0*(x(1) + 0.5889*x(2) - 0.7303*x(3) - 1.0894*x(4) - 0.0001059*x(5) + 1.0924*x(6))^2 - 0.27295)^2;
%      (3.0*x(1) - 3.5904*x(2) + 28.754*x(3) - 85.792*x(4) + 93.195*x(5) + 46.165*x(6) - 1.0*(0.93184*x(2) - 1.0*x(1) + 0.14721*x(3) - 1.1051*x(4) + 1.0317*x(5) + 0.0037746*x(6))^2 - 0.17807)^2];
% f(7)=f(1)+f(2)+f(3)+f(4)+f(6);
%% M=5
f = [(x(1) + 3*x(5) - 3^(1/2)*x(2) + 5^(1/2)*x(3) - 7^(1/2)*x(4) - 11^(1/2)*x(6) + 13^(1/2)*x(7))^2;
     (3.4641*x(2) - 13.416*x(3) + 31.749*x(4) - 60.0*x(5) + 99.499*x(6) - 151.43*x(7) - 1.0)^2;
     (3.0*x(1) - 3.7302*x(2) + 29.058*x(3) - 92.33*x(4) + 121.07*x(5) - 3.4583*x(6) - 246.79*x(7) - 1.0*(x(1) - 1.0011*x(2) + 0.0025178*x(3) + 1.0166*x(4) - 1.1685*x(5) + 0.32453*x(6) + 0.79649*x(7))^2 - 0.16675)^2;
     (3.0*x(1) - 1.6779*x(2) + 26.626*x(3) - 2.1688*x(4) - 85.623*x(5) - 1.925*x(6) + 188.62*x(7) - 1.0*(x(1) - 1.118*x(3) + 1.125*x(5) - 1.1267*x(7))^2 - 0.2652)^2;
     (3.0*x(1) - 0.42402*x(2) + 27.123*x(3) + 50.233*x(4) - 16.068*x(5) - 152.96*x(6) - 119.88*x(7) - 1.0*(x(1) + 0.5889*x(2) - 0.7303*x(3) - 1.0894*x(4) - 0.0001059*x(5) + 1.0924*x(6) + 0.74035*x(7))^2 - 0.27295)^2;
     (3.0*x(1) - 3.5904*x(2) + 28.754*x(3) - 85.792*x(4) + 93.195*x(5) + 46.165*x(6) - 268.14*x(7) - 1.0*(0.93184*x(2) - 1.0*x(1) + 0.14721*x(3) - 1.1051*x(4) + 1.0317*x(5) + 0.0037746*x(6) - 1.0373*x(7))^2 - 0.17807)^2;
     (3.0*x(1) + 1.8887*x(2) + 31.323*x(3) + 151.35*x(4) + 459.42*x(5) + 1047.4*x(6) + 1948.1*x(7) - 1.0*(x(1) + 1.6151*x(2) + 1.7984*x(3) + 1.6622*x(4) + 1.266*x(5) + 0.68228*x(6) + 0.000016566*x(7))^2 - 0.25835)^2];
f(8) = f(1)^2+f(2)^2+f(3)^2+f(4)^2+f(6)^2+f(7)^2;
%% Check for error
if length(f) ~= M
    error('numero de funciones modificadas incorrecto. Corregir funciones objetivo');
end