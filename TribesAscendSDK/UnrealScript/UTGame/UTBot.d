module UnrealScript.UTGame.UTBot;

import ScriptClasses;
import UnrealScript.Engine.Projectile;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.InterpActor;
import UnrealScript.UTGame.UTDefensePoint;
import UnrealScript.Engine.PhysicsVolume;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.Actor;
import UnrealScript.UTGame.UTSeqAct_AIStartFireAt;
import UnrealScript.UTGame.UTSeqAct_AIStopFire;
import UnrealScript.Engine.Inventory;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.PickupFactory;
import UnrealScript.Engine.Pawn;
import UnrealScript.UDKBase.UDKBot;
import UnrealScript.UTGame.UTPickupFactory;
import UnrealScript.Engine.Vehicle;
import UnrealScript.UDKBase.UDKVehicle;
import UnrealScript.UTGame.UTSeqAct_AIFreeze;
import UnrealScript.Engine.LiftCenter;
import UnrealScript.UTGame.UTAvoidMarker;
import UnrealScript.Engine.HUD;
import UnrealScript.UTGame.UTCharInfo;
import UnrealScript.Engine.Weapon;

extern(C++) interface UTBot : UDKBot
{
	public static immutable auto MAXSTAKEOUTDIST = 2000;
	public static immutable auto ENEMYLOCATIONFUZZ = 1200;
	public static immutable auto TACTICALHEIGHTADVANTAGE = 320;
	public static immutable auto MINSTRAFEDIST = 200;
	public static immutable auto MINVIEWDIST = 200;
	public static immutable auto AngleConvert = 0.0000958738;
	public @property final auto ref Actor NoVehicleGoal() { return *cast(Actor*)(cast(size_t)cast(void*)this + 1304); }
	public @property final auto ref Vector DirectionHint() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1308); }
	public @property final auto ref ScriptClass KilledVehicleClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1164); }
	public @property final bool bHuntPlayer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x1) != 0; }
	public @property final bool bHuntPlayer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x1; } return val; }
	public @property final auto ref ScriptClass FavoriteWeapon() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1256); }
	public @property final auto ref UTDefensePoint DefensePoint() { return *cast(UTDefensePoint*)(cast(size_t)cast(void*)this + 1296); }
	public @property final bool bJustLanded() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x8000) != 0; }
	public @property final bool bJustLanded(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x8000; } return val; }
	public @property final auto ref ScriptString GoalString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1264); }
	public @property final auto ref float LastInjuredVoiceMessageTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1544); }
	public @property final auto ref float LastCanAttackCheckTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1540); }
	public @property final auto ref Actor LastFireTarget() { return *cast(Actor*)(cast(size_t)cast(void*)this + 1536); }
	public @property final auto ref float LastTryHoverboardTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1532); }
	public @property final auto ref float LastActionMusicUpdate() { return *cast(float*)(cast(size_t)cast(void*)this + 1528); }
	public @property final auto ref Actor ScriptedTarget() { return *cast(Actor*)(cast(size_t)cast(void*)this + 1524); }
	public @property final auto ref Vector LastKillerPosition() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1512); }
	public @property final auto ref Vector LastKnownPosition() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1500); }
	public @property final auto ref Controller OldOrderGiver() { return *cast(Controller*)(cast(size_t)cast(void*)this + 1496); }
	public @property final auto ref ScriptName OldOrders() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1488); }
	public @property final auto ref ScriptName OrderNames() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1360); }
	public @property final auto ref float GatherTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1356); }
	public @property final auto ref float LastFireAttempt() { return *cast(float*)(cast(size_t)cast(void*)this + 1352); }
	public @property final auto ref int NumRandomJumps() { return *cast(int*)(cast(size_t)cast(void*)this + 1348); }
	public @property final auto ref float CampTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1344); }
	public @property final auto ref float LastSearchWeight() { return *cast(float*)(cast(size_t)cast(void*)this + 1340); }
	public @property final auto ref float LastSearchTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1336); }
	public @property final auto ref Pawn FailedHuntEnemy() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 1332); }
	public @property final auto ref float FailedHuntTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1328); }
	public @property final auto ref float LastRespawnTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1324); }
	public @property final auto ref float StopStartTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1320); }
	public @property final auto ref NavigationPoint DefensivePosition() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 1300); }
	public @property final auto ref float ReTaskTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1292); }
	public @property final auto ref UTBot NextSquadMember() { return *cast(UTBot*)(cast(size_t)cast(void*)this + 1288); }
	public @property final auto ref ScriptString SoakString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1276); }
	public @property final auto ref float OldMessageTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1260); }
	public @property final auto ref float Jumpiness() { return *cast(float*)(cast(size_t)cast(void*)this + 1252); }
	public @property final auto ref float ReactionTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1248); }
	public @property final auto ref float Tactics() { return *cast(float*)(cast(size_t)cast(void*)this + 1244); }
	public @property final auto ref float CombatStyle() { return *cast(float*)(cast(size_t)cast(void*)this + 1240); }
	public @property final auto ref float StrafingAbility() { return *cast(float*)(cast(size_t)cast(void*)this + 1236); }
	public @property final auto ref float BaseAggressiveness() { return *cast(float*)(cast(size_t)cast(void*)this + 1232); }
	public @property final auto ref float Accuracy() { return *cast(float*)(cast(size_t)cast(void*)this + 1228); }
	public @property final auto ref float BaseAlertness() { return *cast(float*)(cast(size_t)cast(void*)this + 1224); }
	public @property final auto ref float ForcedFlagDropTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1220); }
	public @property final auto ref float RetreatStartTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1216); }
	public @property final auto ref float LastUnderFire() { return *cast(float*)(cast(size_t)cast(void*)this + 1212); }
	public @property final auto ref float StartTacticalTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1208); }
	public @property final auto ref Actor StartleActor() { return *cast(Actor*)(cast(size_t)cast(void*)this + 1204); }
	public @property final auto ref float LoseEnemyCheckTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1200); }
	public @property final auto ref float Aggression() { return *cast(float*)(cast(size_t)cast(void*)this + 1196); }
	public @property final auto ref float AcquireTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1192); }
	public @property final auto ref NavigationPoint BlockedPath() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 1188); }
	public @property final auto ref float LastAttractCheck() { return *cast(float*)(cast(size_t)cast(void*)this + 1184); }
	public @property final auto ref float Aggressiveness() { return *cast(float*)(cast(size_t)cast(void*)this + 1180); }
	public @property final auto ref Vector HidingSpot() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1168); }
	public @property final auto ref int LastTauntIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 1160); }
	public @property final auto ref int OldMessageID() { return *cast(int*)(cast(size_t)cast(void*)this + 1156); }
	public @property final auto ref ScriptName OldMessageType() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1148); }
	public @property final auto ref float MaxSpecialJumpZ() { return *cast(float*)(cast(size_t)cast(void*)this + 1144); }
	public @property final auto ref float ImpactJumpZ() { return *cast(float*)(cast(size_t)cast(void*)this + 1140); }
	public @property final auto ref Actor ImpactTarget() { return *cast(Actor*)(cast(size_t)cast(void*)this + 1136); }
	public @property final bool bResetCombatTimer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x40000000) != 0; }
	public @property final bool bResetCombatTimer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x40000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x40000000; } return val; }
	public @property final bool bCheckDriverPickups() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x20000000) != 0; }
	public @property final bool bCheckDriverPickups(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x20000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x20000000; } return val; }
	public @property final bool bDirectHunt() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x10000000) != 0; }
	public @property final bool bDirectHunt(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x10000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x10000000; } return val; }
	public @property final bool bFinalStretch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x8000000) != 0; }
	public @property final bool bFinalStretch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x8000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x8000000; } return val; }
	public @property final bool bSpawnedByKismet() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x4000000) != 0; }
	public @property final bool bSpawnedByKismet(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x4000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x4000000; } return val; }
	public @property final bool bBetrayTeam() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x2000000) != 0; }
	public @property final bool bBetrayTeam(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x2000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x2000000; } return val; }
	public @property final bool bShortCamp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x1000000) != 0; }
	public @property final bool bShortCamp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x1000000; } return val; }
	public @property final bool bForceNoDetours() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x800000) != 0; }
	public @property final bool bForceNoDetours(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x800000; } return val; }
	public @property final bool bSendFlagMessage() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x400000) != 0; }
	public @property final bool bSendFlagMessage(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x400000; } return val; }
	public @property final bool bScriptedFrozen() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x200000) != 0; }
	public @property final bool bScriptedFrozen(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x200000; } return val; }
	public @property final bool bAllowedToImpactJump() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x100000) != 0; }
	public @property final bool bAllowedToImpactJump(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x100000; } return val; }
	public @property final bool bPendingDoubleJump() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x80000) != 0; }
	public @property final bool bPendingDoubleJump(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x80000; } return val; }
	public @property final bool bHasSuperWeapon() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x40000) != 0; }
	public @property final bool bHasSuperWeapon(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x40000; } return val; }
	public @property final bool bIgnoreEnemyChange() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x20000) != 0; }
	public @property final bool bIgnoreEnemyChange(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x20000; } return val; }
	public @property final bool bRecommendFastMove() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x10000) != 0; }
	public @property final bool bRecommendFastMove(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x10000; } return val; }
	public @property final bool bPursuingFlag() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x4000) != 0; }
	public @property final bool bPursuingFlag(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x4000; } return val; }
	public @property final bool bMustCharge() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x2000) != 0; }
	public @property final bool bMustCharge(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x2000; } return val; }
	public @property final bool bStoppedFiring() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x1000) != 0; }
	public @property final bool bStoppedFiring(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x1000; } return val; }
	public @property final bool bFireSuccess() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x800) != 0; }
	public @property final bool bFireSuccess(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x800; } return val; }
	public @property final bool bForcedDirection() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x400) != 0; }
	public @property final bool bForcedDirection(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x400; } return val; }
	public @property final bool bHasFired() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x200) != 0; }
	public @property final bool bHasFired(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x200; } return val; }
	public @property final bool bWasNearObjective() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x100) != 0; }
	public @property final bool bWasNearObjective(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x100; } return val; }
	public @property final bool bTacticalDoubleJump() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x80) != 0; }
	public @property final bool bTacticalDoubleJump(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x80; } return val; }
	public @property final bool bReachedGatherPoint() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x40) != 0; }
	public @property final bool bReachedGatherPoint(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x40; } return val; }
	public @property final bool bInitLifeMessage() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x20) != 0; }
	public @property final bool bInitLifeMessage(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x20; } return val; }
	public @property final bool bFrustrated() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x10) != 0; }
	public @property final bool bFrustrated(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x10; } return val; }
	public @property final bool bChangeDir() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x8) != 0; }
	public @property final bool bChangeDir(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x8; } return val; }
	public @property final bool bStrafeDir() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x4) != 0; }
	public @property final bool bStrafeDir(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x4; } return val; }
	public @property final bool bCanFire() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x2) != 0; }
	public @property final bool bCanFire(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x2; } return val; }
	public @property final auto ref float LastWarningTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1128); }
	public @property final auto ref Pawn InstantWarningShooter() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 1124); }
	final Vector GetDirectionHint()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39470], params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	final float RatePickup(Actor PickupHolder, ScriptClass InvClass)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Actor*)params.ptr = PickupHolder;
		*cast(ScriptClass*)&params[4] = InvClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40412], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	final bool PriorityObjective()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40639], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final float RateWeapon(Weapon W)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Weapon*)params.ptr = W;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40931], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	final bool WeaponFireAgain(bool bFinishedFire)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bFinishedFire;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41003], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool NeedWeapon()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[41201], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool DoWaitForLanding()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42432], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void DelayedLeaveVehicle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42434], cast(void*)0, cast(void*)0);
	}
	final bool NotifyLanded(Vector HitNormal, Actor FloorActor)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = FloorActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42438], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final void SetFall()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42442], cast(void*)0, cast(void*)0);
	}
	final bool CustomActionFunc(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42457], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void EnemyJustTeleported()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42550], cast(void*)0, cast(void*)0);
	}
	final void WasKilledBy(Controller Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42552], params.ptr, cast(void*)0);
	}
	final void StartMonitoring(Pawn P, float MaxDist)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(float*)&params[4] = MaxDist;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42554], params.ptr, cast(void*)0);
	}
	final void PawnDied(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42557], params.ptr, cast(void*)0);
	}
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42559], cast(void*)0, cast(void*)0);
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42560], cast(void*)0, cast(void*)0);
	}
	final void SpawnedByKismet()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42561], cast(void*)0, cast(void*)0);
	}
	final bool LandingShake()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42562], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool HasTimedPowerup()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42564], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void NotifyAddInventory(Inventory NewItem)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Inventory*)params.ptr = NewItem;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42568], params.ptr, cast(void*)0);
	}
	final void SetupSpecialPathAbilities()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42570], cast(void*)0, cast(void*)0);
	}
	final bool NotifyHitWall(Vector HitNormal, Actor Wall)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = Wall;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42571], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final void FearThisSpot(UTAvoidMarker aSpot)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTAvoidMarker*)params.ptr = aSpot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42579], params.ptr, cast(void*)0);
	}
	final void Startle(Actor Feared)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Feared;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42582], params.ptr, cast(void*)0);
	}
	final void SetCombatTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42584], cast(void*)0, cast(void*)0);
	}
	final bool CanImpactJump()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42585], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void TimeDJReset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42589], cast(void*)0, cast(void*)0);
	}
	final void ResetDoubleJump()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42590], cast(void*)0, cast(void*)0);
	}
	final void WaitForMover(InterpActor M)
	{
		ubyte params[4];
		params[] = 0;
		*cast(InterpActor*)params.ptr = M;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42592], params.ptr, cast(void*)0);
	}
	final void ReadyForLift()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42594], cast(void*)0, cast(void*)0);
	}
	final bool ShouldFireAgain()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42597], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void TimedFireWeaponAtEnemy()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42606], cast(void*)0, cast(void*)0);
	}
	final bool FireWeaponAt(Actor A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42607], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool CanAttack(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42610], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void OnAIStartFireAt(UTSeqAct_AIStartFireAt FireAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTSeqAct_AIStartFireAt*)params.ptr = FireAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42614], params.ptr, cast(void*)0);
	}
	final void TimedFireWeaponAtScriptedTarget()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42619], cast(void*)0, cast(void*)0);
	}
	final void StopFiring()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42620], cast(void*)0, cast(void*)0);
	}
	final void OnAIStopFire(UTSeqAct_AIStopFire FireAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTSeqAct_AIStopFire*)params.ptr = FireAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42621], params.ptr, cast(void*)0);
	}
	final float WeaponPreference(Weapon W)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Weapon*)params.ptr = W;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42626], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	final bool ProficientWithWeapon()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42632], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool CanComboMoving()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42635], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool CanCombo()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42637], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void DisplayDebug(HUD pHUD, float* YL, float* YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = *YL;
		*cast(float*)&params[8] = *YPos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42639], params.ptr, cast(void*)0);
		*YL = *cast(float*)&params[4];
		*YPos = *cast(float*)&params[8];
	}
	final ScriptName GetOrders()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42651], params.ptr, cast(void*)0);
		return *cast(ScriptName*)params.ptr;
	}
	final void YellAt(PlayerReplicationInfo Moron)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Moron;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42658], params.ptr, cast(void*)0);
	}
	final void SendMessage(PlayerReplicationInfo Recipient, ScriptName MessageType, float Wait, ScriptClass DamageType)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Recipient;
		*cast(ScriptName*)&params[4] = MessageType;
		*cast(float*)&params[12] = Wait;
		*cast(ScriptClass*)&params[16] = DamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42661], params.ptr, cast(void*)0);
	}
	final void SetBotOrders(ScriptName NewOrders, Controller OrderGiver, bool bShouldAck)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewOrders;
		*cast(Controller*)&params[8] = OrderGiver;
		*cast(bool*)&params[12] = bShouldAck;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42666], params.ptr, cast(void*)0);
	}
	final void SetTemporaryOrders(ScriptName NewOrders, Controller OrderGiver)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewOrders;
		*cast(Controller*)&params[8] = OrderGiver;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42671], params.ptr, cast(void*)0);
	}
	final void ClearTemporaryOrders()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42674], cast(void*)0, cast(void*)0);
	}
	final void HearNoise(float Loudness, Actor NoiseMaker, ScriptName NoiseType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = Loudness;
		*cast(Actor*)&params[4] = NoiseMaker;
		*cast(ScriptName*)&params[8] = NoiseType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42675], params.ptr, cast(void*)0);
	}
	final void SeePlayer(Pawn SeenPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = SeenPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42681], params.ptr, cast(void*)0);
	}
	final void SetAttractionState()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42683], cast(void*)0, cast(void*)0);
	}
	final bool ClearShot(Vector TargetLoc, bool bImmediateFire)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = TargetLoc;
		*cast(bool*)&params[12] = bImmediateFire;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42684], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final bool CanStakeOut()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42689], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void CheckIfShouldCrouch(Vector StartPosition, Vector TargetPosition, float probability)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = StartPosition;
		*cast(Vector*)&params[12] = TargetPosition;
		*cast(float*)&params[24] = probability;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42692], params.ptr, cast(void*)0);
	}
	final bool IsSniping()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42700], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void FreePoint()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42703], cast(void*)0, cast(void*)0);
	}
	final bool AssignSquadResponsibility()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42704], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final float RelativeStrength(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42708], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	final void SetEnemyInfo(bool bNewEnemyVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewEnemyVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42713], params.ptr, cast(void*)0);
	}
	final void EnemyChanged(bool bNewEnemyVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewEnemyVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42718], params.ptr, cast(void*)0);
	}
	final bool StrafeFromDamage(float Damage, ScriptClass DamageType, bool bFindDest)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = Damage;
		*cast(ScriptClass*)&params[4] = DamageType;
		*cast(bool*)&params[8] = bFindDest;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42720], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final void NotifyPhysicsVolumeChange(PhysicsVolume NewVolume)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PhysicsVolume*)params.ptr = NewVolume;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42725], params.ptr, cast(void*)0);
	}
	final void MayDodgeToMoveTarget()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42728], cast(void*)0, cast(void*)0);
	}
	final void NotifyJumpApex()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42740], cast(void*)0, cast(void*)0);
	}
	final void NotifyMissedJump()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42746], cast(void*)0, cast(void*)0);
	}
	final void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42753], cast(void*)0, cast(void*)0);
	}
	final void Possess(Pawn aPawn, bool bVehicleTransition)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = aPawn;
		*cast(bool*)&params[4] = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42754], params.ptr, cast(void*)0);
	}
	final void Initialize(float InSkill, UTCharInfo.CharacterInfo* BotInfo)
	{
		ubyte params[116];
		params[] = 0;
		*cast(float*)params.ptr = InSkill;
		*cast(UTCharInfo.CharacterInfo*)&params[4] = *BotInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42757], params.ptr, cast(void*)0);
		*BotInfo = *cast(UTCharInfo.CharacterInfo*)&params[4];
	}
	final void ResetSkill()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42763], cast(void*)0, cast(void*)0);
	}
	final void SetMaxDesiredSpeed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42764], cast(void*)0, cast(void*)0);
	}
	final void SetPeripheralVision()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42765], cast(void*)0, cast(void*)0);
	}
	final void SetAlertness(float NewAlertness)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewAlertness;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42766], params.ptr, cast(void*)0);
	}
	final void WhatToDoNext()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42768], cast(void*)0, cast(void*)0);
	}
	final void ExecuteWhatToDoNext()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42771], cast(void*)0, cast(void*)0);
	}
	final void EnterVehicle(Vehicle V)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Vehicle*)params.ptr = V;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42780], params.ptr, cast(void*)0);
	}
	final void LeaveVehicle(bool bBlocking)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bBlocking;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42782], params.ptr, cast(void*)0);
	}
	final void VehicleFightEnemy(bool bCanCharge, float EnemyStrength)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bCanCharge;
		*cast(float*)&params[4] = EnemyStrength;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42785], params.ptr, cast(void*)0);
	}
	final void FightEnemy(bool bCanCharge, float EnemyStrength)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bCanCharge;
		*cast(float*)&params[4] = EnemyStrength;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42789], params.ptr, cast(void*)0);
	}
	final void DoRangedAttackOn(Actor A)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42801], params.ptr, cast(void*)0);
	}
	final void ChooseAttackMode()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42804], cast(void*)0, cast(void*)0);
	}
	final bool FindSuperPickup(float MaxDist)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = MaxDist;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42810], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool FindInventoryGoal(float BestWeight)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = BestWeight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42817], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void TossFlagToPlayer(Controller OrderGiver)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = OrderGiver;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42822], params.ptr, cast(void*)0);
	}
	final bool PickRetreatDestination()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42828], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void SoakStop(ScriptString problem)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = problem;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42831], params.ptr, cast(void*)0);
	}
	final bool FindRoamDest()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42834], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void Restart(bool bVehicleTransition)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42837], params.ptr, cast(void*)0);
	}
	final bool CheckPathToGoalAround(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42839], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void ClearPathFor(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42842], params.ptr, cast(void*)0);
	}
	final bool AdjustAround(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42844], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool NotifyBump(Actor Other, Vector HitNormal)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(Vector*)&params[4] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42853], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final void NotifyPostLanded()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42864], cast(void*)0, cast(void*)0);
	}
	final void TimedDodgeToMoveTarget()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42865], cast(void*)0, cast(void*)0);
	}
	final bool StartMoveToward(Actor O)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = O;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42866], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool SetRouteToGoal(Actor A)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = A;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42869], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool AllowDetourTo(NavigationPoint N)
	{
		ubyte params[8];
		params[] = 0;
		*cast(NavigationPoint*)params.ptr = N;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42872], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool FindBestPathToward(Actor A, bool bCheckedReach, bool bAllowDetour)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = A;
		*cast(bool*)&params[4] = bCheckedReach;
		*cast(bool*)&params[8] = bAllowDetour;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42877], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool CheckFutureSight(float DeltaTime)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42883], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final float AdjustAimError(float TargetDist, bool bInstantProj)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = TargetDist;
		*cast(bool*)&params[4] = bInstantProj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42887], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	final Rotator GetAdjustedAimFor(Weapon InWeapon, Vector projStart)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(Vector*)&params[4] = projStart;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42902], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[16];
	}
	final bool TryDuckTowardsMoveTarget(Vector Dir, Vector Y)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = Dir;
		*cast(Vector*)&params[12] = Y;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42920], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	final void DelayedWarning()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42925], cast(void*)0, cast(void*)0);
	}
	final void ReceiveProjectileWarning(Projectile Proj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Projectile*)params.ptr = Proj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42936], params.ptr, cast(void*)0);
	}
	final void NotifyTakeHit(Controller InstigatedBy, Vector HitLocation, int Damage, ScriptClass DamageType, Vector Momentum)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Controller*)params.ptr = InstigatedBy;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(int*)&params[16] = Damage;
		*cast(ScriptClass*)&params[20] = DamageType;
		*cast(Vector*)&params[24] = Momentum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42943], params.ptr, cast(void*)0);
	}
	final void DelayedInstantWarning()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42949], cast(void*)0, cast(void*)0);
	}
	final void ReceiveWarning(Pawn shooter, float projSpeed, Vector FireDir)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Pawn*)params.ptr = shooter;
		*cast(float*)&params[4] = projSpeed;
		*cast(Vector*)&params[8] = FireDir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42954], params.ptr, cast(void*)0);
	}
	final void ReceiveRunOverWarning(UDKVehicle V, float projSpeed, Vector VehicleDir)
	{
		ubyte params[20];
		params[] = 0;
		*cast(UDKVehicle*)params.ptr = V;
		*cast(float*)&params[4] = projSpeed;
		*cast(Vector*)&params[8] = VehicleDir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42965], params.ptr, cast(void*)0);
	}
	final void NotifyFallingHitWall(Vector HitNormal, Actor HitActor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = HitActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42969], params.ptr, cast(void*)0);
	}
	final void MissedDodge()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42972], cast(void*)0, cast(void*)0);
	}
	final bool TryWallDodge(Vector HitNormal, Actor HitActor)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = HitActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42978], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final void ChangeStrafe()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42992], cast(void*)0, cast(void*)0);
	}
	final bool TryToDuck(Vector duckDir, bool bReversed)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = duckDir;
		*cast(bool*)&params[12] = bReversed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42993], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final void NotifyKilled(Controller Killer, Controller Killed, Pawn KilledPawn, ScriptClass DamageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(Controller*)&params[4] = Killed;
		*cast(Pawn*)&params[8] = KilledPawn;
		*cast(ScriptClass*)&params[12] = DamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43008], params.ptr, cast(void*)0);
	}
	final Actor FaceMoveTarget()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43013], params.ptr, cast(void*)0);
		return *cast(Actor*)params.ptr;
	}
	final bool ShouldStrafeTo(Actor WayPoint)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = WayPoint;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43015], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final Actor FaceActor(float StrafingModifier)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = StrafingModifier;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43019], params.ptr, cast(void*)0);
		return *cast(Actor*)&params[4];
	}
	final float SuperDesireability(PickupFactory P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PickupFactory*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43031], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	final bool SuperPickupNotSpokenFor(UTPickupFactory P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPickupFactory*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43034], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void DamageAttitudeTo(Controller Other, float Damage)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Other;
		*cast(float*)&params[4] = Damage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43038], params.ptr, cast(void*)0);
	}
	final bool IsRetreating()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43041], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void OnAIFreeze(UTSeqAct_AIFreeze FreezeAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTSeqAct_AIFreeze*)params.ptr = FreezeAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43043], params.ptr, cast(void*)0);
	}
	final bool IsDefending()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43047], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool ShouldDefendPosition()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43049], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void MoveToDefensePoint()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43051], cast(void*)0, cast(void*)0);
	}
	final void MoveAwayFrom(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43052], params.ptr, cast(void*)0);
	}
	final void WanderOrCamp()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43054], cast(void*)0, cast(void*)0);
	}
	final void EnableBumps()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43055], cast(void*)0, cast(void*)0);
	}
	final void Celebrate()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43096], cast(void*)0, cast(void*)0);
	}
	final void ForceGiveWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43097], cast(void*)0, cast(void*)0);
	}
	final float GetDesiredOffset()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43128], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final bool LostContact(float MaxTime)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = MaxTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43154], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool LoseEnemy()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43157], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void DoStakeOut()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43161], cast(void*)0, cast(void*)0);
	}
	final void DoCharge()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43162], cast(void*)0, cast(void*)0);
	}
	final void DoTacticalMove()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43163], cast(void*)0, cast(void*)0);
	}
	final void DoRetreat()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43164], cast(void*)0, cast(void*)0);
	}
	final bool DefendMelee(float Dist)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = Dist;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43167], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool IsStrafing()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43236], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool EngageDirection(Vector StrafeDir, bool bForced)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = StrafeDir;
		*cast(bool*)&params[12] = bForced;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43238], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final bool IsHunting()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43287], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool FindViewSpot()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43289], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool Stopped()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43369], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool IsShootingObjective()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43371], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool FocusOnLeader(bool bLeaderFiring)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bLeaderFiring;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43373], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void StopMovement()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43376], cast(void*)0, cast(void*)0);
	}
	final void PerformCustomAction(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* ActionFunc)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = ActionFunc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43536], params.ptr, cast(void*)0);
	}
	final void UnderLift(LiftCenter M)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LiftCenter*)params.ptr = M;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43541], params.ptr, cast(void*)0);
	}
	final bool HandlePathObstruction(Actor BlockedBy)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = BlockedBy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43544], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
