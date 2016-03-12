-- Replicate the RAM simulation results with the MNIST data set
require 'dpnn'
require 'image'
-- actions (locator)
locationSensor = nn.Sequential()
locationSensor:add(nn.SelectTable(2))
locationSensor:add(nn.Linear(2, opt.locatorHiddenSize))
locationSensor:add(nn[opt.transfer]())
