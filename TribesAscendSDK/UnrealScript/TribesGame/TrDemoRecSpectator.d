module UnrealScript.TribesGame.TrDemoRecSpectator;

import ScriptClasses;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Camera;
import UnrealScript.TribesGame.TrPlayerController;

extern(C++) interface TrDemoRecSpectator : TrPlayerController
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDemoRecSpectator")); }
	private static __gshared TrDemoRecSpectator mDefaultProperties;
	@property final static TrDemoRecSpectator DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDemoRecSpectator)("TrDemoRecSpectator TribesGame.Default__TrDemoRecSpectator")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mReceivedPlayer;
			ScriptFunction mInitPlayerReplicationInfo;
			ScriptFunction mSlomo;
			ScriptFunction mViewClass;
			ScriptFunction mDemoViewNextPlayer;
			ScriptFunction mSetViewTarget;
			ScriptFunction mServerViewSelf;
			ScriptFunction mClientSetRealViewTarget;
			ScriptFunction mSetPause;
			ScriptFunction mPause;
			ScriptFunction mGetPlayerViewPoint;
			ScriptFunction mUpdateRotation;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDemoRecSpectator.PostBeginPlay")); }
			ScriptFunction ReceivedPlayer() { return mReceivedPlayer ? mReceivedPlayer : (mReceivedPlayer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDemoRecSpectator.ReceivedPlayer")); }
			ScriptFunction InitPlayerReplicationInfo() { return mInitPlayerReplicationInfo ? mInitPlayerReplicationInfo : (mInitPlayerReplicationInfo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDemoRecSpectator.InitPlayerReplicationInfo")); }
			ScriptFunction Slomo() { return mSlomo ? mSlomo : (mSlomo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDemoRecSpectator.Slomo")); }
			ScriptFunction ViewClass() { return mViewClass ? mViewClass : (mViewClass = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDemoRecSpectator.ViewClass")); }
			ScriptFunction DemoViewNextPlayer() { return mDemoViewNextPlayer ? mDemoViewNextPlayer : (mDemoViewNextPlayer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDemoRecSpectator.DemoViewNextPlayer")); }
			ScriptFunction SetViewTarget() { return mSetViewTarget ? mSetViewTarget : (mSetViewTarget = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDemoRecSpectator.SetViewTarget")); }
			ScriptFunction ServerViewSelf() { return mServerViewSelf ? mServerViewSelf : (mServerViewSelf = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDemoRecSpectator.ServerViewSelf")); }
			ScriptFunction ClientSetRealViewTarget() { return mClientSetRealViewTarget ? mClientSetRealViewTarget : (mClientSetRealViewTarget = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDemoRecSpectator.ClientSetRealViewTarget")); }
			ScriptFunction SetPause() { return mSetPause ? mSetPause : (mSetPause = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDemoRecSpectator.SetPause")); }
			ScriptFunction Pause() { return mPause ? mPause : (mPause = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDemoRecSpectator.Pause")); }
			ScriptFunction GetPlayerViewPoint() { return mGetPlayerViewPoint ? mGetPlayerViewPoint : (mGetPlayerViewPoint = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDemoRecSpectator.GetPlayerViewPoint")); }
			ScriptFunction UpdateRotation() { return mUpdateRotation ? mUpdateRotation : (mUpdateRotation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDemoRecSpectator.UpdateRotation")); }
		}
	}
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
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void ReceivedPlayer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReceivedPlayer, cast(void*)0, cast(void*)0);
	}
	void InitPlayerReplicationInfo()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitPlayerReplicationInfo, cast(void*)0, cast(void*)0);
	}
	void Slomo(float NewTimeDilation)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewTimeDilation;
		(cast(ScriptObject)this).ProcessEvent(Functions.Slomo, params.ptr, cast(void*)0);
	}
	void ViewClass(ScriptClass aClass, bool bQuiet, bool bCheat)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = aClass;
		*cast(bool*)&params[4] = bQuiet;
		*cast(bool*)&params[8] = bCheat;
		(cast(ScriptObject)this).ProcessEvent(Functions.ViewClass, params.ptr, cast(void*)0);
	}
	void DemoViewNextPlayer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DemoViewNextPlayer, cast(void*)0, cast(void*)0);
	}
	void SetViewTarget(Actor NewViewTarget, Camera.ViewTargetTransitionParams TransitionParams)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = NewViewTarget;
		*cast(Camera.ViewTargetTransitionParams*)&params[4] = TransitionParams;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetViewTarget, params.ptr, cast(void*)0);
	}
	void ServerViewSelf(Camera.ViewTargetTransitionParams TransitionParams)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Camera.ViewTargetTransitionParams*)params.ptr = TransitionParams;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerViewSelf, params.ptr, cast(void*)0);
	}
	void ClientSetRealViewTarget(PlayerReplicationInfo NewTarget)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = NewTarget;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientSetRealViewTarget, params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPause, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void Pause()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Pause, cast(void*)0, cast(void*)0);
	}
	void GetPlayerViewPoint(Vector* CameraLocation, Rotator* CameraRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = *CameraLocation;
		*cast(Rotator*)&params[12] = *CameraRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlayerViewPoint, params.ptr, cast(void*)0);
		*CameraLocation = *cast(Vector*)params.ptr;
		*CameraRotation = *cast(Rotator*)&params[12];
	}
	void UpdateRotation(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateRotation, params.ptr, cast(void*)0);
	}
}
