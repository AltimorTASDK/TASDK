module UnrealScript.TribesGame.TrDevice_ThrowingKnives;

import ScriptClasses;
import UnrealScript.Engine.Projectile;
import UnrealScript.Engine.SkelControlSingleBone;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_ThrowingKnives : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_ThrowingKnives")); }
	private static __gshared TrDevice_ThrowingKnives mDefaultProperties;
	@property final static TrDevice_ThrowingKnives DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_ThrowingKnives)("TrDevice_ThrowingKnives TribesGame.Default__TrDevice_ThrowingKnives")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostInitAnimTree;
			ScriptFunction mUpdateSkelControlKnives;
			ScriptFunction mOnFireSkelControlKnivesAnimNotify;
			ScriptFunction mOnSkelControlKnivesAnimNotify;
			ScriptFunction mPlayWeaponEquip;
			ScriptFunction mProjectileFire;
			ScriptFunction mFireAmmunition;
			ScriptFunction mStartFire;
		}
		public @property static final
		{
			ScriptFunction PostInitAnimTree() { return mPostInitAnimTree ? mPostInitAnimTree : (mPostInitAnimTree = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_ThrowingKnives.PostInitAnimTree")); }
			ScriptFunction UpdateSkelControlKnives() { return mUpdateSkelControlKnives ? mUpdateSkelControlKnives : (mUpdateSkelControlKnives = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_ThrowingKnives.UpdateSkelControlKnives")); }
			ScriptFunction OnFireSkelControlKnivesAnimNotify() { return mOnFireSkelControlKnivesAnimNotify ? mOnFireSkelControlKnivesAnimNotify : (mOnFireSkelControlKnivesAnimNotify = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_ThrowingKnives.OnFireSkelControlKnivesAnimNotify")); }
			ScriptFunction OnSkelControlKnivesAnimNotify() { return mOnSkelControlKnivesAnimNotify ? mOnSkelControlKnivesAnimNotify : (mOnSkelControlKnivesAnimNotify = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_ThrowingKnives.OnSkelControlKnivesAnimNotify")); }
			ScriptFunction PlayWeaponEquip() { return mPlayWeaponEquip ? mPlayWeaponEquip : (mPlayWeaponEquip = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_ThrowingKnives.PlayWeaponEquip")); }
			ScriptFunction ProjectileFire() { return mProjectileFire ? mProjectileFire : (mProjectileFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_ThrowingKnives.ProjectileFire")); }
			ScriptFunction FireAmmunition() { return mFireAmmunition ? mFireAmmunition : (mFireAmmunition = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_ThrowingKnives.FireAmmunition")); }
			ScriptFunction StartFire() { return mStartFire ? mStartFire : (mStartFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_ThrowingKnives.StartFire")); }
		}
	}
	@property final auto ref
	{
		SkelControlSingleBone m_KnifeVisibilityBottomControl() { return *cast(SkelControlSingleBone*)(cast(size_t)cast(void*)this + 2152); }
		SkelControlSingleBone m_KnifeVisibilityTopControl() { return *cast(SkelControlSingleBone*)(cast(size_t)cast(void*)this + 2148); }
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
	void UpdateSkelControlKnives(bool bForceFullAmmo)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bForceFullAmmo;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateSkelControlKnives, params.ptr, cast(void*)0);
	}
	void OnFireSkelControlKnivesAnimNotify()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnFireSkelControlKnivesAnimNotify, cast(void*)0, cast(void*)0);
	}
	void OnSkelControlKnivesAnimNotify()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSkelControlKnivesAnimNotify, cast(void*)0, cast(void*)0);
	}
	void PlayWeaponEquip()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayWeaponEquip, cast(void*)0, cast(void*)0);
	}
	Projectile ProjectileFire()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProjectileFire, params.ptr, cast(void*)0);
		return *cast(Projectile*)params.ptr;
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
}
