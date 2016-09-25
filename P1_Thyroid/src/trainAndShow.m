[ inputs, targets ] = thyroid_dataset;
for train_f={'trainscg', 'traincgp'}
    train_func = train_f{1};
    for n_neurons=10:10:30
        net = autoTrain(n_neurons, inputs, targets, train_func);
        plotconfusion(targets , net(inputs))
        waitforbuttonpress
    end
end