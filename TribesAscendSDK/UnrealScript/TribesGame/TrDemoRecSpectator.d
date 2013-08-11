module UnrealScript.TribesGame.TrDemoRecSpectator;

import ScriptClasses;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Camera;
import UnrealScript.TribesGame.TrPlayerController;

extern(C++) interface TrDemoRecSpectator : TrPlayerController
{
public extern(D):
	@property final
	{
		auto ref
		{
			float AutoSwitchPlayerInterval() { return *cast(float*)(cast(size_t)cast(void*)this + 3440); }
			PlayerReplicationInfo MyRealViewTarget() { return *cast(PlayerReplicationInfo*)(cast(size_t)cast(void*)this + 3436); }
		}
		bool bAutoSwitchPlayers() { return (*cast(uint*)(cast(size_t)cast(void*)this + 3432) & 0x4) != 0; }
		bool bAutoSwitchPlayers(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 3432) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 3432) &= ~0x4; } return val; }
		bool bLockRotationToViewTarget() { return (*cast(uint*)(cast(size_t)cast(void*)this + 3432) & 0x2) != 0; }
		bool bLockRotationToViewTarget(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 3432) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 3432) &= ~0x2; } return val; }
		bool bFindPlayer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 3432) & 0x1) != 0; }
		bool bFindPlayer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 3432) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 3432) &= ~0x1; } return val; }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79833], cast(void*)0, cast(void*)0);
	}
	void ReceivedPlayer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79838], cast(void*)0, cast(void*)0);
	}
	void InitPlayerReplicationInfo()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79839], cast(void*)0, cast(void*)0);
	}
	void Slomo(float NewTimeDilation)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewTimeDilation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79840], params.ptr, cast(void*)0);
	}
	void ViewClass(ScriptClass aClass, bool bQuiet, bool bCheat)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = aClass;
		*cast(bool*)&params[4] = bQuiet;
		*cast(bool*)&params[8] = bCheat;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79842], params.ptr, cast(void*)0);
	}
	void DemoViewNextPlayer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79849], cast(void*)0, cast(void*)0);
	}
	void SetViewTarget(Actor NewViewTarget, Camera.ViewTargetTransitionParams TransitionParams)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = NewViewTarget;
		*cast(Camera.ViewTargetTransitionParams*)&params[4] = TransitionParams;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79853], params.ptr, cast(void*)0);
	}
	void ServerViewSelf(Camera.ViewTargetTransitionParams TransitionParams)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Camera.ViewTargetTransitionParams*)params.ptr = TransitionParams;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79856], params.ptr, cast(void*)0);
	}
	void ClientSetRealViewTarget(PlayerReplicationInfo NewTarget)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = NewTarget;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79858], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79860], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void Pause()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79864], cast(void*)0, cast(void*)0);
	}
	void GetPlayerViewPoint(Vector* CameraLocation, Rotator* CameraRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = *CameraLocation;
		*cast(Rotator*)&params[12] = *CameraRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79865], params.ptr, cast(void*)0);
		*CameraLocation = *cast(Vector*)params.ptr;
		*CameraRotation = *cast(Rotator*)&params[12];
	}
	void UpdateRotation(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79868], params.ptr, cast(void*)0);
	}
}
