module UnrealScript.TribesGame.TrDevice_Melee;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.TribesGame.TrDevice_AutoFire;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.CameraAnim;

extern(C++) interface TrDevice_Melee : TrDevice_AutoFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_Melee")()); }
	private static __gshared TrDevice_Melee mDefaultProperties;
	@property final static TrDevice_Melee DefaultProperties() { mixin(MGDPC!(TrDevice_Melee, "TrDevice_Melee TribesGame.Default__TrDevice_Melee")()); }
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
			ScriptFunction OwningClientPlayHit() { mixin(MGF!("mOwningClientPlayHit", "Function TribesGame.TrDevice_Melee.OwningClientPlayHit")()); }
			ScriptFunction PlayFireAnimation() { mixin(MGF!("mPlayFireAnimation", "Function TribesGame.TrDevice_Melee.PlayFireAnimation")()); }
			ScriptFunction CalcAmountToLoad() { mixin(MGF!("mCalcAmountToLoad", "Function TribesGame.TrDevice_Melee.CalcAmountToLoad")()); }
			ScriptFunction HasAmmo() { mixin(MGF!("mHasAmmo", "Function TribesGame.TrDevice_Melee.HasAmmo")()); }
			ScriptFunction GetBuildUpTime() { mixin(MGF!("mGetBuildUpTime", "Function TribesGame.TrDevice_Melee.GetBuildUpTime")()); }
			ScriptFunction FireAmmunition() { mixin(MGF!("mFireAmmunition", "Function TribesGame.TrDevice_Melee.FireAmmunition")()); }
			ScriptFunction ModifyInstantHitDamage() { mixin(MGF!("mModifyInstantHitDamage", "Function TribesGame.TrDevice_Melee.ModifyInstantHitDamage")()); }
			ScriptFunction AttemptFlagFumble() { mixin(MGF!("mAttemptFlagFumble", "Function TribesGame.TrDevice_Melee.AttemptFlagFumble")()); }
		}
	}
	struct MeleeRandomAnimation
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct TribesGame.TrDevice_Melee.MeleeRandomAnimation")()); }
		@property final auto ref
		{
			CameraAnim FireCameraAnim() { mixin(MGPS!("CameraAnim", 8)()); }
			ScriptName FireAnimName() { mixin(MGPS!("ScriptName", 0)()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(Actor.ImpactInfo) PendingImpactList() { mixin(MGPC!("ScriptArray!(Actor.ImpactInfo)", 2164)()); }
		ScriptArray!(TrDevice_Melee.MeleeRandomAnimation) FiringAnimRandomList() { mixin(MGPC!("ScriptArray!(TrDevice_Melee.MeleeRandomAnimation)", 2176)()); }
		AnimNodeSequence FiringAnimSeqNode() { mixin(MGPC!("AnimNodeSequence", 2188)()); }
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
	bool HasAmmo(ubyte FireModeNum, int* Amount = null)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = FireModeNum;
		if (Amount !is null)
			*cast(int*)&params[4] = *Amount;
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
