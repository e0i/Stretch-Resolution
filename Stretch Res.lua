--[[
    ╔═╗┌┬┐┬─┐┌─┐┌┬┐┌─┐┬ ┬   
    ╚═╗ │ ├┬┘├┤  │ │  ├─┤   
    ╚═╝ ┴ ┴└─└─┘ ┴ └─┘┴ ┴   
╦═╗┌─┐┌─┐┌─┐┬  ┬ ┬┌┬┐┬┌─┐┌┐┌
╠╦╝├┤ └─┐│ ││  │ │ │ ││ ││││
╩╚═└─┘└─┘└─┘┴─┘└─┘ ┴ ┴└─┘┘└┘

:D
]]
 
local resolutions = {
    ["1080x1080"] = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.35, 0, 0, 0, 1), 
    ["1920x1080"] = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.65, 0, 0, 0, 1), 
    ["2560x1440"] = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.8895, 0, 0, 0, 1)
}

--[[
    the table above controls how each resolution appears, you won't notice any difference unless you updare the resolutionName as well.

    I.E: local resolutionName = "1920x1080" is controlled by ["1920x1080"] = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.65, 0, 0, 0, 1)

    **The numbers must match**
]]

local resolutionName = "1920x1080" -- Change this to whatever resolution you want to use

local Camera = workspace.CurrentCamera

local resolution = resolutions[resolutionName]

    game:GetService("RunService").RenderStepped:Connect(function()
        Camera.CFrame = Camera.CFrame * resolution
    end)


-- This script does NOT actually stretch your resolution, it attempts to simulate stretched resolution    