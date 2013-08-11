module UnrealScript.Engine.GameUISceneClient;

import ScriptClasses;
import UnrealScript.Engine.WorldInfo;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Player;
import UnrealScript.Engine.UISceneClient;

extern(C++) interface GameUISceneClient : UISceneClient
{
	public @property final auto ref ScriptArray!(ScriptName) NavAliases() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 300); }
	public @property final auto ref ScriptArray!(ScriptName) AxisInputKeys() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 312); }
	public @property final bool bCaptureUnprocessedInput() { return (*cast(uint*)(cast(size_t)cast(void*)this + 296) & 0x10) != 0; }
	public @property final bool bCaptureUnprocessedInput(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 296) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 296) &= ~0x10; } return val; }
	public @property final bool bRenderDebugInfo() { return (*cast(uint*)(cast(size_t)cast(void*)this + 296) & 0x8) != 0; }
	public @property final bool bRenderDebugInfo(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 296) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 296) &= ~0x8; } return val; }
	public @property final bool bEnableDebugInput() { return (*cast(uint*)(cast(size_t)cast(void*)this + 296) & 0x4) != 0; }
	public @property final bool bEnableDebugInput(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 296) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 296) &= ~0x4; } return val; }
	public @property final bool bUpdateSceneViewportSizes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 296) & 0x2) != 0; }
	public @property final bool bUpdateSceneViewportSizes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 296) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 296) &= ~0x2; } return val; }
	public @property final bool bUpdateInputProcessingStatus() { return (*cast(uint*)(cast(size_t)cast(void*)this + 296) & 0x1) != 0; }
	public @property final bool bUpdateInputProcessingStatus(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 296) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 296) &= ~0x1; } return val; }
	public @property final auto ref UObject.Map_Mirror InitialPressedKeys() { return *cast(UObject.Map_Mirror*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref UObject.IntPoint DoubleClickStartPosition() { return *cast(UObject.IntPoint*)(cast(size_t)cast(void*)this + 228); }
	public @property final auto ref UObject.Double DoubleClickStartTime() { return *cast(UObject.Double*)(cast(size_t)cast(void*)this + 220); }
	public @property final auto ref float LatestDeltaTime() { return *cast(float*)(cast(size_t)cast(void*)this + 216); }
	final WorldInfo.ENetMode GetCurrentNetMode()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17834], params.ptr, cast(void*)0);
		return *cast(WorldInfo.ENetMode*)params.ptr;
	}
	final void RequestInputProcessingUpdate()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17836], cast(void*)0, cast(void*)0);
	}
	final bool CanUnpauseInternalUI()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17837], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void PauseGame(bool bDesiredPauseState, int PlayerIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bDesiredPauseState;
		*cast(int*)&params[4] = PlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17839], params.ptr, cast(void*)0);
	}
	final void NotifyClientTravel(PlayerController TravellingPlayer, ScriptString TravelURL, Actor.ETravelType TravelType, bool bIsSeamlessTravel)
	{
		ubyte params[21];
		params[] = 0;
		*cast(PlayerController*)params.ptr = TravellingPlayer;
		*cast(ScriptString*)&params[4] = TravelURL;
		*cast(Actor.ETravelType*)&params[16] = TravelType;
		*cast(bool*)&params[20] = bIsSeamlessTravel;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17843], params.ptr, cast(void*)0);
	}
	final void NotifyGameSessionEnded()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17848], cast(void*)0, cast(void*)0);
	}
	final void NotifyPlayerAdded(int PlayerIndex, LocalPlayer AddedPlayer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PlayerIndex;
		*cast(LocalPlayer*)&params[4] = AddedPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17849], params.ptr, cast(void*)0);
	}
	final void NotifyPlayerRemoved(int PlayerIndex, LocalPlayer RemovedPlayer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PlayerIndex;
		*cast(LocalPlayer*)&params[4] = RemovedPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17852], params.ptr, cast(void*)0);
	}
	final int FindLocalPlayerIndex(Player P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Player*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17855], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
}
