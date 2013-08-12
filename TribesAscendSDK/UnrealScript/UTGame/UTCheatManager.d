module UnrealScript.UTGame.UTCheatManager;

import ScriptClasses;
import UnrealScript.Engine.SpeechRecognition;
import UnrealScript.Engine.CheatManager;

extern(C++) interface UTCheatManager : CheatManager
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTCheatManager")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mViewFlag;
			ScriptFunction mGlow;
			ScriptFunction mLM;
			ScriptFunction mLMS;
			ScriptFunction mSummonV;
			ScriptFunction mAllWeapons;
			ScriptFunction mDoubleUp;
			ScriptFunction mChainGun;
			ScriptFunction mAllAmmo;
			ScriptFunction mInvisible;
			ScriptFunction mFreeCamera;
			ScriptFunction mViewBot;
			ScriptFunction mKillBadGuys;
			ScriptFunction mRBGrav;
			ScriptFunction mSuicideBy;
			ScriptFunction mEditWeapon;
			ScriptFunction mKillOtherBots;
			ScriptFunction mSpawnABloodDecal;
			ScriptFunction mLeaveADecal;
			ScriptFunction mTiltIt;
			ScriptFunction mShowStickBindings;
			ScriptFunction mSetStickBind;
			ScriptFunction mKillAll;
			ScriptFunction mKillAllPawns;
		}
		public @property static final
		{
			ScriptFunction ViewFlag() { return mViewFlag ? mViewFlag : (mViewFlag = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCheatManager.ViewFlag")); }
			ScriptFunction Glow() { return mGlow ? mGlow : (mGlow = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCheatManager.Glow")); }
			ScriptFunction LM() { return mLM ? mLM : (mLM = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCheatManager.LM")); }
			ScriptFunction LMS() { return mLMS ? mLMS : (mLMS = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCheatManager.LMS")); }
			ScriptFunction SummonV() { return mSummonV ? mSummonV : (mSummonV = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCheatManager.SummonV")); }
			ScriptFunction AllWeapons() { return mAllWeapons ? mAllWeapons : (mAllWeapons = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCheatManager.AllWeapons")); }
			ScriptFunction DoubleUp() { return mDoubleUp ? mDoubleUp : (mDoubleUp = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCheatManager.DoubleUp")); }
			ScriptFunction ChainGun() { return mChainGun ? mChainGun : (mChainGun = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCheatManager.ChainGun")); }
			ScriptFunction AllAmmo() { return mAllAmmo ? mAllAmmo : (mAllAmmo = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCheatManager.AllAmmo")); }
			ScriptFunction Invisible() { return mInvisible ? mInvisible : (mInvisible = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCheatManager.Invisible")); }
			ScriptFunction FreeCamera() { return mFreeCamera ? mFreeCamera : (mFreeCamera = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCheatManager.FreeCamera")); }
			ScriptFunction ViewBot() { return mViewBot ? mViewBot : (mViewBot = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCheatManager.ViewBot")); }
			ScriptFunction KillBadGuys() { return mKillBadGuys ? mKillBadGuys : (mKillBadGuys = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCheatManager.KillBadGuys")); }
			ScriptFunction RBGrav() { return mRBGrav ? mRBGrav : (mRBGrav = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCheatManager.RBGrav")); }
			ScriptFunction SuicideBy() { return mSuicideBy ? mSuicideBy : (mSuicideBy = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCheatManager.SuicideBy")); }
			ScriptFunction EditWeapon() { return mEditWeapon ? mEditWeapon : (mEditWeapon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCheatManager.EditWeapon")); }
			ScriptFunction KillOtherBots() { return mKillOtherBots ? mKillOtherBots : (mKillOtherBots = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCheatManager.KillOtherBots")); }
			ScriptFunction SpawnABloodDecal() { return mSpawnABloodDecal ? mSpawnABloodDecal : (mSpawnABloodDecal = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCheatManager.SpawnABloodDecal")); }
			ScriptFunction LeaveADecal() { return mLeaveADecal ? mLeaveADecal : (mLeaveADecal = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCheatManager.LeaveADecal")); }
			ScriptFunction TiltIt() { return mTiltIt ? mTiltIt : (mTiltIt = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCheatManager.TiltIt")); }
			ScriptFunction ShowStickBindings() { return mShowStickBindings ? mShowStickBindings : (mShowStickBindings = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCheatManager.ShowStickBindings")); }
			ScriptFunction SetStickBind() { return mSetStickBind ? mSetStickBind : (mSetStickBind = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCheatManager.SetStickBind")); }
			ScriptFunction KillAll() { return mKillAll ? mKillAll : (mKillAll = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCheatManager.KillAll")); }
			ScriptFunction KillAllPawns() { return mKillAllPawns ? mKillAllPawns : (mKillAllPawns = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCheatManager.KillAllPawns")); }
		}
	}
	@property final auto ref
	{
		SpeechRecognition RecogObject() { return *cast(SpeechRecognition*)(cast(size_t)cast(void*)this + 96); }
		ScriptClass LMC() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 92); }
	}
final:
	void ViewFlag()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ViewFlag, cast(void*)0, cast(void*)0);
	}
	void Glow(float F)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = F;
		(cast(ScriptObject)this).ProcessEvent(Functions.Glow, params.ptr, cast(void*)0);
	}
	void LM(ScriptString MessageClassName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = MessageClassName;
		(cast(ScriptObject)this).ProcessEvent(Functions.LM, params.ptr, cast(void*)0);
	}
	void LMS(int Switch)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		(cast(ScriptObject)this).ProcessEvent(Functions.LMS, params.ptr, cast(void*)0);
	}
	void SummonV(ScriptString ClassName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ClassName;
		(cast(ScriptObject)this).ProcessEvent(Functions.SummonV, params.ptr, cast(void*)0);
	}
	void AllWeapons()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AllWeapons, cast(void*)0, cast(void*)0);
	}
	void DoubleUp()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DoubleUp, cast(void*)0, cast(void*)0);
	}
	void ChainGun()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ChainGun, cast(void*)0, cast(void*)0);
	}
	void AllAmmo()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AllAmmo, cast(void*)0, cast(void*)0);
	}
	void Invisible(bool B)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.Invisible, params.ptr, cast(void*)0);
	}
	void FreeCamera()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FreeCamera, cast(void*)0, cast(void*)0);
	}
	void ViewBot()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ViewBot, cast(void*)0, cast(void*)0);
	}
	void KillBadGuys()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.KillBadGuys, cast(void*)0, cast(void*)0);
	}
	void RBGrav(float NewGravityScaling)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewGravityScaling;
		(cast(ScriptObject)this).ProcessEvent(Functions.RBGrav, params.ptr, cast(void*)0);
	}
	void SuicideBy(ScriptString Type, int DeathHealth)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Type;
		*cast(int*)&params[12] = DeathHealth;
		(cast(ScriptObject)this).ProcessEvent(Functions.SuicideBy, params.ptr, cast(void*)0);
	}
	void EditWeapon(ScriptString WhichWeapon)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = WhichWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.EditWeapon, params.ptr, cast(void*)0);
	}
	void KillOtherBots()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.KillOtherBots, cast(void*)0, cast(void*)0);
	}
	void SpawnABloodDecal()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnABloodDecal, cast(void*)0, cast(void*)0);
	}
	void LeaveADecal(Vector HitLoc, Vector HitNorm)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLoc;
		*cast(Vector*)&params[12] = HitNorm;
		(cast(ScriptObject)this).ProcessEvent(Functions.LeaveADecal, params.ptr, cast(void*)0);
	}
	void TiltIt(bool bActive)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bActive;
		(cast(ScriptObject)this).ProcessEvent(Functions.TiltIt, params.ptr, cast(void*)0);
	}
	void ShowStickBindings()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowStickBindings, cast(void*)0, cast(void*)0);
	}
	void SetStickBind(float val)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetStickBind, params.ptr, cast(void*)0);
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
}
