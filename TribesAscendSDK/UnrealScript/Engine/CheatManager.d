module UnrealScript.Engine.CheatManager;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.DebugCameraController;
import UnrealScript.Engine.Weapon;
import UnrealScript.Core.UObject;

extern(C++) interface CheatManager : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.CheatManager")()); }
	private static __gshared CheatManager mDefaultProperties;
	@property final static CheatManager DefaultProperties() { mixin(MGDPC!(CheatManager, "CheatManager Engine.Default__CheatManager")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mFXPlay;
			ScriptFunction mFXStop;
			ScriptFunction mDebugAI;
			ScriptFunction mEditAIByTrace;
			ScriptFunction mDebugPause;
			ScriptFunction mListDynamicActors;
			ScriptFunction mFreezeFrame;
			ScriptFunction mWriteToLog;
			ScriptFunction mKillViewedActor;
			ScriptFunction mTeleport;
			ScriptFunction mChangeSize;
			ScriptFunction mEndPath;
			ScriptFunction mAmphibious;
			ScriptFunction mFly;
			ScriptFunction mWalk;
			ScriptFunction mGhost;
			ScriptFunction mAllAmmo;
			ScriptFunction mGod;
			ScriptFunction mSlomo;
			ScriptFunction mSetJumpZ;
			ScriptFunction mSetGravity;
			ScriptFunction mSetSpeed;
			ScriptFunction mKillAll;
			ScriptFunction mKillAllPawns;
			ScriptFunction mKillPawns;
			ScriptFunction mAvatar;
			ScriptFunction mSummon;
			ScriptFunction mGiveWeapon;
			ScriptFunction mPlayersOnly;
			ScriptFunction mDestroyFractures;
			ScriptFunction mFractureAllMeshes;
			ScriptFunction mFractureAllMeshesToMaximizeMemoryUsage;
			ScriptFunction mRememberSpot;
			ScriptFunction mViewSelf;
			ScriptFunction mViewPlayer;
			ScriptFunction mViewActor;
			ScriptFunction mViewBot;
			ScriptFunction mViewClass;
			ScriptFunction mLoaded;
			ScriptFunction mAllWeapons;
			ScriptFunction mSetLevelStreamingStatus;
			ScriptFunction mEnableDebugCamera;
			ScriptFunction mInitCheatManager;
			ScriptFunction mLogPlaySoundCalls;
			ScriptFunction mLogParticleActivateSystemCalls;
			ScriptFunction mVerifyNavMeshObjects;
			ScriptFunction mDrawUnsupportingEdges;
			ScriptFunction mPrintNavMeshObstacles;
			ScriptFunction mDumpCoverStats;
		}
		public @property static final
		{
			ScriptFunction FXPlay() { mixin(MGF!("mFXPlay", "Function Engine.CheatManager.FXPlay")()); }
			ScriptFunction FXStop() { mixin(MGF!("mFXStop", "Function Engine.CheatManager.FXStop")()); }
			ScriptFunction DebugAI() { mixin(MGF!("mDebugAI", "Function Engine.CheatManager.DebugAI")()); }
			ScriptFunction EditAIByTrace() { mixin(MGF!("mEditAIByTrace", "Function Engine.CheatManager.EditAIByTrace")()); }
			ScriptFunction DebugPause() { mixin(MGF!("mDebugPause", "Function Engine.CheatManager.DebugPause")()); }
			ScriptFunction ListDynamicActors() { mixin(MGF!("mListDynamicActors", "Function Engine.CheatManager.ListDynamicActors")()); }
			ScriptFunction FreezeFrame() { mixin(MGF!("mFreezeFrame", "Function Engine.CheatManager.FreezeFrame")()); }
			ScriptFunction WriteToLog() { mixin(MGF!("mWriteToLog", "Function Engine.CheatManager.WriteToLog")()); }
			ScriptFunction KillViewedActor() { mixin(MGF!("mKillViewedActor", "Function Engine.CheatManager.KillViewedActor")()); }
			ScriptFunction Teleport() { mixin(MGF!("mTeleport", "Function Engine.CheatManager.Teleport")()); }
			ScriptFunction ChangeSize() { mixin(MGF!("mChangeSize", "Function Engine.CheatManager.ChangeSize")()); }
			ScriptFunction EndPath() { mixin(MGF!("mEndPath", "Function Engine.CheatManager.EndPath")()); }
			ScriptFunction Amphibious() { mixin(MGF!("mAmphibious", "Function Engine.CheatManager.Amphibious")()); }
			ScriptFunction Fly() { mixin(MGF!("mFly", "Function Engine.CheatManager.Fly")()); }
			ScriptFunction Walk() { mixin(MGF!("mWalk", "Function Engine.CheatManager.Walk")()); }
			ScriptFunction Ghost() { mixin(MGF!("mGhost", "Function Engine.CheatManager.Ghost")()); }
			ScriptFunction AllAmmo() { mixin(MGF!("mAllAmmo", "Function Engine.CheatManager.AllAmmo")()); }
			ScriptFunction God() { mixin(MGF!("mGod", "Function Engine.CheatManager.God")()); }
			ScriptFunction Slomo() { mixin(MGF!("mSlomo", "Function Engine.CheatManager.Slomo")()); }
			ScriptFunction SetJumpZ() { mixin(MGF!("mSetJumpZ", "Function Engine.CheatManager.SetJumpZ")()); }
			ScriptFunction SetGravity() { mixin(MGF!("mSetGravity", "Function Engine.CheatManager.SetGravity")()); }
			ScriptFunction SetSpeed() { mixin(MGF!("mSetSpeed", "Function Engine.CheatManager.SetSpeed")()); }
			ScriptFunction KillAll() { mixin(MGF!("mKillAll", "Function Engine.CheatManager.KillAll")()); }
			ScriptFunction KillAllPawns() { mixin(MGF!("mKillAllPawns", "Function Engine.CheatManager.KillAllPawns")()); }
			ScriptFunction KillPawns() { mixin(MGF!("mKillPawns", "Function Engine.CheatManager.KillPawns")()); }
			ScriptFunction Avatar() { mixin(MGF!("mAvatar", "Function Engine.CheatManager.Avatar")()); }
			ScriptFunction Summon() { mixin(MGF!("mSummon", "Function Engine.CheatManager.Summon")()); }
			ScriptFunction GiveWeapon() { mixin(MGF!("mGiveWeapon", "Function Engine.CheatManager.GiveWeapon")()); }
			ScriptFunction PlayersOnly() { mixin(MGF!("mPlayersOnly", "Function Engine.CheatManager.PlayersOnly")()); }
			ScriptFunction DestroyFractures() { mixin(MGF!("mDestroyFractures", "Function Engine.CheatManager.DestroyFractures")()); }
			ScriptFunction FractureAllMeshes() { mixin(MGF!("mFractureAllMeshes", "Function Engine.CheatManager.FractureAllMeshes")()); }
			ScriptFunction FractureAllMeshesToMaximizeMemoryUsage() { mixin(MGF!("mFractureAllMeshesToMaximizeMemoryUsage", "Function Engine.CheatManager.FractureAllMeshesToMaximizeMemoryUsage")()); }
			ScriptFunction RememberSpot() { mixin(MGF!("mRememberSpot", "Function Engine.CheatManager.RememberSpot")()); }
			ScriptFunction ViewSelf() { mixin(MGF!("mViewSelf", "Function Engine.CheatManager.ViewSelf")()); }
			ScriptFunction ViewPlayer() { mixin(MGF!("mViewPlayer", "Function Engine.CheatManager.ViewPlayer")()); }
			ScriptFunction ViewActor() { mixin(MGF!("mViewActor", "Function Engine.CheatManager.ViewActor")()); }
			ScriptFunction ViewBot() { mixin(MGF!("mViewBot", "Function Engine.CheatManager.ViewBot")()); }
			ScriptFunction ViewClass() { mixin(MGF!("mViewClass", "Function Engine.CheatManager.ViewClass")()); }
			ScriptFunction Loaded() { mixin(MGF!("mLoaded", "Function Engine.CheatManager.Loaded")()); }
			ScriptFunction AllWeapons() { mixin(MGF!("mAllWeapons", "Function Engine.CheatManager.AllWeapons")()); }
			ScriptFunction SetLevelStreamingStatus() { mixin(MGF!("mSetLevelStreamingStatus", "Function Engine.CheatManager.SetLevelStreamingStatus")()); }
			ScriptFunction EnableDebugCamera() { mixin(MGF!("mEnableDebugCamera", "Function Engine.CheatManager.EnableDebugCamera")()); }
			ScriptFunction InitCheatManager() { mixin(MGF!("mInitCheatManager", "Function Engine.CheatManager.InitCheatManager")()); }
			ScriptFunction LogPlaySoundCalls() { mixin(MGF!("mLogPlaySoundCalls", "Function Engine.CheatManager.LogPlaySoundCalls")()); }
			ScriptFunction LogParticleActivateSystemCalls() { mixin(MGF!("mLogParticleActivateSystemCalls", "Function Engine.CheatManager.LogParticleActivateSystemCalls")()); }
			ScriptFunction VerifyNavMeshObjects() { mixin(MGF!("mVerifyNavMeshObjects", "Function Engine.CheatManager.VerifyNavMeshObjects")()); }
			ScriptFunction DrawUnsupportingEdges() { mixin(MGF!("mDrawUnsupportingEdges", "Function Engine.CheatManager.DrawUnsupportingEdges")()); }
			ScriptFunction PrintNavMeshObstacles() { mixin(MGF!("mPrintNavMeshObstacles", "Function Engine.CheatManager.PrintNavMeshObstacles")()); }
			ScriptFunction DumpCoverStats() { mixin(MGF!("mDumpCoverStats", "Function Engine.CheatManager.DumpCoverStats")()); }
		}
	}
	@property final auto ref
	{
		ScriptString OwnCamera() { mixin(MGPC!("ScriptString", 80)()); }
		ScriptString ViewingFrom() { mixin(MGPC!("ScriptString", 68)()); }
		ScriptClass DebugCameraControllerClass() { mixin(MGPC!("ScriptClass", 64)()); }
		DebugCameraController DebugCameraControllerRef() { mixin(MGPC!("DebugCameraController", 60)()); }
	}
