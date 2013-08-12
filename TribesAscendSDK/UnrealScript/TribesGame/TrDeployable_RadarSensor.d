module UnrealScript.TribesGame.TrDeployable_RadarSensor;

import ScriptClasses;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrHelpTextManager;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.TribesGame.TrDeployable_Sensor;

extern(C++) interface TrDeployable_RadarSensor : TrDeployable_Sensor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDeployable_RadarSensor")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mApplyServerSettings;
			ScriptFunction mReceivesPowerFromGenerator;
			ScriptFunction mSpawnHelpTextCollisionProxy;
			ScriptFunction mShouldShowHelpText;
			ScriptFunction mGetMarker;
			ScriptFunction mSetPowered;
			ScriptFunction mRadarBlip;
			ScriptFunction mIsDeployed;
			ScriptFunction mGiveDestroyAccolade;
			ScriptFunction mReleaseOutOfSightEnemies;
			ScriptFunction mTakeDamage;
			ScriptFunction mAwardUpgradeAssists;
		}
		public @property static final
		{
			ScriptFunction ApplyServerSettings() { return mApplyServerSettings ? mApplyServerSettings : (mApplyServerSettings = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_RadarSensor.ApplyServerSettings")); }
			ScriptFunction ReceivesPowerFromGenerator() { return mReceivesPowerFromGenerator ? mReceivesPowerFromGenerator : (mReceivesPowerFromGenerator = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_RadarSensor.ReceivesPowerFromGenerator")); }
			ScriptFunction SpawnHelpTextCollisionProxy() { return mSpawnHelpTextCollisionProxy ? mSpawnHelpTextCollisionProxy : (mSpawnHelpTextCollisionProxy = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_RadarSensor.SpawnHelpTextCollisionProxy")); }
			ScriptFunction ShouldShowHelpText() { return mShouldShowHelpText ? mShouldShowHelpText : (mShouldShowHelpText = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_RadarSensor.ShouldShowHelpText")); }
			ScriptFunction GetMarker() { return mGetMarker ? mGetMarker : (mGetMarker = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_RadarSensor.GetMarker")); }
			ScriptFunction SetPowered() { return mSetPowered ? mSetPowered : (mSetPowered = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_RadarSensor.SetPowered")); }
			ScriptFunction RadarBlip() { return mRadarBlip ? mRadarBlip : (mRadarBlip = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_RadarSensor.RadarBlip")); }
			ScriptFunction IsDeployed() { return mIsDeployed ? mIsDeployed : (mIsDeployed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_RadarSensor.IsDeployed")); }
			ScriptFunction GiveDestroyAccolade() { return mGiveDestroyAccolade ? mGiveDestroyAccolade : (mGiveDestroyAccolade = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_RadarSensor.GiveDestroyAccolade")); }
			ScriptFunction ReleaseOutOfSightEnemies() { return mReleaseOutOfSightEnemies ? mReleaseOutOfSightEnemies : (mReleaseOutOfSightEnemies = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_RadarSensor.ReleaseOutOfSightEnemies")); }
			ScriptFunction TakeDamage() { return mTakeDamage ? mTakeDamage : (mTakeDamage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_RadarSensor.TakeDamage")); }
			ScriptFunction AwardUpgradeAssists() { return mAwardUpgradeAssists ? mAwardUpgradeAssists : (mAwardUpgradeAssists = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_RadarSensor.AwardUpgradeAssists")); }
		}
	}
	@property final auto ref float m_fBlipIntervalTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1540); }
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
	void SpawnHelpTextCollisionProxy(TrHelpTextManager.EHelpTextType HelpTextType)
	{
		ubyte params[1];
		params[] = 0;
		*cast(TrHelpTextManager.EHelpTextType*)params.ptr = HelpTextType;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnHelpTextCollisionProxy, params.ptr, cast(void*)0);
	}
	bool ShouldShowHelpText(TrHelpTextManager.EHelpTextType HelpTextType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrHelpTextManager.EHelpTextType*)params.ptr = HelpTextType;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldShowHelpText, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	Texture2D GetMarker()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMarker, params.ptr, cast(void*)0);
		return *cast(Texture2D*)params.ptr;
	}
	void SetPowered(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPowered, params.ptr, cast(void*)0);
	}
	void RadarBlip()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RadarBlip, cast(void*)0, cast(void*)0);
	}
	bool IsDeployed()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsDeployed, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void GiveDestroyAccolade(TrPlayerController TrPC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = TrPC;
		(cast(ScriptObject)this).ProcessEvent(Functions.GiveDestroyAccolade, params.ptr, cast(void*)0);
	}
	void ReleaseOutOfSightEnemies()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReleaseOutOfSightEnemies, cast(void*)0, cast(void*)0);
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
	void AwardUpgradeAssists()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AwardUpgradeAssists, cast(void*)0, cast(void*)0);
	}
}
