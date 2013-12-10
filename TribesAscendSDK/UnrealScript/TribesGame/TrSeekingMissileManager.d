module UnrealScript.TribesGame.TrSeekingMissileManager;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.Engine.Pawn;
import UnrealScript.TribesGame.TrDevice_SaberLauncher;
import UnrealScript.Engine.Info;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.TribesGame.TrProj_TrackingMissile;
import UnrealScript.TribesGame.TrVehicle;

extern(C++) interface TrSeekingMissileManager : Info
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrSeekingMissileManager")); }
	private static __gshared TrSeekingMissileManager mDefaultProperties;
	@property final static TrSeekingMissileManager DefaultProperties() { mixin(MGDPC("TrSeekingMissileManager", "TrSeekingMissileManager TribesGame.Default__TrSeekingMissileManager")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mTick;
			ScriptFunction mAddSaberLauncher;
			ScriptFunction mRemoveSaberLauncher;
			ScriptFunction mGetNumSaberLaunchersTargetingController;
			ScriptFunction mGetNumSaberLaunchersTargetingVehicle;
			ScriptFunction mAddMissile;
			ScriptFunction mRemoveMissile;
			ScriptFunction mGetNumMissilesTrackingController;
			ScriptFunction mGetNumMissilesTrackingVehicle;
			ScriptFunction mVictimControllerUpdated;
			ScriptFunction mTargetVehicleUpdated;
			ScriptFunction mBeginSaberLauncherTargeting;
			ScriptFunction mStopSaberLauncherTargeting;
			ScriptFunction mBeginMissileTracking;
			ScriptFunction mStopMissileTracking;
			ScriptFunction mPawnLeftVehicle;
			ScriptFunction mPawnEnteredVehicle;
		}
		public @property static final
		{
			ScriptFunction Tick() { mixin(MGF("mTick", "Function TribesGame.TrSeekingMissileManager.Tick")); }
			ScriptFunction AddSaberLauncher() { mixin(MGF("mAddSaberLauncher", "Function TribesGame.TrSeekingMissileManager.AddSaberLauncher")); }
			ScriptFunction RemoveSaberLauncher() { mixin(MGF("mRemoveSaberLauncher", "Function TribesGame.TrSeekingMissileManager.RemoveSaberLauncher")); }
			ScriptFunction GetNumSaberLaunchersTargetingController() { mixin(MGF("mGetNumSaberLaunchersTargetingController", "Function TribesGame.TrSeekingMissileManager.GetNumSaberLaunchersTargetingController")); }
			ScriptFunction GetNumSaberLaunchersTargetingVehicle() { mixin(MGF("mGetNumSaberLaunchersTargetingVehicle", "Function TribesGame.TrSeekingMissileManager.GetNumSaberLaunchersTargetingVehicle")); }
			ScriptFunction AddMissile() { mixin(MGF("mAddMissile", "Function TribesGame.TrSeekingMissileManager.AddMissile")); }
			ScriptFunction RemoveMissile() { mixin(MGF("mRemoveMissile", "Function TribesGame.TrSeekingMissileManager.RemoveMissile")); }
			ScriptFunction GetNumMissilesTrackingController() { mixin(MGF("mGetNumMissilesTrackingController", "Function TribesGame.TrSeekingMissileManager.GetNumMissilesTrackingController")); }
			ScriptFunction GetNumMissilesTrackingVehicle() { mixin(MGF("mGetNumMissilesTrackingVehicle", "Function TribesGame.TrSeekingMissileManager.GetNumMissilesTrackingVehicle")); }
			ScriptFunction VictimControllerUpdated() { mixin(MGF("mVictimControllerUpdated", "Function TribesGame.TrSeekingMissileManager.VictimControllerUpdated")); }
			ScriptFunction TargetVehicleUpdated() { mixin(MGF("mTargetVehicleUpdated", "Function TribesGame.TrSeekingMissileManager.TargetVehicleUpdated")); }
			ScriptFunction BeginSaberLauncherTargeting() { mixin(MGF("mBeginSaberLauncherTargeting", "Function TribesGame.TrSeekingMissileManager.BeginSaberLauncherTargeting")); }
			ScriptFunction StopSaberLauncherTargeting() { mixin(MGF("mStopSaberLauncherTargeting", "Function TribesGame.TrSeekingMissileManager.StopSaberLauncherTargeting")); }
			ScriptFunction BeginMissileTracking() { mixin(MGF("mBeginMissileTracking", "Function TribesGame.TrSeekingMissileManager.BeginMissileTracking")); }
			ScriptFunction StopMissileTracking() { mixin(MGF("mStopMissileTracking", "Function TribesGame.TrSeekingMissileManager.StopMissileTracking")); }
			ScriptFunction PawnLeftVehicle() { mixin(MGF("mPawnLeftVehicle", "Function TribesGame.TrSeekingMissileManager.PawnLeftVehicle")); }
			ScriptFunction PawnEnteredVehicle() { mixin(MGF("mPawnEnteredVehicle", "Function TribesGame.TrSeekingMissileManager.PawnEnteredVehicle")); }
		}
	}
	enum ETrackingMissileEvent : ubyte
	{
		MissileEvent_NewMissileTracking = 0,
		MissileEvent_MissileStoppedTracking = 1,
		MissileEvent_NewSaberLauncherTargeting = 2,
		MissileEvent_SaberLauncherStoppedTargeting = 3,
		MissileEvent_NotifyClientAboutSaberLauncher = 4,
		MissileEvent_MAX = 5,
	}
	struct TargetingSaberLauncherInfo
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct TribesGame.TrSeekingMissileManager.TargetingSaberLauncherInfo")); }
		@property final auto ref
		{
			TrDevice_SaberLauncher SaberLauncher() { mixin(MGPS("TrDevice_SaberLauncher", 0)); }
			float RemainingClientNotificationTime() { mixin(MGPS("float", 8)); }
			TrPlayerController VictimController() { mixin(MGPS("TrPlayerController", 4)); }
		}
	}
	struct SeekingMissileInfo
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct TribesGame.TrSeekingMissileManager.SeekingMissileInfo")); }
		@property final auto ref
		{
			TrProj_TrackingMissile MissileVar() { mixin(MGPS("TrProj_TrackingMissile", 0)); }
			TrPlayerController VictimController() { mixin(MGPS("TrPlayerController", 4)); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(TrSeekingMissileManager.TargetingSaberLauncherInfo) ActiveTargetingSaberLaunchers() { mixin(MGPC("ScriptArray!(TrSeekingMissileManager.TargetingSaberLauncherInfo)", 488)); }
		ScriptArray!(TrSeekingMissileManager.SeekingMissileInfo) ActiveSeekingMissiles() { mixin(MGPC("ScriptArray!(TrSeekingMissileManager.SeekingMissileInfo)", 476)); }
		int RepCounter() { mixin(MGPC("int", 500)); }
	}
final:
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
	void AddSaberLauncher(TrDevice_SaberLauncher SaberLauncherToAdd, TrObject.EMissileLock MissileLockValue)
	{
		ubyte params[5];
		params[] = 0;
		*cast(TrDevice_SaberLauncher*)params.ptr = SaberLauncherToAdd;
		*cast(TrObject.EMissileLock*)&params[4] = MissileLockValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddSaberLauncher, params.ptr, cast(void*)0);
	}
	void RemoveSaberLauncher(TrDevice_SaberLauncher SaberLauncherToRemove)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrDevice_SaberLauncher*)params.ptr = SaberLauncherToRemove;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveSaberLauncher, params.ptr, cast(void*)0);
	}
	int GetNumSaberLaunchersTargetingController(TrPlayerController pController, bool bOnlyClientNotified)
	{
		ubyte params[12];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = pController;
		*cast(bool*)&params[4] = bOnlyClientNotified;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNumSaberLaunchersTargetingController, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	int GetNumSaberLaunchersTargetingVehicle(TrVehicle targetVehicle, bool bOnlyClientNotified)
	{
		ubyte params[12];
		params[] = 0;
		*cast(TrVehicle*)params.ptr = targetVehicle;
		*cast(bool*)&params[4] = bOnlyClientNotified;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNumSaberLaunchersTargetingVehicle, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	void AddMissile(TrProj_TrackingMissile MissileToAdd)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrProj_TrackingMissile*)params.ptr = MissileToAdd;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddMissile, params.ptr, cast(void*)0);
	}
	void RemoveMissile(TrProj_TrackingMissile MissileToRemove)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrProj_TrackingMissile*)params.ptr = MissileToRemove;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveMissile, params.ptr, cast(void*)0);
	}
	int GetNumMissilesTrackingController(TrPlayerController pController)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = pController;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNumMissilesTrackingController, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	int GetNumMissilesTrackingVehicle(TrVehicle targetVehicle)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrVehicle*)params.ptr = targetVehicle;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNumMissilesTrackingVehicle, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	void VictimControllerUpdated(TrPlayerController VictimController, TrSeekingMissileManager.ETrackingMissileEvent MissileEvent)
	{
		ubyte params[5];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = VictimController;
		*cast(TrSeekingMissileManager.ETrackingMissileEvent*)&params[4] = MissileEvent;
		(cast(ScriptObject)this).ProcessEvent(Functions.VictimControllerUpdated, params.ptr, cast(void*)0);
	}
	void TargetVehicleUpdated(TrVehicle targetVehicle, TrSeekingMissileManager.ETrackingMissileEvent MissileEvent)
	{
		ubyte params[5];
		params[] = 0;
		*cast(TrVehicle*)params.ptr = targetVehicle;
		*cast(TrSeekingMissileManager.ETrackingMissileEvent*)&params[4] = MissileEvent;
		(cast(ScriptObject)this).ProcessEvent(Functions.TargetVehicleUpdated, params.ptr, cast(void*)0);
	}
	void BeginSaberLauncherTargeting(TrPlayerController VictimController)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = VictimController;
		(cast(ScriptObject)this).ProcessEvent(Functions.BeginSaberLauncherTargeting, params.ptr, cast(void*)0);
	}
	void StopSaberLauncherTargeting(TrPlayerController VictimController)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = VictimController;
		(cast(ScriptObject)this).ProcessEvent(Functions.StopSaberLauncherTargeting, params.ptr, cast(void*)0);
	}
	void BeginMissileTracking(TrPlayerController VictimController)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = VictimController;
		(cast(ScriptObject)this).ProcessEvent(Functions.BeginMissileTracking, params.ptr, cast(void*)0);
	}
	void StopMissileTracking(TrPlayerController VictimController)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = VictimController;
		(cast(ScriptObject)this).ProcessEvent(Functions.StopMissileTracking, params.ptr, cast(void*)0);
	}
	void PawnLeftVehicle(Pawn LeavingPawn, TrVehicle pVehicle)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = LeavingPawn;
		*cast(TrVehicle*)&params[4] = pVehicle;
		(cast(ScriptObject)this).ProcessEvent(Functions.PawnLeftVehicle, params.ptr, cast(void*)0);
	}
	void PawnEnteredVehicle(Pawn EnteringPawn, TrVehicle pVehicle, int SeatIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = EnteringPawn;
		*cast(TrVehicle*)&params[4] = pVehicle;
		*cast(int*)&params[8] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.PawnEnteredVehicle, params.ptr, cast(void*)0);
	}
}
