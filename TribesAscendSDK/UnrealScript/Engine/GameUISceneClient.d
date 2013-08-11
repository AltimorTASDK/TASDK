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
public extern(D):
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptName) NavAliases() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 300); }
			ScriptArray!(ScriptName) AxisInputKeys() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 312); }
			UObject.Map_Mirror InitialPressedKeys() { return *cast(UObject.Map_Mirror*)(cast(size_t)cast(void*)this + 236); }
			UObject.IntPoint DoubleClickStartPosition() { return *cast(UObject.IntPoint*)(cast(size_t)cast(void*)this + 228); }
			UObject.Double DoubleClickStartTime() { return *cast(UObject.Double*)(cast(size_t)cast(void*)this + 220); }
			float LatestDeltaTime() { return *cast(float*)(cast(size_t)cast(void*)this + 216); }
		}
		bool bCaptureUnprocessedInput() { return (*cast(uint*)(cast(size_t)cast(void*)this + 296) & 0x10) != 0; }
		bool bCaptureUnprocessedInput(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 296) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 296) &= ~0x10; } return val; }
		bool bRenderDebugInfo() { return (*cast(uint*)(cast(size_t)cast(void*)this + 296) & 0x8) != 0; }
		bool bRenderDebugInfo(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 296) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 296) &= ~0x8; } return val; }
		bool bEnableDebugInput() { return (*cast(uint*)(cast(size_t)cast(void*)this + 296) & 0x4) != 0; }
		bool bEnableDebugInput(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 296) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 296) &= ~0x4; } return val; }
		bool bUpdateSceneViewportSizes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 296) & 0x2) != 0; }
		bool bUpdateSceneViewportSizes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 296) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 296) &= ~0x2; } return val; }
		bool bUpdateInputProcessingStatus() { return (*cast(uint*)(cast(size_t)cast(void*)this + 296) & 0x1) != 0; }
		bool bUpdateInputProcessingStatus(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 296) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 296) &= ~0x1; } return val; }
	}
final:
	WorldInfo.ENetMode GetCurrentNetMode()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17834], params.ptr, cast(void*)0);
		return *cast(WorldInfo.ENetMode*)params.ptr;
	}
	void RequestInputProcessingUpdate()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17836], cast(void*)0, cast(void*)0);
	}
	bool CanUnpauseInternalUI()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17837], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void PauseGame(bool bDesiredPauseState, int PlayerIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bDesiredPauseState;
		*cast(int*)&params[4] = PlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17839], params.ptr, cast(void*)0);
	}
	void NotifyClientTravel(PlayerController TravellingPlayer, ScriptString TravelURL, Actor.ETravelType TravelType, bool bIsSeamlessTravel)
	{
		ubyte params[24];
		params[] = 0;
		*cast(PlayerController*)params.ptr = TravellingPlayer;
		*cast(ScriptString*)&params[4] = TravelURL;
		*cast(Actor.ETravelType*)&params[16] = TravelType;
		*cast(bool*)&params[20] = bIsSeamlessTravel;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17843], params.ptr, cast(void*)0);
	}
	void NotifyGameSessionEnded()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17848], cast(void*)0, cast(void*)0);
	}
	void NotifyPlayerAdded(int PlayerIndex, LocalPlayer AddedPlayer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PlayerIndex;
		*cast(LocalPlayer*)&params[4] = AddedPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17849], params.ptr, cast(void*)0);
	}
	void NotifyPlayerRemoved(int PlayerIndex, LocalPlayer RemovedPlayer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PlayerIndex;
		*cast(LocalPlayer*)&params[4] = RemovedPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17852], params.ptr, cast(void*)0);
	}
	int FindLocalPlayerIndex(Player P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Player*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17855], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
}
