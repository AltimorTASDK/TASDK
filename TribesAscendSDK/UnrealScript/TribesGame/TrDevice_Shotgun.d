module UnrealScript.TribesGame.TrDevice_Shotgun;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.AnimNodePlayCustomAnim;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_Shotgun : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_Shotgun")()); }
	private static __gshared TrDevice_Shotgun mDefaultProperties;
	@property final static TrDevice_Shotgun DefaultProperties() { mixin(MGDPC!(TrDevice_Shotgun, "TrDevice_Shotgun TribesGame.Default__TrDevice_Shotgun")()); }
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
			ScriptFunction PostInitAnimTree() { mixin(MGF!("mPostInitAnimTree", "Function TribesGame.TrDevice_Shotgun.PostInitAnimTree")()); }
			ScriptFunction SetFlashLocation() { mixin(MGF!("mSetFlashLocation", "Function TribesGame.TrDevice_Shotgun.SetFlashLocation")()); }
			ScriptFunction PerformInactiveReload() { mixin(MGF!("mPerformInactiveReload", "Function TribesGame.TrDevice_Shotgun.PerformInactiveReload")()); }
			ScriptFunction CustomFire() { mixin(MGF!("mCustomFire", "Function TribesGame.TrDevice_Shotgun.CustomFire")()); }
			ScriptFunction FireAmmunition() { mixin(MGF!("mFireAmmunition", "Function TribesGame.TrDevice_Shotgun.FireAmmunition")()); }
			ScriptFunction StartFire() { mixin(MGF!("mStartFire", "Function TribesGame.TrDevice_Shotgun.StartFire")()); }
			ScriptFunction ConsumeAmmo() { mixin(MGF!("mConsumeAmmo", "Function TribesGame.TrDevice_Shotgun.ConsumeAmmo")()); }
			ScriptFunction ConsumeAmmo_Internal() { mixin(MGF!("mConsumeAmmo_Internal", "Function TribesGame.TrDevice_Shotgun.ConsumeAmmo_Internal")()); }
			ScriptFunction ProcessInstantHit_Internal() { mixin(MGF!("mProcessInstantHit_Internal", "Function TribesGame.TrDevice_Shotgun.ProcessInstantHit_Internal")()); }
			ScriptFunction OnAnimEnd() { mixin(MGF!("mOnAnimEnd", "Function TribesGame.TrDevice_Shotgun.OnAnimEnd")()); }
		}
	}
	static struct WeaponFiring
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrDevice_Shotgun.WeaponFiring")()); }
	}
	static struct DeviceReloading
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrDevice_Shotgun.DeviceReloading")()); }
	}
	@property final auto ref
	{
		AnimNodePlayCustomAnim ReloadCustomAnimNode() { mixin(MGPC!("AnimNodePlayCustomAnim", 2172)()); }
		int m_nConsumeShotsFired() { mixin(MGPC!("int", 2168)()); }
		int m_nShotsFired() { mixin(MGPC!("int", 2164)()); }
		float m_fInnerDefaultAccuracy() { mixin(MGPC!("float", 2160)()); }
		float m_fConsumeAmmoTimeStamp() { mixin(MGPC!("float", 2156)()); }
		int m_nImpactCounter() { mixin(MGPC!("int", 2152)()); }
		int m_nMinShotCount() { mixin(MGPC!("int", 2148)()); }
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
	void ProcessInstantHit_Internal(ubyte FiringMode, Actor.ImpactInfo Impact, bool* bHeadShot = null)
	{
		ubyte params[88];
		params[] = 0;
		params[0] = FiringMode;
		*cast(Actor.ImpactInfo*)&params[4] = Impact;
		if (bHeadShot !is null)
			*cast(bool*)&params[84] = *bHeadShot;
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
