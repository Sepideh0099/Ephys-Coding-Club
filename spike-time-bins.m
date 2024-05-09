%% Spike time binning Pav5Tones data set
SC = Spike_Times(1).Sucrose_Cue; 
bint = 1;
pre = 3;
post = 12;
trials = numel(SC);


PSTH = zeros(trials,(post+pre)/bint);

bins = -1*pre:bint:post;

for i = 1:trials
    PSTH(i,:) = histcounts(SC{i},bins);

end

figure1 = plot(mean(PSTH))
hold on
plot ([3 3],[0 6])

figure2 = bar(mean(PSTH))
hold on
plot ([3.5 3.5],[0 6])

figure3 = stairs(mean(PSTH))
hold on
plot ([3.5 3.5],[0 6])
plot ([4 4],[0 6])

%% Save function on a Seperate .m file
%% call the function

SC = Spike_Times(1).Sucrose_Cue;
bint = 2;
pre = 3;
post = 12;

function plot_PSTH(SC, bint, pre, post);