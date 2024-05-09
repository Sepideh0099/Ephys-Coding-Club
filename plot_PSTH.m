function plot_PSTH(SC, bint, pre, post);

trials = numel(SC);


PSTH = zeros(trials,(post+pre)/bint);

bins = -1*pre:bint:post;

for i = 1:trials
    PSTH(i,:) = histcounts(SC{i},bins);

end

figure1 = plot(mean(PSTH))
hold on
plot ([3 3],[0 6])

end
