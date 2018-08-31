local e = 2.7182818284590

local SigmoidFunction = {}
SigmoidFunction.__index = SigmoidFunction

function SigmoidFunction:transform(x)
	return (1 / (1 + (e ^ ((x * self.steepness) + self.offset))))
end

function SigmoidFunction:calculateOdds(difficulty, luck)
	local rawOdds = (1 + luck) / ((1 + luck) + (1 + difficulty))
	local adjustedOdds = self:transform(rawOdds)
	return adjustedOdds
end

function SigmoidFunction.new(steepness, offset)
	local newSigmoidFunction = {}
	setmetatable(newSigmoidFunction, SigmoidFunction)
	
	newSigmoidFunction.steepness = steepness
	newSigmoidFunction.offset = offset
	
	return newSigmoidFunction
end