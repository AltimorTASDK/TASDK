module UnrealScript.TribesGame.TrDemoRecSpectator;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Camera;
import UnrealScript.TribesGame.TrPlayerController;

extern(C++) interface TrDemoRecSpectator : TrPlayerController
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDemoRecSpectator")()); }
	private static __gshared TrDemoRecSpectator mDefaultProperties;
	@property final static TrDemoRecSpectator DefaultProperties() { mixin(MGDPC!(TrDemoRecSpectator, "TrDemoRecSpectator TribesGame.Default__TrDemoRecSpectator")()); }
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
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrDemoRecSpectator.PostBeginPlay")()); }
			ScriptFunction ReceivedPlayer() { mixin(MGF!("mReceivedPlayer", "Function TribesGame.TrDemoRecSpectator.ReceivedPlayer")()); }
			ScriptFunction InitPlayerReplicationInfo() { mixin(MGF!("mInitPlayerReplicationInfo", "Function TribesGame.TrDemoRecSpectator.InitPlayerReplicationInfo")()); }
			ScriptFunction Slomo() { mixin(MGF!("mSlomo", "Function TribesGame.TrDemoRecSpectator.Slomo")()); }
			ScriptFunction ViewClass() { mixin(MGF!("mViewClass", "Function TribesGame.TrDemoRecSpectator.ViewClass")()); }
			ScriptFunction DemoViewNextPlayer() { mixin(MGF!("mDemoViewNextPlayer", "Function TribesGame.TrDemoRecSpectator.DemoViewNextPlayer")()); }
			ScriptFunction SetViewTarget() { mixin(MGF!("mSetViewTarget", "Function TribesGame.TrDemoRecSpectator.SetViewTarget")()); }
			ScriptFunction ServerViewSelf() { mixin(MGF!("mServerViewSelf", "Function TribesGame.TrDemoRecSpectator.ServerViewSelf")()); }
			ScriptFunction ClientSetRealViewTarget() { mixin(MGF!("mClientSetRealViewTarget", "Function TribesGame.TrDemoRecSpectator.ClientSetRealViewTarget")()); }
			ScriptFunction SetPause() { mixin(MGF!("mSetPause", "Function TribesGame.TrDemoRecSpectator.SetPause")()); }
			ScriptFunction Pause() { mixin(MGF!("mPause", "Function TribesGame.TrDemoRecSpectator.Pause")()); }
			ScriptFunction GetPlayerViewPoint() { mixin(MGF!("mGetPlayerViewPoint", "Function TribesGame.TrDemoRecSpectator.GetPlayerViewPoint")()); }
			ScriptFunction UpdateRotation() { mixin(MGF!("mUpdateRotation", "Function TribesGame.TrDemoRecSpectator.UpdateRotation")()); }
		}
	}
	static struct NeutralRovingSpectateTimer
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrDemoRecSpectator.NeutralRovingSpectateTimer")()); }
	}
	@property final
	{
		auto ref
		{
			float AutoSwitchPlayerInterval() { mixin(MGPC!(float, 3440)()); }
			PlayerReplicationInfo MyRealViewTarget() { mixin(MGPC!(PlayerReplicationInfo, 3436)()); }
		}
		bool bAutoSwitchPlayers() { mixin(MGBPC!(3432, 0x4)()); }
		bool bAutoSwitchPlayers(bool val) { mixin(MSBPC!(3432, 0x4)()); }
		bool bLockRotationToViewTarget() { mixin(MGBPC!(3432, 0x2)()); }
		bool bLockRotationToViewTarget(bool val) { mixin(MSBPC!(3432, 0x2)()); }
		bool bFindPlayer() { mixin(MGBPC!(3432, 0x1)()); }
		bool bFindPlayer(bool val) { mixin(MSBPC!(3432, 0x1)()); }
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
	void GetPlayerViewPoint(ref Vector CameraLocation, ref Rotator CameraRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = CameraLocation;
		*cast(Rotator*)&params[12] = CameraRotation;
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
