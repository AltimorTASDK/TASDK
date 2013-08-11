module UnrealScript.UTGame.DemoRecSpectator;

import ScriptClasses;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Camera;

extern(C++) interface DemoRecSpectator : UTPlayerController
{
public extern(D):
	@property final
	{
		auto ref
		{
			float AutoSwitchPlayerInterval() { return *cast(float*)(cast(size_t)cast(void*)this + 2184); }
			PlayerReplicationInfo MyRealViewTarget() { return *cast(PlayerReplicationInfo*)(cast(size_t)cast(void*)this + 2180); }
		}
		bool bAutoSwitchPlayers() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2176) & 0x4) != 0; }
		bool bAutoSwitchPlayers(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2176) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2176) &= ~0x4; } return val; }
		bool bLockRotationToViewTarget() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2176) & 0x2) != 0; }
		bool bLockRotationToViewTarget(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2176) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2176) &= ~0x2; } return val; }
		bool bFindPlayer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2176) & 0x1) != 0; }
		bool bFindPlayer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2176) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2176) &= ~0x1; } return val; }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37236], cast(void*)0, cast(void*)0);
	}
	void ReceivedPlayer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37237], cast(void*)0, cast(void*)0);
	}
	void InitPlayerReplicationInfo()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37238], cast(void*)0, cast(void*)0);
	}
	void Slomo(float NewTimeDilation)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewTimeDilation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37239], params.ptr, cast(void*)0);
	}
	void ViewClass(ScriptClass aClass, bool bQuiet, bool bCheat)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = aClass;
		*cast(bool*)&params[4] = bQuiet;
		*cast(bool*)&params[8] = bCheat;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37241], params.ptr, cast(void*)0);
	}
	void DemoViewNextPlayer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37248], cast(void*)0, cast(void*)0);
	}
	void SetViewTarget(Actor NewViewTarget, Camera.ViewTargetTransitionParams TransitionParams)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = NewViewTarget;
		*cast(Camera.ViewTargetTransitionParams*)&params[4] = TransitionParams;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37252], params.ptr, cast(void*)0);
	}
	void ServerViewSelf(Camera.ViewTargetTransitionParams TransitionParams)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Camera.ViewTargetTransitionParams*)params.ptr = TransitionParams;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37255], params.ptr, cast(void*)0);
	}
	void ClientSetRealViewTarget(PlayerReplicationInfo NewTarget)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = NewTarget;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37257], params.ptr, cast(void*)0);
	}
	bool SetPause(bool bPause, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* CanUnpauseDelegate)
	{
		ubyte params[20];
		params[] = 0;
		*cast(bool*)params.ptr = bPause;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = CanUnpauseDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37259], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void Pause()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37263], cast(void*)0, cast(void*)0);
	}
	void GetPlayerViewPoint(Vector* CameraLocation, Rotator* CameraRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = *CameraLocation;
		*cast(Rotator*)&params[12] = *CameraRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37278], params.ptr, cast(void*)0);
		*CameraLocation = *cast(Vector*)params.ptr;
		*CameraRotation = *cast(Rotator*)&params[12];
	}
	void UpdateRotation(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37281], params.ptr, cast(void*)0);
	}
}
