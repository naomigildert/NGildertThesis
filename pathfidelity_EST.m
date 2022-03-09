trialnum = 1;
xpos = 2;
ypos = 3;
passedpoint = 0;
%success zone for what counts as having passed through control point
zone = 0.02;
successp = 0;
newcpx = [];
newcpy = [];
diff = [];
passcheck=[];
totaldiff=[];
%change depending on number of succesful trials
numtrials = 100;
success = zeros(1, numtrials);

%read in path file and find number of control points in the file 
filename2 = 'path1.csv';
Controlpoints = csvread(filename2);
Numcp = length(Controlpoints(:,1))-1;

for i = 1:2:Numcp
    %for each control point in the path file get x coordinates and y
    %coordinates
    controlpointsx = Controlpoints(i,1);
    controlpointsy = Controlpoints(i+1,1);
    newcpx = [newcpx controlpointsx];
    newcpy = [newcpy controlpointsy];
    Numcp = length(newcpx(1,:));
end

%for each trial 
for t = 1:numtrials
    %read data from each trial file
    filename = sprintf('%d.csv', char(t));
    Data = csvread(filename,1,0);
    trialdata = length(Data(:,1));
    
    %for each control point in the path 
    for j = 1:Numcp
        %get x and y coordinates of each control points
        cpx = newcpx(j);
        cpy = newcpy(j);
        for k = 1:trialdata
            %get x and y coordinates of object from data file     
            data_xpos = Data(k,xpos);
            data_ypos = Data(k,ypos);
            
            %calculate difference between the coordinates of the object and
            %coordinates of the control point
            xdiff = data_xpos - cpx;
            ydiff = data_ypos - cpy;
            %find distance between two points
            diffdist = sqrt((xdiff*xdiff)+(ydiff*ydiff));
            
            %if the distance between two points is less than success zone
            %then object has successfull passed the point
            if diffdist < zone
                %add successful pass to an array
                passedpoint = passedpoint + 1;
                break
            end
        end

    end
    
    %divide number of controlpoints that have been successfully passed by
    %number of controlpoints in the path
    successp =passedpoint/Numcp;
    %add that to array across all trials
    success(t) = successp;
    passedpoint = 0;
end

%flip matrix so correct dimension
success= success';

%write array across all trials to file
outputfile= 'w0_SE_fidelity.csv';
csvwrite(outputfile,success);

%take mean and standard deviation across all trias and print to console
mean(success)
std(success)