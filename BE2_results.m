rates = [0.5, 1, 1.5, 2];

througput =  [2.49856, 4.99917, 7.49814 , 9.99752 ];
nodes = 5;
total_thput_normalized = [0, 0, 0, 0];
for i = 1: 4
    total_thput_normalized(i) = througput(i)/througput(4);
end

plot (rates, total_thput_normalized );
title('Throughput vs data rates, CWwin = 1 and CWmax = 1023');
xlabel('Data rates Mbps', 'FontSize', 18);
ylabel('Througput', 'FontSize', 18);
%legend('Total througput', 'Per node throughput', 'FontSize', 14);
    
    