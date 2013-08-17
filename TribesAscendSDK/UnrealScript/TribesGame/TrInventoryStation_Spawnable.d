module UnrealScript.TribesGame.TrInventoryStation_Spawnable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Controller;
import UnrealScript.TribesGame.TrInventoryStation;
import UnrealScript.Engine.Actor;

extern(C++) interface TrInventoryStation_Spawnable : TrInventoryStation
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrInventoryStation_Spawnable")()); }
	private static __gshared TrInventoryStation_Spawnable mDefaultProperties;
	@property final static TrInventoryStation_Spawnable DefaultProperties() { mixin(MGDPC!(TrInventoryStation_Spawnable, "TrInventoryStation_Spawnable TribesGame.Default__TrInventoryStation_Spawnable")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mTakeDamage;
		public @property static final ScriptFunction TakeDamage() { mixin(MGF!("mTakeDamage", "Function TribesGame.TrInventoryStation_Spawnable.TakeDamage")()); }
	}
	final void TakeDamage(int DamageAmount, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass pDamageType, Actor.TraceHitInfo* HitInfo = null, Actor* DamageCauser = null)
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
}
