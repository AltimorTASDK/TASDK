module UnrealScript.Engine.DebugCameraController;

import ScriptClasses;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.Player;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.UObject;

extern(C++) interface DebugCameraController : PlayerController
{
public extern(D):
	@property final
	{
		auto ref
		{
			Player OryginalPlayer() { return *cast(Player*)(cast(size_t)cast(void*)this + 1480); }
			PlayerController OryginalControllerRef() { return *cast(PlayerController*)(cast(size_t)cast(void*)this + 1476); }
			Actor SelectedActor() { return *cast(Actor*)(cast(size_t)cast(void*)this + 1488); }
			ScriptName UnselectKey() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1464); }
			ScriptName SecondaryKey() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1456); }
			ScriptName PrimaryKey() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1448); }
		}
		bool bIsFrozenRendering() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1472) & 0x2) != 0; }
		bool bIsFrozenRendering(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1472) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1472) &= ~0x2; } return val; }
		bool bShowSelectedInfo() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1472) & 0x1) != 0; }
		bool bShowSelectedInfo(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1472) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1472) &= ~0x1; } return val; }
	}
final:
	void PrimarySelect(Vector HitLoc, Vector HitNormal, Actor.TraceHitInfo HitInfo)
	{
		ubyte params[52];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLoc;
		*cast(Vector*)&params[12] = HitNormal;
		*cast(Actor.TraceHitInfo*)&params[24] = HitInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13678], params.ptr, cast(void*)0);
	}
	void SecondarySelect(Vector HitLoc, Vector HitNormal, Actor.TraceHitInfo HitInfo)
	{
		ubyte params[52];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLoc;
		*cast(Vector*)&params[12] = HitNormal;
		*cast(Actor.TraceHitInfo*)&params[24] = HitInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13682], params.ptr, cast(void*)0);
	}
	void Unselect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13686], cast(void*)0, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13687], cast(void*)0, cast(void*)0);
	}
	void OnActivate(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13689], params.ptr, cast(void*)0);
	}
	ScriptString ConsoleCommand(ScriptString Command, bool bWriteToLog)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Command;
		*cast(bool*)&params[12] = bWriteToLog;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13691], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[16];
	}
	void OnDeactivate(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13693], params.ptr, cast(void*)0);
	}
	void DisableDebugCamera()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13695], cast(void*)0, cast(void*)0);
	}
	bool NativeInputKey(int ControllerId, ScriptName Key, UObject.EInputEvent Event, float AmountDepressed, bool bGamepad)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(ScriptName*)&params[4] = Key;
		*cast(UObject.EInputEvent*)&params[12] = Event;
		*cast(float*)&params[16] = AmountDepressed;
		*cast(bool*)&params[20] = bGamepad;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13700], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
}
