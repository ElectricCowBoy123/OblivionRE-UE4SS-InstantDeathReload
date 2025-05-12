RegisterHook("/Script/Altar.VPairedPawn:DoRagdoll", function(Context)
    local objRaggedActor = Context:get()
    if (objRaggedActor:IsPlayerCharacter()) then
		if (objRaggedActor:IsDead() or objRaggedActor:IsDeadFromKilled()) then
			local objPlayerController = FindFirstOf("VAltarPlayerController")
			objPlayerController:RequestQuickLoad()
		end
	end
end)