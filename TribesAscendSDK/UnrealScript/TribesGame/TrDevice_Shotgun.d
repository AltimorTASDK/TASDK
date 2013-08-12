module UnrealScript.TribesGame.TrDevice_Shotgun;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.AnimNodePlayCustomAnim;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_Shotgun : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_Shotgun")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostInitAnimTree;
			ScriptFunction mSetFlashLocation;
			ScriptFunction mPerformInactiveReload;
			ScriptFunction mCustomFire;
			ScriptFunction mFireAmmunition;
			ScriptFunction mStartFire;
			ScriptFunction mConsumeAmmo;
			ScriptFunction mConsumeAmmo_Internal;
			ScriptFunction mProcessInstantHit_Internal;
			ScriptFunction mOnAnimEnd;
		}
		public @property static final
		{
			ScriptFunction PostInitAnimTree() { return mPostInitAnimTree ? mPostInitAnimTree : (mPostInitAnimTree = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Shotgun.PostInitAnimTree")); }
			ScriptFunction SetFlashLocation() { return mSetFlashLocation ? mSetFlashLocation : (mSetFlashLocation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Shotgun.SetFlashLocation")); }
			ScriptFunction PerformInactiveReload() { return mPerformInactiveReload ? mPerformInactiveReload : (mPerformInactiveReload = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Shotgun.PerformInactiveReload")); }
			ScriptFunction CustomFire() { return mCustomFire ? mCustomFire : (mCustomFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Shotgun.CustomFire")); }
			ScriptFunction FireAmmunition() { return mFireAmmunition ? mFireAmmunition : (mFireAmmunition = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Shotgun.FireAmmunition")); }
			ScriptFunction StartFire() { return mStartFire ? mStartFire : (mStartFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Shotgun.StartFire")); }
			ScriptFunction ConsumeAmmo() { return mConsumeAmmo ? mConsumeAmmo : (mConsumeAmmo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Shotgun.ConsumeAmmo")); }
			ScriptFunction ConsumeAmmo_Internal() { return mConsumeAmmo_Internal ? mConsumeAmmo_Internal : (mConsumeAmmo_Internal = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Shotgun.ConsumeAmmo_Internal")); }
			ScriptFunction ProcessInstantHit_Internal() { return mProcessInstantHit_Internal ? mProcessInstantHit_Internal : (mProcessInstantHit_Internal = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Shotgun.ProcessInstantHit_Internal")); }
			ScriptFunction OnAnimEnd() { return mOnAnimEnd ? mOnAnimEnd : (mOnAnimEnd = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Shotgun.OnAnimEnd")); }
		}
	}
	@property final auto ref
	{
		AnimNodePlayCustomAnim ReloadCustomAnimNode() { return *cast(AnimNodePlayCustomAnim*)(cast(size_t)cast(void*)this + 2172); }
		int m_nConsumeShotsFired() { return *cast(int*)(cast(size_t)cast(void*)this + 2168); }
		int m_nShotsFired() { return *cast(int*)(cast(size_t)cast(void*)this + 2164); }
		float m_fInnerDefaultAccuracy() { return *cast(float*)(cast(size_t)cast(void*)this + 2160); }
		float m_fConsumeAmmoTimeStamp() { return *cast(float*)(cast(size_t)cast(void*)this + 2156); }
		int m_nImpactCounter() { return *cast(int*)(cast(size_t)cast(void*)this + 2152); }
		int m_nMinShotCount() { return *cast(int*)(cast(size_t)cast(void*)this + 2148); }
	}
final:
	void PostInitAnimTree(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelComp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostInitAnimTree, params.ptr, cast(void*)0);
	}
	void SetFlashLocation(Vector HitLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFlashLocation, params.ptr, cast(void*)0);
	}
	void PerformInactiveReload()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PerformInactiveReload, cast(void*)0, cast(void*)0);
	}
	void CustomFire()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CustomFire, cast(void*)0, cast(void*)0);
	}
	void FireAmmunition()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FireAmmunition, cast(void*)0, cast(void*)0);
	}
	void StartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartFire, params.ptr, cast(void*)0);
	}
	void ConsumeAmmo(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.ConsumeAmmo, params.ptr, cast(void*)0);
	}
	void ConsumeAmmo_Internal(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.ConsumeAmmo_Internal, params.ptr, cast(void*)0);
	}
	void ProcessInstantHit_Internal(ubyte FiringMode, Actor.ImpactInfo Impact, bool bHeadShot)
	{
		ubyte params[88];
		params[] = 0;
		params[0] = FiringMode;
		*cast(Actor.ImpactInfo*)&params[4] = Impact;
		*cast(bool*)&params[84] = bHeadShot;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessInstantHit_Internal, params.ptr, cast(void*)0);
	}
	void OnAnimEnd(AnimNodeSequence SeqNode, float PlayedTime, float ExcessTime)
	{
		ubyte params[12];
		params[] = 0;
		*cast(AnimNodeSequence*)params.ptr = SeqNode;
		*cast(float*)&params[4] = PlayedTime;
		*cast(float*)&params[8] = ExcessTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnAnimEnd, params.ptr, cast(void*)0);
	}
}
