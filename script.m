clc; clear;

m = 0.5; %Kg
l = 1; %meter
g = 9.8; %m/s^2

sim('FeedbackLinearizationModel')

%plot(time, PlantOutput)
time = ans.time;
plant_output = ans.PlantOutput;
desired_output = ans.DesiredOutput;

plot(time,plant_output,'linewidth',2); hold on
plot(time,desired_output,'linewidth',2);
legend('Plant Output','Desired Output')
title('Controller based on Feedback Linearization')

print -dpng comparison 

% Error plotting
error = desired_output-plant_output;
figure;
plot(time,error,'linewidth',1);
title('Error between desired and current output')