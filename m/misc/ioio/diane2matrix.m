%
% JT 20170628 -- Opens Diane "Another FTIR" file and returns a matrix [nf]x[2]
%
% First columns are wavenumbers and second columns are intensities
%
% Bits of code auto-generated by MATLAB
%
function M = diane2matrix(filename)

delimiter = ',';
startRow = 6;
formatSpec = '%f%f%[^\n\r]';

h = fopen(filename, 'r');
dataArray = textscan(h, formatSpec, 'Delimiter', delimiter, 'HeaderLines' ,startRow-1, 'ReturnOnError', true);
fclose(h);

M = cell2mat(dataArray(1:2));
    
if any(size(M) == 0)
    irerror('Invalid file type or no data');
end;