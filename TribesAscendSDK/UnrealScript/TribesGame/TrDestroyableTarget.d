module UnrealScript.TribesGame.TrDestroyableTarget;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Actor;
import UnrealScript.UTGame.UTSimpleDestroyable;

extern(C++) interface TrDestroyableTarget : UTSimpleDestroyable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDestroyableTarget")); }
	private static __gshared TrDestroyableTarget mDefaultProperties;
	@property final static TrDestroyableTarget DefaultProperties() { mixin(MGDPC("TrDestroyableTarget", "TrDestroyableTarget TribesGame.Default__TrDestroyableTarget")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mTakeDamage;
			ScriptFunction mOnToggle;
		}
		public @property static final
		{
			ScriptFunction TakeDamage() { mixin(MGF("mTakeDamage", "Function TribesGame.TrDestroyableTarget.TakeDamage")); }
			ScriptFunction OnToggle() { mixin(MGF("mOnToggle", "Function TribesGame.TrDestroyableTarget.OnToggle")); }
		}
	}
final:
	void TakeDamage(int DamageAmount, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass pDamageType, Actor.TraceHitInfo* HitInfo = null, Actor* DamageCauser = null)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = DamageAmount;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = pDamageType;
		if (HitInfo !is null)
			*cast(Actor.TraceHitInfo*)&params[36] = *HitInfo;
		if (DamageCauser !is null)
			*cast(Actor*)&params[64] = *DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeDamage, params.ptr, cast(void*)0);
	}
	void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggle, params.ptr, cast(void*)0);
	}
}
