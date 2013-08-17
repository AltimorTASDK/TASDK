module UnrealScript.TribesGame.TrDeployable_BaseTurret;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Controller;
import UnrealScript.TribesGame.TrDeployable_Turret;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrHelpTextManager;
import UnrealScript.TribesGame.TrPlayerController;

extern(C++) interface TrDeployable_BaseTurret : TrDeployable_Turret
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDeployable_BaseTurret")()); }
	private static __gshared TrDeployable_BaseTurret mDefaultProperties;
	@property final static TrDeployable_BaseTurret DefaultProperties() { mixin(MGDPC!(TrDeployable_BaseTurret, "TrDeployable_BaseTurret TribesGame.Default__TrDeployable_BaseTurret")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mApplyServerSettings;
			ScriptFunction mReceivesPowerFromGenerator;
			ScriptFunction mShouldShowHelpText;
			ScriptFunction mSpawnHelpTextCollisionProxy;
			ScriptFunction mGetMarker;
			ScriptFunction mGiveDestroyAccolade;
			ScriptFunction mTakeDamage;
			ScriptFunction mRequiresLOSForRepairDeployable;
		}
		public @property static final
		{
			ScriptFunction ApplyServerSettings() { mixin(MGF!("mApplyServerSettings", "Function TribesGame.TrDeployable_BaseTurret.ApplyServerSettings")()); }
			ScriptFunction ReceivesPowerFromGenerator() { mixin(MGF!("mReceivesPowerFromGenerator", "Function TribesGame.TrDeployable_BaseTurret.ReceivesPowerFromGenerator")()); }
			ScriptFunction ShouldShowHelpText() { mixin(MGF!("mShouldShowHelpText", "Function TribesGame.TrDeployable_BaseTurret.ShouldShowHelpText")()); }
			ScriptFunction SpawnHelpTextCollisionProxy() { mixin(MGF!("mSpawnHelpTextCollisionProxy", "Function TribesGame.TrDeployable_BaseTurret.SpawnHelpTextCollisionProxy")()); }
			ScriptFunction GetMarker() { mixin(MGF!("mGetMarker", "Function TribesGame.TrDeployable_BaseTurret.GetMarker")()); }
			ScriptFunction GiveDestroyAccolade() { mixin(MGF!("mGiveDestroyAccolade", "Function TribesGame.TrDeployable_BaseTurret.GiveDestroyAccolade")()); }
			ScriptFunction TakeDamage() { mixin(MGF!("mTakeDamage", "Function TribesGame.TrDeployable_BaseTurret.TakeDamage")()); }
			ScriptFunction RequiresLOSForRepairDeployable() { mixin(MGF!("mRequiresLOSForRepairDeployable", "Function TribesGame.TrDeployable_BaseTurret.RequiresLOSForRepairDeployable")()); }
		}
	}
	static struct BlownUp
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrDeployable_BaseTurret.BlownUp")()); }
	}
final:
	void ApplyServerSettings()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyServerSettings, cast(void*)0, cast(void*)0);
	}
	bool ReceivesPowerFromGenerator()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReceivesPowerFromGenerator, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool ShouldShowHelpText(TrHelpTextManager.EHelpTextType HelpTextType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrHelpTextManager.EHelpTextType*)params.ptr = HelpTextType;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldShowHelpText, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void SpawnHelpTextCollisionProxy(TrHelpTextManager.EHelpTextType HelpTextType)
	{
		ubyte params[1];
		params[] = 0;
		*cast(TrHelpTextManager.EHelpTextType*)params.ptr = HelpTextType;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnHelpTextCollisionProxy, params.ptr, cast(void*)0);
	}
	Texture2D GetMarker()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMarker, params.ptr, cast(void*)0);
		return *cast(Texture2D*)params.ptr;
	}
	void GiveDestroyAccolade(TrPlayerController TrPC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = TrPC;
		(cast(ScriptObject)this).ProcessEvent(Functions.GiveDestroyAccolade, params.ptr, cast(void*)0);
	}
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
	bool RequiresLOSForRepairDeployable()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.RequiresLOSForRepairDeployable, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
