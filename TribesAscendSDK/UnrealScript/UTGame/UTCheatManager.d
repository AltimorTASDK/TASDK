module UnrealScript.UTGame.UTCheatManager;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SpeechRecognition;
import UnrealScript.Engine.CheatManager;

extern(C++) interface UTCheatManager : CheatManager
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTCheatManager")()); }
	private static __gshared UTCheatManager mDefaultProperties;
	@property final static UTCheatManager DefaultProperties() { mixin(MGDPC!(UTCheatManager, "UTCheatManager UTGame.Default__UTCheatManager")()); }
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
			ScriptFunction ViewFlag() { mixin(MGF!("mViewFlag", "Function UTGame.UTCheatManager.ViewFlag")()); }
			ScriptFunction Glow() { mixin(MGF!("mGlow", "Function UTGame.UTCheatManager.Glow")()); }
			ScriptFunction LM() { mixin(MGF!("mLM", "Function UTGame.UTCheatManager.LM")()); }
			ScriptFunction LMS() { mixin(MGF!("mLMS", "Function UTGame.UTCheatManager.LMS")()); }
			ScriptFunction SummonV() { mixin(MGF!("mSummonV", "Function UTGame.UTCheatManager.SummonV")()); }
			ScriptFunction AllWeapons() { mixin(MGF!("mAllWeapons", "Function UTGame.UTCheatManager.AllWeapons")()); }
			ScriptFunction DoubleUp() { mixin(MGF!("mDoubleUp", "Function UTGame.UTCheatManager.DoubleUp")()); }
			ScriptFunction ChainGun() { mixin(MGF!("mChainGun", "Function UTGame.UTCheatManager.ChainGun")()); }
			ScriptFunction AllAmmo() { mixin(MGF!("mAllAmmo", "Function UTGame.UTCheatManager.AllAmmo")()); }
			ScriptFunction Invisible() { mixin(MGF!("mInvisible", "Function UTGame.UTCheatManager.Invisible")()); }
			ScriptFunction FreeCamera() { mixin(MGF!("mFreeCamera", "Function UTGame.UTCheatManager.FreeCamera")()); }
			ScriptFunction ViewBot() { mixin(MGF!("mViewBot", "Function UTGame.UTCheatManager.ViewBot")()); }
			ScriptFunction KillBadGuys() { mixin(MGF!("mKillBadGuys", "Function UTGame.UTCheatManager.KillBadGuys")()); }
			ScriptFunction RBGrav() { mixin(MGF!("mRBGrav", "Function UTGame.UTCheatManager.RBGrav")()); }
			ScriptFunction SuicideBy() { mixin(MGF!("mSuicideBy", "Function UTGame.UTCheatManager.SuicideBy")()); }
			ScriptFunction EditWeapon() { mixin(MGF!("mEditWeapon", "Function UTGame.UTCheatManager.EditWeapon")()); }
			ScriptFunction KillOtherBots() { mixin(MGF!("mKillOtherBots", "Function UTGame.UTCheatManager.KillOtherBots")()); }
			ScriptFunction SpawnABloodDecal() { mixin(MGF!("mSpawnABloodDecal", "Function UTGame.UTCheatManager.SpawnABloodDecal")()); }
			ScriptFunction LeaveADecal() { mixin(MGF!("mLeaveADecal", "Function UTGame.UTCheatManager.LeaveADecal")()); }
			ScriptFunction TiltIt() { mixin(MGF!("mTiltIt", "Function UTGame.UTCheatManager.TiltIt")()); }
			ScriptFunction ShowStickBindings() { mixin(MGF!("mShowStickBindings", "Function UTGame.UTCheatManager.ShowStickBindings")()); }
			ScriptFunction SetStickBind() { mixin(MGF!("mSetStickBind", "Function UTGame.UTCheatManager.SetStickBind")()); }
			ScriptFunction KillAll() { mixin(MGF!("mKillAll", "Function UTGame.UTCheatManager.KillAll")()); }
			ScriptFunction KillAllPawns() { mixin(MGF!("mKillAllPawns", "Function UTGame.UTCheatManager.KillAllPawns")()); }
		}
	}
	@property final auto ref
	{
		SpeechRecognition RecogObject() { mixin(MGPC!(SpeechRecognition, 96)()); }
		ScriptClass LMC() { mixin(MGPC!(ScriptClass, 92)()); }
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
