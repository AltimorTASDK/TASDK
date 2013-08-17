module UnrealScript.TribesGame.TrDevice_ChainGun;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrSkelControl_SpinControl;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.TribesGame.TrDevice_ConstantFire;

extern(C++) interface TrDevice_ChainGun : TrDevice_ConstantFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_ChainGun")()); }
	private static __gshared TrDevice_ChainGun mDefaultProperties;
	@property final static TrDevice_ChainGun DefaultProperties() { mixin(MGDPC!(TrDevice_ChainGun, "TrDevice_ChainGun TribesGame.Default__TrDevice_ChainGun")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetBuildUpTime;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mPostInitAnimTree;
			ScriptFunction mTick;
			ScriptFunction mUpdateSoundModulation;
			ScriptFunction mPlayBuildupAnimation;
			ScriptFunction mOnSwitchToWeapon;
			ScriptFunction mPlayWeaponPutDown;
			ScriptFunction mBuffMaxCarriedAmmo;
			ScriptFunction mAddCarriedAmmo;
			ScriptFunction mGetBasePickupAmmoAmount;
		}
		public @property static final
		{
			ScriptFunction GetBuildUpTime() { mixin(MGF!("mGetBuildUpTime", "Function TribesGame.TrDevice_ChainGun.GetBuildUpTime")()); }
			ScriptFunction ReplicatedEvent() { mixin(MGF!("mReplicatedEvent", "Function TribesGame.TrDevice_ChainGun.ReplicatedEvent")()); }
			ScriptFunction PostInitAnimTree() { mixin(MGF!("mPostInitAnimTree", "Function TribesGame.TrDevice_ChainGun.PostInitAnimTree")()); }
			ScriptFunction Tick() { mixin(MGF!("mTick", "Function TribesGame.TrDevice_ChainGun.Tick")()); }
			ScriptFunction UpdateSoundModulation() { mixin(MGF!("mUpdateSoundModulation", "Function TribesGame.TrDevice_ChainGun.UpdateSoundModulation")()); }
			ScriptFunction PlayBuildupAnimation() { mixin(MGF!("mPlayBuildupAnimation", "Function TribesGame.TrDevice_ChainGun.PlayBuildupAnimation")()); }
			ScriptFunction OnSwitchToWeapon() { mixin(MGF!("mOnSwitchToWeapon", "Function TribesGame.TrDevice_ChainGun.OnSwitchToWeapon")()); }
			ScriptFunction PlayWeaponPutDown() { mixin(MGF!("mPlayWeaponPutDown", "Function TribesGame.TrDevice_ChainGun.PlayWeaponPutDown")()); }
			ScriptFunction BuffMaxCarriedAmmo() { mixin(MGF!("mBuffMaxCarriedAmmo", "Function TribesGame.TrDevice_ChainGun.BuffMaxCarriedAmmo")()); }
			ScriptFunction AddCarriedAmmo() { mixin(MGF!("mAddCarriedAmmo", "Function TribesGame.TrDevice_ChainGun.AddCarriedAmmo")()); }
			ScriptFunction GetBasePickupAmmoAmount() { mixin(MGF!("mGetBasePickupAmmoAmount", "Function TribesGame.TrDevice_ChainGun.GetBasePickupAmmoAmount")()); }
		}
	}
	static struct WeaponFullAutoBuildup
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrDevice_ChainGun.WeaponFullAutoBuildup")()); }
	}
	static struct WeaponConstantFiring
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrDevice_ChainGun.WeaponConstantFiring")()); }
	}
	static struct WeaponFullAutoCooldown
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrDevice_ChainGun.WeaponFullAutoCooldown")()); }
	}
	@property final
	{
		auto ref
		{
			int r_BuffedMaxAmmo() { mixin(MGPC!("int", 2188)()); }
			TrSkelControl_SpinControl m_BarrelSpinControl() { mixin(MGPC!("TrSkelControl_SpinControl", 2184)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_AudioComponentWeaponSpin'!
			float m_fCurrSpinTime() { mixin(MGPC!("float", 2176)()); }
			float m_fBuildupTime() { mixin(MGPC!("float", 2172)()); }
		}
		bool m_bHasClip() { mixin(MGBPC!(2192, 0x1)()); }
		bool m_bHasClip(bool val) { mixin(MSBPC!(2192, 0x1)()); }
	}
final:
	static float GetBuildUpTime(PlayerReplicationInfo PRI, bool bForInterpSpeed)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		*cast(bool*)&params[4] = bForInterpSpeed;
		StaticClass.ProcessEvent(Functions.GetBuildUpTime, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
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
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
	void UpdateSoundModulation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateSoundModulation, cast(void*)0, cast(void*)0);
	}
	void PlayBuildupAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayBuildupAnimation, cast(void*)0, cast(void*)0);
	}
	void OnSwitchToWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSwitchToWeapon, cast(void*)0, cast(void*)0);
	}
	void PlayWeaponPutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayWeaponPutDown, cast(void*)0, cast(void*)0);
	}
	void BuffMaxCarriedAmmo(int Amount)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		(cast(ScriptObject)this).ProcessEvent(Functions.BuffMaxCarriedAmmo, params.ptr, cast(void*)0);
	}
	int AddCarriedAmmo(int Amount)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Amount;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddCarriedAmmo, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	int GetBasePickupAmmoAmount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBasePickupAmmoAmount, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
