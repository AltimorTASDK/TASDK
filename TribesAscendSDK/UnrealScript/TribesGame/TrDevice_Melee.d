module UnrealScript.TribesGame.TrDevice_Melee;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.TribesGame.TrDevice_AutoFire;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.CameraAnim;

extern(C++) interface TrDevice_Melee : TrDevice_AutoFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_Melee")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOwningClientPlayHit;
			ScriptFunction mPlayFireAnimation;
			ScriptFunction mCalcAmountToLoad;
			ScriptFunction mHasAmmo;
			ScriptFunction mGetBuildUpTime;
			ScriptFunction mFireAmmunition;
			ScriptFunction mModifyInstantHitDamage;
			ScriptFunction mAttemptFlagFumble;
		}
		public @property static final
		{
			ScriptFunction OwningClientPlayHit() { return mOwningClientPlayHit ? mOwningClientPlayHit : (mOwningClientPlayHit = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Melee.OwningClientPlayHit")); }
			ScriptFunction PlayFireAnimation() { return mPlayFireAnimation ? mPlayFireAnimation : (mPlayFireAnimation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Melee.PlayFireAnimation")); }
			ScriptFunction CalcAmountToLoad() { return mCalcAmountToLoad ? mCalcAmountToLoad : (mCalcAmountToLoad = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Melee.CalcAmountToLoad")); }
			ScriptFunction HasAmmo() { return mHasAmmo ? mHasAmmo : (mHasAmmo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Melee.HasAmmo")); }
			ScriptFunction GetBuildUpTime() { return mGetBuildUpTime ? mGetBuildUpTime : (mGetBuildUpTime = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Melee.GetBuildUpTime")); }
			ScriptFunction FireAmmunition() { return mFireAmmunition ? mFireAmmunition : (mFireAmmunition = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Melee.FireAmmunition")); }
			ScriptFunction ModifyInstantHitDamage() { return mModifyInstantHitDamage ? mModifyInstantHitDamage : (mModifyInstantHitDamage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Melee.ModifyInstantHitDamage")); }
			ScriptFunction AttemptFlagFumble() { return mAttemptFlagFumble ? mAttemptFlagFumble : (mAttemptFlagFumble = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Melee.AttemptFlagFumble")); }
		}
	}
	struct MeleeRandomAnimation
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrDevice_Melee.MeleeRandomAnimation")); }
		@property final auto ref
		{
			CameraAnim FireCameraAnim() { return *cast(CameraAnim*)(cast(size_t)&this + 8); }
			ScriptName FireAnimName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(Actor.ImpactInfo) PendingImpactList() { return *cast(ScriptArray!(Actor.ImpactInfo)*)(cast(size_t)cast(void*)this + 2164); }
		ScriptArray!(TrDevice_Melee.MeleeRandomAnimation) FiringAnimRandomList() { return *cast(ScriptArray!(TrDevice_Melee.MeleeRandomAnimation)*)(cast(size_t)cast(void*)this + 2176); }
		AnimNodeSequence FiringAnimSeqNode() { return *cast(AnimNodeSequence*)(cast(size_t)cast(void*)this + 2188); }
	}
final:
	void OwningClientPlayHit(Vector HitLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.OwningClientPlayHit, params.ptr, cast(void*)0);
	}
	void PlayFireAnimation(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayFireAnimation, params.ptr, cast(void*)0);
	}
	int CalcAmountToLoad()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalcAmountToLoad, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	bool HasAmmo(ubyte FireModeNum, int Amount)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = FireModeNum;
		*cast(int*)&params[4] = Amount;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasAmmo, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	float GetBuildUpTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBuildUpTime, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void FireAmmunition()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FireAmmunition, cast(void*)0, cast(void*)0);
	}
	float ModifyInstantHitDamage(ubyte FiringMode, Actor.ImpactInfo Impact, float Damage)
	{
		ubyte params[92];
		params[] = 0;
		params[0] = FiringMode;
		*cast(Actor.ImpactInfo*)&params[4] = Impact;
		*cast(float*)&params[84] = Damage;
		(cast(ScriptObject)this).ProcessEvent(Functions.ModifyInstantHitDamage, params.ptr, cast(void*)0);
		return *cast(float*)&params[88];
	}
	void AttemptFlagFumble(TrPawn Victim)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPawn*)params.ptr = Victim;
		(cast(ScriptObject)this).ProcessEvent(Functions.AttemptFlagFumble, params.ptr, cast(void*)0);
	}
}
