module UnrealScript.TribesGame.TrProj_RemoteArxBuster;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_StickyGrenade;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Actor;

extern(C++) interface TrProj_RemoteArxBuster : TrProj_StickyGrenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_RemoteArxBuster")); }
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
			ScriptFunction PreBeginPlay() { return mPreBeginPlay ? mPreBeginPlay : (mPreBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_RemoteArxBuster.PreBeginPlay")); }
			ScriptFunction TakeRadiusDamage() { return mTakeRadiusDamage ? mTakeRadiusDamage : (mTakeRadiusDamage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_RemoteArxBuster.TakeRadiusDamage")); }
			ScriptFunction TakeDamage() { return mTakeDamage ? mTakeDamage : (mTakeDamage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_RemoteArxBuster.TakeDamage")); }
			ScriptFunction ReportDestroyedByOtherToParentDevice() { return mReportDestroyedByOtherToParentDevice ? mReportDestroyedByOtherToParentDevice : (mReportDestroyedByOtherToParentDevice = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_RemoteArxBuster.ReportDestroyedByOtherToParentDevice")); }
			ScriptFunction StickToTarget() { return mStickToTarget ? mStickToTarget : (mStickToTarget = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_RemoteArxBuster.StickToTarget")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_RemoteArxBuster.Destroyed")); }
		}
	}
	@property final
	{
		bool m_bIsDetonating() { return (*cast(uint*)(cast(size_t)cast(void*)this + 892) & 0x1) != 0; }
		bool m_bIsDetonating(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 892) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 892) &= ~0x1; } return val; }
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
