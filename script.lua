local StarterGui = game:GetService("StarterGui")

-- Function to send a notification
local function sendNotification(title, text, duration)
    StarterGui:SetCore("SendNotification", {
        Title = title; 
        Text = text; 
        Duration = duration; 
    })
end

-- Get the executor name
local executorname = getexecutorname() or identifyexecutor()

-- Supported executors
local supportedExecutors = { AWP = true, Wave = true, Nihon = true, ["Synapse Z"] = true, Swift = true }

-- Check if executor is supported
if supportedExecutors[executorname] then
    sendNotification(executorname .. " is supported!", "", 5)
    loadstring(game:HttpGet('https://raw.githubusercontent.com/mvqna/another-hub/refs/heads/main/main/loader.lua'))()
else
    sendNotification("Executor Might Not Be Supported", "Expect Errors", 5)
    loadstring(game:HttpGet('https://raw.githubusercontent.com/mvqna/another-hub/refs/heads/main/main/loader.lua'))()
end
