trialnum = 1;
xpos = 2;
ypos = 3;

%change for number of successful trials completed
numtrials = 100;
totaldistance = zeros(1,numtrials);

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
        
        %summing all distances in the array 
        run_distance = sum(distance);
        
        %adding the sum of distances from one trial to the array of all
        %trials
        totaldistance(f) = run_distance;
end

%take mean and standard deviation of the array and output to console
mean(totaldistance)
std(totaldistance)    

%rotate array to be appropriate dimension for statistical tests
totaldistance= totaldistance';

%write array to output file 
outputfile= 'w0_SE_dist.csv';
csvwrite(outputfile,totaldistance);    
