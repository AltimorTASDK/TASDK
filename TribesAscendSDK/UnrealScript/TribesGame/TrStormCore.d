module UnrealScript.TribesGame.TrStormCore;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PlayerController;
import UnrealScript.TribesGame.TrGameObjective;

extern(C++) interface TrStormCore : TrGameObjective
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrStormCore")()); }
	private static __gshared TrStormCore mDefaultProperties;
	@property final static TrStormCore DefaultProperties() { mixin(MGDPC!(TrStormCore, "TrStormCore TribesGame.Default__TrStormCore")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mTakeDamage;
			ScriptFunction mGetHealthAmount;
			ScriptFunction mGetShieldAmount;
			ScriptFunction mOnCoreDestroyed;
			ScriptFunction mPostRenderFor;
		}
		public @property static final
		{
			ScriptFunction TakeDamage() { mixin(MGF!("mTakeDamage", "Function TribesGame.TrStormCore.TakeDamage")()); }
			ScriptFunction GetHealthAmount() { mixin(MGF!("mGetHealthAmount", "Function TribesGame.TrStormCore.GetHealthAmount")()); }
			ScriptFunction GetShieldAmount() { mixin(MGF!("mGetShieldAmount", "Function TribesGame.TrStormCore.GetShieldAmount")()); }
			ScriptFunction OnCoreDestroyed() { mixin(MGF!("mOnCoreDestroyed", "Function TribesGame.TrStormCore.OnCoreDestroyed")()); }
			ScriptFunction PostRenderFor() { mixin(MGF!("mPostRenderFor", "Function TribesGame.TrStormCore.PostRenderFor")()); }
		}
	}
	@property final auto ref
	{
		float m_fShieldBarPlacementY() { mixin(MGPC!("float", 1364)()); }
		MaterialInstanceConstant m_ShieldBarMIC() { mixin(MGPC!("MaterialInstanceConstant", 1360)()); }
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
	float GetHealthAmount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHealthAmount, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetShieldAmount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetShieldAmount, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void OnCoreDestroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnCoreDestroyed, cast(void*)0, cast(void*)0);
	}
	void PostRenderFor(PlayerController PC, Canvas pCanvas, Vector CameraPosition, Vector CameraDir)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(Vector*)&params[8] = CameraPosition;
		*cast(Vector*)&params[20] = CameraDir;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostRenderFor, params.ptr, cast(void*)0);
	}
}
