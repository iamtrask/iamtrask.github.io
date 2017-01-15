require 'torch'
require 'nn'


local Nothing, Parent = torch.class('Nothing', 'nn.module')

function Nothing:__init(backend, imageSize, numClasses)
  Parent.__init()
  self.imageSize = imageSize
  self.numClasses = numClasses
  self.backend = backend
end

function Nothing:updateOutput(input)
  
   return input
end

function Nothing:updateGradInput(input, gradOutput)
   return gradOutput
end