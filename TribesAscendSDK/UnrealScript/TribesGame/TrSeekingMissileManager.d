module UnrealScript.TribesGame.TrSeekingMissileManager;

import ScriptClasses;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.Engine.Pawn;
import UnrealScript.TribesGame.TrDevice_SaberLauncher;
import UnrealScript.Engine.Info;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.TribesGame.TrProj_TrackingMissile;
import UnrealScript.TribesGame.TrVehicle;

extern(C++) interface TrSeekingMissileManager : Info
{
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
		public @property final auto ref TrDevice_SaberLauncher SaberLauncher() { return *cast(TrDevice_SaberLauncher*)(cast(size_t)&this + 0); }
		private ubyte __SaberLauncher[4];
		public @property final auto ref float RemainingClientNotificationTime() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __RemainingClientNotificationTime[4];
		public @property final auto ref TrPlayerController VictimController() { return *cast(TrPlayerController*)(cast(size_t)&this + 4); }
		private ubyte __VictimController[4];
	}
	struct SeekingMissileInfo
	{
		// WARNING: Property 'Missile' has the same name as a defined type!
		public @property final auto ref TrPlayerController VictimController() { return *cast(TrPlayerController*)(cast(size_t)&this + 4); }
		private ubyte __VictimController[4];
	}
	public @property final auto ref ScriptArray!(TrSeekingMissileManager.TargetingSaberLauncherInfo) ActiveTargetingSaberLaunchers() { return *cast(ScriptArray!(TrSeekingMissileManager.TargetingSaberLauncherInfo)*)(cast(size_t)cast(void*)this + 488); }
	public @property final auto ref ScriptArray!(TrSeekingMissileManager.SeekingMissileInfo) ActiveSeekingMissiles() { return *cast(ScriptArray!(TrSeekingMissileManager.SeekingMissileInfo)*)(cast(size_t)cast(void*)this + 476); }
	public @property final auto ref int RepCounter() { return *cast(int*)(cast(size_t)cast(void*)this + 500); }
	final void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110782], params.ptr, cast(void*)0);
	}
	final void AddSaberLauncher(TrDevice_SaberLauncher SaberLauncherToAdd, TrObject.EMissileLock MissileLockValue)
	{
		ubyte params[5];
		params[] = 0;
		*cast(TrDevice_SaberLauncher*)params.ptr = SaberLauncherToAdd;
		*cast(TrObject.EMissileLock*)&params[4] = MissileLockValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110792], params.ptr, cast(void*)0);
	}
	final void RemoveSaberLauncher(TrDevice_SaberLauncher SaberLauncherToRemove)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrDevice_SaberLauncher*)params.ptr = SaberLauncherToRemove;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110802], params.ptr, cast(void*)0);
	}
	final int GetNumSaberLaunchersTargetingController(TrPlayerController Controller, bool bOnlyClientNotified)
	{
		ubyte params[12];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = Controller;
		*cast(bool*)&params[4] = bOnlyClientNotified;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110809], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final int GetNumSaberLaunchersTargetingVehicle(TrVehicle targetVehicle, bool bOnlyClientNotified)
	{
		ubyte params[12];
		params[] = 0;
		*cast(TrVehicle*)params.ptr = targetVehicle;
		*cast(bool*)&params[4] = bOnlyClientNotified;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110815], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final void AddMissile(TrProj_TrackingMissile MissileToAdd)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrProj_TrackingMissile*)params.ptr = MissileToAdd;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110821], params.ptr, cast(void*)0);
	}
	final void RemoveMissile(TrProj_TrackingMissile MissileToRemove)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrProj_TrackingMissile*)params.ptr = MissileToRemove;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110831], params.ptr, cast(void*)0);
	}
	final int GetNumMissilesTrackingController(TrPlayerController Controller)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = Controller;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110837], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final int GetNumMissilesTrackingVehicle(TrVehicle targetVehicle)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrVehicle*)params.ptr = targetVehicle;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110842], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final void VictimControllerUpdated(TrPlayerController VictimController, TrSeekingMissileManager.ETrackingMissileEvent MissileEvent)
	{
		ubyte params[5];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = VictimController;
		*cast(TrSeekingMissileManager.ETrackingMissileEvent*)&params[4] = MissileEvent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110847], params.ptr, cast(void*)0);
	}
	final void TargetVehicleUpdated(TrVehicle targetVehicle, TrSeekingMissileManager.ETrackingMissileEvent MissileEvent)
	{
		ubyte params[5];
		params[] = 0;
		*cast(TrVehicle*)params.ptr = targetVehicle;
		*cast(TrSeekingMissileManager.ETrackingMissileEvent*)&params[4] = MissileEvent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110852], params.ptr, cast(void*)0);
	}
	final void BeginSaberLauncherTargeting(TrPlayerController VictimController)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = VictimController;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110859], params.ptr, cast(void*)0);
	}
	final void StopSaberLauncherTargeting(TrPlayerController VictimController)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = VictimController;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110861], params.ptr, cast(void*)0);
	}
	final void BeginMissileTracking(TrPlayerController VictimController)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = VictimController;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110863], params.ptr, cast(void*)0);
	}
	final void StopMissileTracking(TrPlayerController VictimController)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = VictimController;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110865], params.ptr, cast(void*)0);
	}
	final void PawnLeftVehicle(Pawn LeavingPawn, TrVehicle Vehicle)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = LeavingPawn;
		*cast(TrVehicle*)&params[4] = Vehicle;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110867], params.ptr, cast(void*)0);
	}
	final void PawnEnteredVehicle(Pawn EnteringPawn, TrVehicle Vehicle, int SeatIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = EnteringPawn;
		*cast(TrVehicle*)&params[4] = Vehicle;
		*cast(int*)&params[8] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110875], params.ptr, cast(void*)0);
	}
}
