module UnrealScript.TribesGame.TrDevice_ThrowingKnives;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Projectile;
import UnrealScript.Engine.SkelControlSingleBone;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_ThrowingKnives : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_ThrowingKnives")()); }
	private static __gshared TrDevice_ThrowingKnives mDefaultProperties;
	@property final static TrDevice_ThrowingKnives DefaultProperties() { mixin(MGDPC!(TrDevice_ThrowingKnives, "TrDevice_ThrowingKnives TribesGame.Default__TrDevice_ThrowingKnives")()); }
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
			ScriptFunction PostInitAnimTree() { mixin(MGF!("mPostInitAnimTree", "Function TribesGame.TrDevice_ThrowingKnives.PostInitAnimTree")()); }
			ScriptFunction UpdateSkelControlKnives() { mixin(MGF!("mUpdateSkelControlKnives", "Function TribesGame.TrDevice_ThrowingKnives.UpdateSkelControlKnives")()); }
			ScriptFunction OnFireSkelControlKnivesAnimNotify() { mixin(MGF!("mOnFireSkelControlKnivesAnimNotify", "Function TribesGame.TrDevice_ThrowingKnives.OnFireSkelControlKnivesAnimNotify")()); }
			ScriptFunction OnSkelControlKnivesAnimNotify() { mixin(MGF!("mOnSkelControlKnivesAnimNotify", "Function TribesGame.TrDevice_ThrowingKnives.OnSkelControlKnivesAnimNotify")()); }
			ScriptFunction PlayWeaponEquip() { mixin(MGF!("mPlayWeaponEquip", "Function TribesGame.TrDevice_ThrowingKnives.PlayWeaponEquip")()); }
			ScriptFunction ProjectileFire() { mixin(MGF!("mProjectileFire", "Function TribesGame.TrDevice_ThrowingKnives.ProjectileFire")()); }
			ScriptFunction FireAmmunition() { mixin(MGF!("mFireAmmunition", "Function TribesGame.TrDevice_ThrowingKnives.FireAmmunition")()); }
			ScriptFunction StartFire() { mixin(MGF!("mStartFire", "Function TribesGame.TrDevice_ThrowingKnives.StartFire")()); }
		}
	}
	@property final auto ref
	{
		SkelControlSingleBone m_KnifeVisibilityBottomControl() { mixin(MGPC!(SkelControlSingleBone, 2152)()); }
		SkelControlSingleBone m_KnifeVisibilityTopControl() { mixin(MGPC!(SkelControlSingleBone, 2148)()); }
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
