nodes = [1, 5, 10];
througput = [0.999834, 4.99917 ,9.98441  ];
%plot (nodes, througput);

per_node_thput = [0, 0, 0];
total_thput_normalized = [0, 0, 0];
% hold on;

for i = 1: 3
    per_node_thput(i) = througput(i)/nodes(i);
    total_thput_normalized(i) = througput(i)/nodes(i);
end
plot (nodes, total_thput_normalized );
title('Throughput vs Nodes, CWwin = 1 and CWmax = 1023')
xlabel('No of Nodes', 'FontSize', 18);
ylabel('Througput', 'FontSize', 18);
legend('Total througput', 'Per node throughput', 'FontSize', 14);