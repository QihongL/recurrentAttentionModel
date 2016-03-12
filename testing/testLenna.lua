require 'dpnn'
require 'image'

img = image.lena()
loc = torch.Tensor{0,0} -- 0.0 is the center of the image

sg = nn.SpatialGlimpse(64, 3, 2)

output = sg:forward{img, loc}
print(output:size()) --   9 x 64 x 64


-- unroll the glimpse onto its different depths
outputs = torch.chunk(output, 3)
display = image.toDisplayTensor(outputs)
image.save("glimpse-output.png", display)