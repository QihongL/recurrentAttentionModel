cmd = torch.CmdLine()
cmd:text()
cmd:text('Evaluate a Recurrent Model for Visual Attention')
cmd:text('Options:')
cmd:option('--xpPath', '', 'path to a previously saved model')
cmd:text()
local params = cmd:parse(arg or {})


print(params)
print('<' .. params.xpPath .. '>')
cmd:string(params)
print('<' .. params.rundir .. '>')
--paths.mkdir(params.rundir)
--paths.mkdir(params.xpPath)




