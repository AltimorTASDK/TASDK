module UnrealScript.Engine.CheatManager;

import ScriptClasses;
import UnrealScript.Engine.DebugCameraController;
import UnrealScript.Engine.Weapon;
import UnrealScript.Core.UObject;

extern(C++) interface CheatManager : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.CheatManager")); }
	private static __gshared CheatManager mDefaultProperties;
	@property final static CheatManager DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(CheatManager)("CheatManager Engine.Default__CheatManager")); }
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
			ScriptFunction FXPlay() { return mFXPlay ? mFXPlay : (mFXPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.FXPlay")); }
			ScriptFunction FXStop() { return mFXStop ? mFXStop : (mFXStop = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.FXStop")); }
			ScriptFunction DebugAI() { return mDebugAI ? mDebugAI : (mDebugAI = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.DebugAI")); }
			ScriptFunction EditAIByTrace() { return mEditAIByTrace ? mEditAIByTrace : (mEditAIByTrace = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.EditAIByTrace")); }
			ScriptFunction DebugPause() { return mDebugPause ? mDebugPause : (mDebugPause = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.DebugPause")); }
			ScriptFunction ListDynamicActors() { return mListDynamicActors ? mListDynamicActors : (mListDynamicActors = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.ListDynamicActors")); }
			ScriptFunction FreezeFrame() { return mFreezeFrame ? mFreezeFrame : (mFreezeFrame = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.FreezeFrame")); }
			ScriptFunction WriteToLog() { return mWriteToLog ? mWriteToLog : (mWriteToLog = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.WriteToLog")); }
			ScriptFunction KillViewedActor() { return mKillViewedActor ? mKillViewedActor : (mKillViewedActor = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.KillViewedActor")); }
			ScriptFunction Teleport() { return mTeleport ? mTeleport : (mTeleport = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.Teleport")); }
			ScriptFunction ChangeSize() { return mChangeSize ? mChangeSize : (mChangeSize = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.ChangeSize")); }
			ScriptFunction EndPath() { return mEndPath ? mEndPath : (mEndPath = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.EndPath")); }
			ScriptFunction Amphibious() { return mAmphibious ? mAmphibious : (mAmphibious = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.Amphibious")); }
			ScriptFunction Fly() { return mFly ? mFly : (mFly = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.Fly")); }
			ScriptFunction Walk() { return mWalk ? mWalk : (mWalk = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.Walk")); }
			ScriptFunction Ghost() { return mGhost ? mGhost : (mGhost = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.Ghost")); }
			ScriptFunction AllAmmo() { return mAllAmmo ? mAllAmmo : (mAllAmmo = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.AllAmmo")); }
			ScriptFunction God() { return mGod ? mGod : (mGod = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.God")); }
			ScriptFunction Slomo() { return mSlomo ? mSlomo : (mSlomo = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.Slomo")); }
			ScriptFunction SetJumpZ() { return mSetJumpZ ? mSetJumpZ : (mSetJumpZ = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.SetJumpZ")); }
			ScriptFunction SetGravity() { return mSetGravity ? mSetGravity : (mSetGravity = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.SetGravity")); }
			ScriptFunction SetSpeed() { return mSetSpeed ? mSetSpeed : (mSetSpeed = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.SetSpeed")); }
			ScriptFunction KillAll() { return mKillAll ? mKillAll : (mKillAll = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.KillAll")); }
			ScriptFunction KillAllPawns() { return mKillAllPawns ? mKillAllPawns : (mKillAllPawns = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.KillAllPawns")); }
			ScriptFunction KillPawns() { return mKillPawns ? mKillPawns : (mKillPawns = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.KillPawns")); }
			ScriptFunction Avatar() { return mAvatar ? mAvatar : (mAvatar = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.Avatar")); }
			ScriptFunction Summon() { return mSummon ? mSummon : (mSummon = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.Summon")); }
			ScriptFunction GiveWeapon() { return mGiveWeapon ? mGiveWeapon : (mGiveWeapon = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.GiveWeapon")); }
			ScriptFunction PlayersOnly() { return mPlayersOnly ? mPlayersOnly : (mPlayersOnly = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.PlayersOnly")); }
			ScriptFunction DestroyFractures() { return mDestroyFractures ? mDestroyFractures : (mDestroyFractures = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.DestroyFractures")); }
			ScriptFunction FractureAllMeshes() { return mFractureAllMeshes ? mFractureAllMeshes : (mFractureAllMeshes = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.FractureAllMeshes")); }
			ScriptFunction FractureAllMeshesToMaximizeMemoryUsage() { return mFractureAllMeshesToMaximizeMemoryUsage ? mFractureAllMeshesToMaximizeMemoryUsage : (mFractureAllMeshesToMaximizeMemoryUsage = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.FractureAllMeshesToMaximizeMemoryUsage")); }
			ScriptFunction RememberSpot() { return mRememberSpot ? mRememberSpot : (mRememberSpot = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.RememberSpot")); }
			ScriptFunction ViewSelf() { return mViewSelf ? mViewSelf : (mViewSelf = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.ViewSelf")); }
			ScriptFunction ViewPlayer() { return mViewPlayer ? mViewPlayer : (mViewPlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.ViewPlayer")); }
			ScriptFunction ViewActor() { return mViewActor ? mViewActor : (mViewActor = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.ViewActor")); }
			ScriptFunction ViewBot() { return mViewBot ? mViewBot : (mViewBot = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.ViewBot")); }
			ScriptFunction ViewClass() { return mViewClass ? mViewClass : (mViewClass = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.ViewClass")); }
			ScriptFunction Loaded() { return mLoaded ? mLoaded : (mLoaded = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.Loaded")); }
			ScriptFunction AllWeapons() { return mAllWeapons ? mAllWeapons : (mAllWeapons = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.AllWeapons")); }
			ScriptFunction SetLevelStreamingStatus() { return mSetLevelStreamingStatus ? mSetLevelStreamingStatus : (mSetLevelStreamingStatus = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.SetLevelStreamingStatus")); }
			ScriptFunction EnableDebugCamera() { return mEnableDebugCamera ? mEnableDebugCamera : (mEnableDebugCamera = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.EnableDebugCamera")); }
			ScriptFunction InitCheatManager() { return mInitCheatManager ? mInitCheatManager : (mInitCheatManager = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.InitCheatManager")); }
			ScriptFunction LogPlaySoundCalls() { return mLogPlaySoundCalls ? mLogPlaySoundCalls : (mLogPlaySoundCalls = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.LogPlaySoundCalls")); }
			ScriptFunction LogParticleActivateSystemCalls() { return mLogParticleActivateSystemCalls ? mLogParticleActivateSystemCalls : (mLogParticleActivateSystemCalls = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.LogParticleActivateSystemCalls")); }
			ScriptFunction VerifyNavMeshObjects() { return mVerifyNavMeshObjects ? mVerifyNavMeshObjects : (mVerifyNavMeshObjects = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.VerifyNavMeshObjects")); }
			ScriptFunction DrawUnsupportingEdges() { return mDrawUnsupportingEdges ? mDrawUnsupportingEdges : (mDrawUnsupportingEdges = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.DrawUnsupportingEdges")); }
			ScriptFunction PrintNavMeshObstacles() { return mPrintNavMeshObstacles ? mPrintNavMeshObstacles : (mPrintNavMeshObstacles = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.PrintNavMeshObstacles")); }
			ScriptFunction DumpCoverStats() { return mDumpCoverStats ? mDumpCoverStats : (mDumpCoverStats = ScriptObject.Find!(ScriptFunction)("Function Engine.CheatManager.DumpCoverStats")); }
		}
	}
	@property final auto ref
	{
		ScriptString OwnCamera() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 80); }
		ScriptString ViewingFrom() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 68); }
		ScriptClass DebugCameraControllerClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 64); }
		DebugCameraController DebugCameraControllerRef() { return *cast(DebugCameraController*)(cast(size_t)cast(void*)this + 60); }
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
	void DebugAI(ScriptName Category)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = Category;
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
	void DestroyFractures(float Radius)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Radius;
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
	void ViewSelf(bool bQuiet)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bQuiet;
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
