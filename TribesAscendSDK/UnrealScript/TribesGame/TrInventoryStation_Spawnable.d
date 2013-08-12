module UnrealScript.TribesGame.TrInventoryStation_Spawnable;

import ScriptClasses;
import UnrealScript.Engine.Controller;
import UnrealScript.TribesGame.TrInventoryStation;
import UnrealScript.Engine.Actor;

extern(C++) interface TrInventoryStation_Spawnable : TrInventoryStation
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrInventoryStation_Spawnable")); }
	private static __gshared TrInventoryStation_Spawnable mDefaultProperties;
	@property final static TrInventoryStation_Spawnable DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrInventoryStation_Spawnable)("TrInventoryStation_Spawnable TribesGame.Default__TrInventoryStation_Spawnable")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mTakeDamage;
		public @property static final ScriptFunction TakeDamage() { return mTakeDamage ? mTakeDamage : (mTakeDamage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrInventoryStation_Spawnable.TakeDamage")); }
	}
	final void TakeDamage(int DamageAmount, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = DamageAmount;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = pDamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeDamage, params.ptr, cast(void*)0);
	}
}
