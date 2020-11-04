rates = [0.5, 1, 1.5, 2, 2.5];
througput = [4.99712, 9.99629  ,14.9914  ,19.9905 ,	21.436  ];
nodes = 10;
total_thput_normalized = [0, 0, 0, 0, 0];
for i = 1: 5
    total_thput_normalized(i) = througput(i)/througput(5);
end

plot (rates, total_thput_normalized );
title('Throughput vs data rates, CWwin = 63 and CWmax = 127');
xlabel('Data rates Mbps', 'FontSize', 18);
ylabel('Througput', 'FontSize', 18);
%legend('Total througput', 'Per node throughput', 'FontSize', 14);
    
    