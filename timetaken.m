time = 1; 
complete = 0;
timetaken = 0;
totaltime = [];

%change for number of successful trials completed
numtrials = 100;
percentage_complete = 0;


for f = 1:numtrials

%read data from each trial and store in an array    
filename = sprintf('%d.csv', char(f));
Data = csvread(filename,1,0);
trialdata = length(Data(:,1));
    
timetaken = Data (1,time);
totaltime = [totaltime timetaken]; 
end

%take mean and standard deviation of the array and output to console
meantime = mean(totaltime)
stdtime = std(totaltime)

%write array to output file
totaltime = totaltime';
outputfile = 'w0_SE_time.csv';
csvwrite(outputfile, totaltime);
