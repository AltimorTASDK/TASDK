module UnrealScript.TribesGame.TrDeployable_BaseTurret;

import ScriptClasses;
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
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDeployable_BaseTurret")); }
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
			ScriptFunction ApplyServerSettings() { return mApplyServerSettings ? mApplyServerSettings : (mApplyServerSettings = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_BaseTurret.ApplyServerSettings")); }
			ScriptFunction ReceivesPowerFromGenerator() { return mReceivesPowerFromGenerator ? mReceivesPowerFromGenerator : (mReceivesPowerFromGenerator = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_BaseTurret.ReceivesPowerFromGenerator")); }
			ScriptFunction ShouldShowHelpText() { return mShouldShowHelpText ? mShouldShowHelpText : (mShouldShowHelpText = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_BaseTurret.ShouldShowHelpText")); }
			ScriptFunction SpawnHelpTextCollisionProxy() { return mSpawnHelpTextCollisionProxy ? mSpawnHelpTextCollisionProxy : (mSpawnHelpTextCollisionProxy = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_BaseTurret.SpawnHelpTextCollisionProxy")); }
			ScriptFunction GetMarker() { return mGetMarker ? mGetMarker : (mGetMarker = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_BaseTurret.GetMarker")); }
			ScriptFunction GiveDestroyAccolade() { return mGiveDestroyAccolade ? mGiveDestroyAccolade : (mGiveDestroyAccolade = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_BaseTurret.GiveDestroyAccolade")); }
			ScriptFunction TakeDamage() { return mTakeDamage ? mTakeDamage : (mTakeDamage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_BaseTurret.TakeDamage")); }
			ScriptFunction RequiresLOSForRepairDeployable() { return mRequiresLOSForRepairDeployable ? mRequiresLOSForRepairDeployable : (mRequiresLOSForRepairDeployable = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_BaseTurret.RequiresLOSForRepairDeployable")); }
		}
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
	void TakeDamage(int DamageAmount, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
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
	bool RequiresLOSForRepairDeployable()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.RequiresLOSForRepairDeployable, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
