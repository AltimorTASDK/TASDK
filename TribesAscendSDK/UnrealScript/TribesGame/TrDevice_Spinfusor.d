module UnrealScript.TribesGame.TrDevice_Spinfusor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.TribesGame.TrSkelControl_SpinControl;
import UnrealScript.Engine.SkelControlSingleBone;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_Spinfusor : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_Spinfusor")); }
	private static __gshared TrDevice_Spinfusor mDefaultProperties;
	@property final static TrDevice_Spinfusor DefaultProperties() { mixin(MGDPC("TrDevice_Spinfusor", "TrDevice_Spinfusor TribesGame.Default__TrDevice_Spinfusor")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mUpdateReplicatedCarriedAmmo;
			ScriptFunction mPostInitAnimTree;
			ScriptFunction mOnAnimPlay;
			ScriptFunction mOnAnimEnd;
			ScriptFunction mPlayFireEffects;
			ScriptFunction mPlayWeaponEquip;
			ScriptFunction mSetDiscVisibility;
			ScriptFunction mSetDiscSpinning;
			ScriptFunction mPlayWeaponPutDown;
			ScriptFunction mPutDownFast;
			ScriptFunction mOnSwitchAwayFromWeapon;
		}
		public @property static final
		{
			ScriptFunction UpdateReplicatedCarriedAmmo() { mixin(MGF("mUpdateReplicatedCarriedAmmo", "Function TribesGame.TrDevice_Spinfusor.UpdateReplicatedCarriedAmmo")); }
			ScriptFunction PostInitAnimTree() { mixin(MGF("mPostInitAnimTree", "Function TribesGame.TrDevice_Spinfusor.PostInitAnimTree")); }
			ScriptFunction OnAnimPlay() { mixin(MGF("mOnAnimPlay", "Function TribesGame.TrDevice_Spinfusor.OnAnimPlay")); }
			ScriptFunction OnAnimEnd() { mixin(MGF("mOnAnimEnd", "Function TribesGame.TrDevice_Spinfusor.OnAnimEnd")); }
			ScriptFunction PlayFireEffects() { mixin(MGF("mPlayFireEffects", "Function TribesGame.TrDevice_Spinfusor.PlayFireEffects")); }
			ScriptFunction PlayWeaponEquip() { mixin(MGF("mPlayWeaponEquip", "Function TribesGame.TrDevice_Spinfusor.PlayWeaponEquip")); }
			ScriptFunction SetDiscVisibility() { mixin(MGF("mSetDiscVisibility", "Function TribesGame.TrDevice_Spinfusor.SetDiscVisibility")); }
			ScriptFunction SetDiscSpinning() { mixin(MGF("mSetDiscSpinning", "Function TribesGame.TrDevice_Spinfusor.SetDiscSpinning")); }
			ScriptFunction PlayWeaponPutDown() { mixin(MGF("mPlayWeaponPutDown", "Function TribesGame.TrDevice_Spinfusor.PlayWeaponPutDown")); }
			ScriptFunction PutDownFast() { mixin(MGF("mPutDownFast", "Function TribesGame.TrDevice_Spinfusor.PutDownFast")); }
			ScriptFunction OnSwitchAwayFromWeapon() { mixin(MGF("mOnSwitchAwayFromWeapon", "Function TribesGame.TrDevice_Spinfusor.OnSwitchAwayFromWeapon")); }
		}
	}
	@property final auto ref
	{
		SoundCue m_SpinfusorIdleSound() { mixin(MGPC("SoundCue", 2156)); }
		SkelControlSingleBone m_DiscVisibilityControl() { mixin(MGPC("SkelControlSingleBone", 2152)); }
		TrSkelControl_SpinControl m_DiscSpinControl() { mixin(MGPC("TrSkelControl_SpinControl", 2148)); }
	}
final:
	void UpdateReplicatedCarriedAmmo()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateReplicatedCarriedAmmo, cast(void*)0, cast(void*)0);
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
	void OnAnimPlay(AnimNodeSequence SeqNode)
	{
		ubyte params[4];
		params[] = 0;
		*cast(AnimNodeSequence*)params.ptr = SeqNode;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnAnimPlay, params.ptr, cast(void*)0);
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
	void PlayFireEffects(ubyte FireModeNum, Vector* HitLocation = null)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = FireModeNum;
		if (HitLocation !is null)
			*cast(Vector*)&params[4] = *HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayFireEffects, params.ptr, cast(void*)0);
	}
	void PlayWeaponEquip()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayWeaponEquip, cast(void*)0, cast(void*)0);
	}
	void SetDiscVisibility(bool bVisible)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetDiscVisibility, params.ptr, cast(void*)0);
	}
	void SetDiscSpinning(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetDiscSpinning, params.ptr, cast(void*)0);
	}
	void PlayWeaponPutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayWeaponPutDown, cast(void*)0, cast(void*)0);
	}
	void PutDownFast()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PutDownFast, cast(void*)0, cast(void*)0);
	}
	void OnSwitchAwayFromWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSwitchAwayFromWeapon, cast(void*)0, cast(void*)0);
	}
}
