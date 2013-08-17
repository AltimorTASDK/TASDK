module UnrealScript.TribesGame.TrProj_RemoteArxBuster;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_StickyGrenade;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Actor;

extern(C++) interface TrProj_RemoteArxBuster : TrProj_StickyGrenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_RemoteArxBuster")()); }
	private static __gshared TrProj_RemoteArxBuster mDefaultProperties;
	@property final static TrProj_RemoteArxBuster DefaultProperties() { mixin(MGDPC!(TrProj_RemoteArxBuster, "TrProj_RemoteArxBuster TribesGame.Default__TrProj_RemoteArxBuster")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPreBeginPlay;
			ScriptFunction mTakeRadiusDamage;
			ScriptFunction mTakeDamage;
			ScriptFunction mReportDestroyedByOtherToParentDevice;
			ScriptFunction mStickToTarget;
			ScriptFunction mDestroyed;
		}
		public @property static final
		{
			ScriptFunction PreBeginPlay() { mixin(MGF!("mPreBeginPlay", "Function TribesGame.TrProj_RemoteArxBuster.PreBeginPlay")()); }
			ScriptFunction TakeRadiusDamage() { mixin(MGF!("mTakeRadiusDamage", "Function TribesGame.TrProj_RemoteArxBuster.TakeRadiusDamage")()); }
			ScriptFunction TakeDamage() { mixin(MGF!("mTakeDamage", "Function TribesGame.TrProj_RemoteArxBuster.TakeDamage")()); }
			ScriptFunction ReportDestroyedByOtherToParentDevice() { mixin(MGF!("mReportDestroyedByOtherToParentDevice", "Function TribesGame.TrProj_RemoteArxBuster.ReportDestroyedByOtherToParentDevice")()); }
			ScriptFunction StickToTarget() { mixin(MGF!("mStickToTarget", "Function TribesGame.TrProj_RemoteArxBuster.StickToTarget")()); }
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function TribesGame.TrProj_RemoteArxBuster.Destroyed")()); }
		}
	}
	@property final
	{
		bool m_bIsDetonating() { mixin(MGBPC!(892, 0x1)()); }
		bool m_bIsDetonating(bool val) { mixin(MSBPC!(892, 0x1)()); }
	}
final:
	void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PreBeginPlay, cast(void*)0, cast(void*)0);
	}
	void TakeRadiusDamage(Controller EventInstigator, float BaseDamage, float InDamageRadius, ScriptClass pDamageType, float Momentum, Vector HurtOrigin, bool bFullDamage, Actor DamageCauser, float DamageFalloffExponent)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Controller*)params.ptr = EventInstigator;
		*cast(float*)&params[4] = BaseDamage;
		*cast(float*)&params[8] = InDamageRadius;
		*cast(ScriptClass*)&params[12] = pDamageType;
		*cast(float*)&params[16] = Momentum;
		*cast(Vector*)&params[20] = HurtOrigin;
		*cast(bool*)&params[32] = bFullDamage;
		*cast(Actor*)&params[36] = DamageCauser;
		*cast(float*)&params[40] = DamageFalloffExponent;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeRadiusDamage, params.ptr, cast(void*)0);
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
	void ReportDestroyedByOtherToParentDevice()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReportDestroyedByOtherToParentDevice, cast(void*)0, cast(void*)0);
	}
	bool StickToTarget(Actor Target, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(Vector*)&params[16] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.StickToTarget, params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
}
