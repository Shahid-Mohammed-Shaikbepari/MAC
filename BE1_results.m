nodes = [1, 5, 10, 15, 20];
througput = [0.999834, 4.99917 ,9.99629 ,14.9873,	19.9815 ];
%plot (nodes, througput);

per_node_thput = [0, 0, 0, 0, 0];
total_thput_normalized = [0, 0, 0, 0, 0];
% hold on;

for i = 1: 5
    per_node_thput(i) = througput(i)/nodes(i);
    total_thput_normalized(i) = througput(i)/nodes(i);
end
plot (nodes, total_thput_normalized );
title('Throughput vs Nodes, CWwin = 63 and CWmax = 127')
xlabel('No of Nodes', 'FontSize', 18);
ylabel('Througput', 'FontSize', 18);
legend('Total througput', 'Per node throughput', 'FontSize', 14);