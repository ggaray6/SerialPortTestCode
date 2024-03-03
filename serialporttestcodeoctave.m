clc;clear;
pkg load instrument-control
testport = serial("COM5");

pause(1);

set(testport, 'baudrate', 9600);
set(testport, 'bytesize', 8);
set(testport, 'parity', 'n');
set(testport, 'stopbits', 1);
set(testport, 'timeout', 50);
srl_flush(testport);

a = 'Hello Everyone';
l=length(a);
srl_write(testport,a);
pause(0.1);

[data,count]=srl_read(testport,1);
recieved = char(data)

fclose(testport);