final:
	void FXPlay(ScriptClass aClass, ScriptString FXAnimPath)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = aClass;
		*cast(ScriptString*)&params[4] = FXAnimPath;
		(cast(ScriptObject)this).ProcessEvent(Functions.FXPlay, params.ptr, cast(void*)0);
	}
	void FXStop(ScriptClass aClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = aClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.FXStop, params.ptr, cast(void*)0);
	}
	void DebugAI(ScriptName* Category = null)
	{
		ubyte params[8];
		params[] = 0;
		if (Category !is null)
			*cast(ScriptName*)params.ptr = *Category;
		(cast(ScriptObject)this).ProcessEvent(Functions.DebugAI, params.ptr, cast(void*)0);
	}
	void EditAIByTrace()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EditAIByTrace, cast(void*)0, cast(void*)0);
	}
	void DebugPause()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DebugPause, cast(void*)0, cast(void*)0);
	}
	void ListDynamicActors()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ListDynamicActors, cast(void*)0, cast(void*)0);
	}
	void FreezeFrame(float Delay)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Delay;
		(cast(ScriptObject)this).ProcessEvent(Functions.FreezeFrame, params.ptr, cast(void*)0);
	}
	void WriteToLog(ScriptString Param)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Param;
		(cast(ScriptObject)this).ProcessEvent(Functions.WriteToLog, params.ptr, cast(void*)0);
	}
	void KillViewedActor()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.KillViewedActor, cast(void*)0, cast(void*)0);
	}
	void Teleport()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Teleport, cast(void*)0, cast(void*)0);
	}
	void ChangeSize(float F)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = F;
		(cast(ScriptObject)this).ProcessEvent(Functions.ChangeSize, params.ptr, cast(void*)0);
	}
	void EndPath()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EndPath, cast(void*)0, cast(void*)0);
	}
	void Amphibious()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Amphibious, cast(void*)0, cast(void*)0);
	}
	void Fly()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Fly, cast(void*)0, cast(void*)0);
	}
	void Walk()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Walk, cast(void*)0, cast(void*)0);
	}
	void Ghost()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Ghost, cast(void*)0, cast(void*)0);
	}
	void AllAmmo()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AllAmmo, cast(void*)0, cast(void*)0);
	}
	void God()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.God, cast(void*)0, cast(void*)0);
	}
	void Slomo(float T)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = T;
		(cast(ScriptObject)this).ProcessEvent(Functions.Slomo, params.ptr, cast(void*)0);
	}
	void SetJumpZ(float F)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = F;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetJumpZ, params.ptr, cast(void*)0);
	}
	void SetGravity(float F)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = F;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetGravity, params.ptr, cast(void*)0);
	}
	void SetSpeed(float F)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = F;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpeed, params.ptr, cast(void*)0);
	}
	void KillAll(ScriptClass aClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = aClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.KillAll, params.ptr, cast(void*)0);
	}
	void KillAllPawns(ScriptClass aClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = aClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.KillAllPawns, params.ptr, cast(void*)0);
	}
	void KillPawns()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.KillPawns, cast(void*)0, cast(void*)0);
	}
	void Avatar(ScriptName ClassName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ClassName;
		(cast(ScriptObject)this).ProcessEvent(Functions.Avatar, params.ptr, cast(void*)0);
	}
	void Summon(ScriptString ClassName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ClassName;
		(cast(ScriptObject)this).ProcessEvent(Functions.Summon, params.ptr, cast(void*)0);
	}
	Weapon GiveWeapon(ScriptString WeaponClassStr)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = WeaponClassStr;
		(cast(ScriptObject)this).ProcessEvent(Functions.GiveWeapon, params.ptr, cast(void*)0);
		return *cast(Weapon*)&params[12];
	}
	void PlayersOnly()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayersOnly, cast(void*)0, cast(void*)0);
	}
	void DestroyFractures(float* Radius = null)
	{
		ubyte params[4];
		params[] = 0;
		if (Radius !is null)
			*cast(float*)params.ptr = *Radius;
		(cast(ScriptObject)this).ProcessEvent(Functions.DestroyFractures, params.ptr, cast(void*)0);
	}
	void FractureAllMeshes()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FractureAllMeshes, cast(void*)0, cast(void*)0);
	}
	void FractureAllMeshesToMaximizeMemoryUsage()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FractureAllMeshesToMaximizeMemoryUsage, cast(void*)0, cast(void*)0);
	}
	void RememberSpot()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RememberSpot, cast(void*)0, cast(void*)0);
	}
	void ViewSelf(bool* bQuiet = null)
	{
		ubyte params[4];
		params[] = 0;
		if (bQuiet !is null)
			*cast(bool*)params.ptr = *bQuiet;
		(cast(ScriptObject)this).ProcessEvent(Functions.ViewSelf, params.ptr, cast(void*)0);
	}
	void ViewPlayer(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(Functions.ViewPlayer, params.ptr, cast(void*)0);
	}
	void ViewActor(ScriptName ActorName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ActorName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ViewActor, params.ptr, cast(void*)0);
	}
	void ViewBot()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ViewBot, cast(void*)0, cast(void*)0);
	}
	void ViewClass(ScriptClass aClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = aClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.ViewClass, params.ptr, cast(void*)0);
	}
	void Loaded()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Loaded, cast(void*)0, cast(void*)0);
	}
	void AllWeapons()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AllWeapons, cast(void*)0, cast(void*)0);
	}
	void SetLevelStreamingStatus(ScriptName PackageName, bool bShouldBeLoaded, bool bShouldBeVisible)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = PackageName;
		*cast(bool*)&params[8] = bShouldBeLoaded;
		*cast(bool*)&params[12] = bShouldBeVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetLevelStreamingStatus, params.ptr, cast(void*)0);
	}
	void EnableDebugCamera()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableDebugCamera, cast(void*)0, cast(void*)0);
	}
	void InitCheatManager()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitCheatManager, cast(void*)0, cast(void*)0);
	}
	void LogPlaySoundCalls(bool bShouldLog)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bShouldLog;
		(cast(ScriptObject)this).ProcessEvent(Functions.LogPlaySoundCalls, params.ptr, cast(void*)0);
	}
	void LogParticleActivateSystemCalls(bool bShouldLog)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bShouldLog;
		(cast(ScriptObject)this).ProcessEvent(Functions.LogParticleActivateSystemCalls, params.ptr, cast(void*)0);
	}
	void VerifyNavMeshObjects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.VerifyNavMeshObjects, cast(void*)0, cast(void*)0);
	}
	void DrawUnsupportingEdges(ScriptString PawnClassName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PawnClassName;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawUnsupportingEdges, params.ptr, cast(void*)0);
	}
	void PrintNavMeshObstacles()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PrintNavMeshObstacles, cast(void*)0, cast(void*)0);
	}
	void DumpCoverStats()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DumpCoverStats, cast(void*)0, cast(void*)0);
	}
}
