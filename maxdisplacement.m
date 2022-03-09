trialnum = 1;
xpos = 2;
ypos = 3;

%change for number of successful trials completed
numtrials = 100;
totalmaxdisp = zeros(1,numtrials);

for f = 1:numtrials
%read data from each trial and store in an array 
filename = sprintf('%d.csv', char(f));
Data = csvread(filename,1,0);
trialdata = length(Data(:,1));
distance = zeros(1,trialdata);

        %for a single trial run 
        for j = 1:trialdata-1
            old_xpos = Data(j,xpos);
            old_ypos = Data(j,ypos);
            new_xpos = Data(j+1,xpos);
            new_ypos = Data(j+1,ypos);            
            
            % taking difference between consecutive coordinates 
            xdiff = new_xpos - old_xpos;
            ydiff = new_ypos - old_ypos;
            %calculating the distance between two points
            diffdist = sqrt((xdiff*xdiff)+(ydiff*ydiff));
            %adding distance to array
            distance(j) = diffdist;
        end
        
        %finding maximum difference in array for that trial
        max_disp = max(distance);
        
        %add maximum difference for each trial to an array
        totalmaxdisp(f) = max_disp;
end

%take mean and standard deviation of maximum displacement across all trials
%and print to console
mean(totalmaxdisp)
std(totalmaxdisp)

%flip array to be correct dimension for statistical test
totalmaxdisp= totalmaxdisp';

%write array to file
outputfile= 'w0_SE_disp.csv';
csvwrite(outputfile,totalmaxdisp);

