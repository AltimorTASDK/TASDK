module UnrealScript.UTGame.DemoRecSpectator;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Camera;

extern(C++) interface DemoRecSpectator : UTPlayerController
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.DemoRecSpectator")()); }
	private static __gshared DemoRecSpectator mDefaultProperties;
	@property final static DemoRecSpectator DefaultProperties() { mixin(MGDPC!(DemoRecSpectator, "DemoRecSpectator UTGame.Default__DemoRecSpectator")()); }
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
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function UTGame.DemoRecSpectator.PostBeginPlay")()); }
			ScriptFunction ReceivedPlayer() { mixin(MGF!("mReceivedPlayer", "Function UTGame.DemoRecSpectator.ReceivedPlayer")()); }
			ScriptFunction InitPlayerReplicationInfo() { mixin(MGF!("mInitPlayerReplicationInfo", "Function UTGame.DemoRecSpectator.InitPlayerReplicationInfo")()); }
			ScriptFunction Slomo() { mixin(MGF!("mSlomo", "Function UTGame.DemoRecSpectator.Slomo")()); }
			ScriptFunction ViewClass() { mixin(MGF!("mViewClass", "Function UTGame.DemoRecSpectator.ViewClass")()); }
			ScriptFunction DemoViewNextPlayer() { mixin(MGF!("mDemoViewNextPlayer", "Function UTGame.DemoRecSpectator.DemoViewNextPlayer")()); }
			ScriptFunction SetViewTarget() { mixin(MGF!("mSetViewTarget", "Function UTGame.DemoRecSpectator.SetViewTarget")()); }
			ScriptFunction ServerViewSelf() { mixin(MGF!("mServerViewSelf", "Function UTGame.DemoRecSpectator.ServerViewSelf")()); }
			ScriptFunction ClientSetRealViewTarget() { mixin(MGF!("mClientSetRealViewTarget", "Function UTGame.DemoRecSpectator.ClientSetRealViewTarget")()); }
			ScriptFunction SetPause() { mixin(MGF!("mSetPause", "Function UTGame.DemoRecSpectator.SetPause")()); }
			ScriptFunction Pause() { mixin(MGF!("mPause", "Function UTGame.DemoRecSpectator.Pause")()); }
			ScriptFunction GetPlayerViewPoint() { mixin(MGF!("mGetPlayerViewPoint", "Function UTGame.DemoRecSpectator.GetPlayerViewPoint")()); }
			ScriptFunction UpdateRotation() { mixin(MGF!("mUpdateRotation", "Function UTGame.DemoRecSpectator.UpdateRotation")()); }
		}
	}
	static struct Spectating
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.DemoRecSpectator.Spectating")()); }
	}
	@property final
	{
		auto ref
		{
			float AutoSwitchPlayerInterval() { mixin(MGPC!("float", 2184)()); }
			PlayerReplicationInfo MyRealViewTarget() { mixin(MGPC!("PlayerReplicationInfo", 2180)()); }
		}
		bool bAutoSwitchPlayers() { mixin(MGBPC!(2176, 0x4)()); }
		bool bAutoSwitchPlayers(bool val) { mixin(MSBPC!(2176, 0x4)()); }
		bool bLockRotationToViewTarget() { mixin(MGBPC!(2176, 0x2)()); }
		bool bLockRotationToViewTarget(bool val) { mixin(MSBPC!(2176, 0x2)()); }
		bool bFindPlayer() { mixin(MGBPC!(2176, 0x1)()); }
		bool bFindPlayer(bool val) { mixin(MSBPC!(2176, 0x1)()); }
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
	void ViewClass(ScriptClass aClass, bool* bQuiet = null, bool* bCheat = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = aClass;
		if (bQuiet !is null)
			*cast(bool*)&params[4] = *bQuiet;
		if (bCheat !is null)
			*cast(bool*)&params[8] = *bCheat;
		(cast(ScriptObject)this).ProcessEvent(Functions.ViewClass, params.ptr, cast(void*)0);
	}
	void DemoViewNextPlayer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DemoViewNextPlayer, cast(void*)0, cast(void*)0);
	}
	void SetViewTarget(Actor NewViewTarget, Camera.ViewTargetTransitionParams* TransitionParams = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = NewViewTarget;
		if (TransitionParams !is null)
			*cast(Camera.ViewTargetTransitionParams*)&params[4] = *TransitionParams;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetViewTarget, params.ptr, cast(void*)0);
	}
	void ServerViewSelf(Camera.ViewTargetTransitionParams* TransitionParams = null)
	{
		ubyte params[16];
		params[] = 0;
		if (TransitionParams !is null)
			*cast(Camera.ViewTargetTransitionParams*)params.ptr = *TransitionParams;
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
void** CanUnpauseDelegate = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(bool*)params.ptr = bPause;
		if (CanUnpauseDelegate !is null)
			*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = *CanUnpauseDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPause, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void Pause()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Pause, cast(void*)0, cast(void*)0);
	}
	void GetPlayerViewPoint(ref Vector CameraLocation, ref Rotator CameraRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = CameraLocation;
		*cast(Rotator*)&params[12] = CameraRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlayerViewPoint, params.ptr, cast(void*)0);
		CameraLocation = *cast(Vector*)params.ptr;
		CameraRotation = *cast(Rotator*)&params[12];
	}
	void UpdateRotation(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateRotation, params.ptr, cast(void*)0);
	}
}
