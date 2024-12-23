local function SafeUnit(v3)
	if v3.Magnitude == 0 then
		return vector.zero
	end

	return v3.Unit
end

return function(self, Position, BoneTree)
	do
	end
	local ParentBone = BoneTree.Bones[self.ParentIndex]

	if ParentBone then
		local RestLength = self.FreeLength
		local BoneSub = (Position - ParentBone.Position)
		local BoneDirection = SafeUnit(BoneSub)
		local BoneDistance = BoneSub.Magnitude < RestLength and BoneSub.Magnitude or RestLength

		local RestPosition = ParentBone.Position + (BoneDirection * BoneDistance)
		do
		end

		return RestPosition
	end
	do
	end

	return
end
