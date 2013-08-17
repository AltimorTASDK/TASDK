module UnrealScript.TribesGame.TrAttachment_ChainGun;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrSkelControl_SpinControl;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_ChainGun : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_ChainGun")()); }
	private static __gshared TrAttachment_ChainGun mDefaultProperties;
	@property final static TrAttachment_ChainGun DefaultProperties() { mixin(MGDPC!(TrAttachment_ChainGun, "TrAttachment_ChainGun TribesGame.Default__TrAttachment_ChainGun")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostInitAnimTree;
			ScriptFunction mThirdPersonFireEffects;
		}
		public @property static final
		{
			ScriptFunction PostInitAnimTree() { mixin(MGF!("mPostInitAnimTree", "Function TribesGame.TrAttachment_ChainGun.PostInitAnimTree")()); }
			ScriptFunction ThirdPersonFireEffects() { mixin(MGF!("mThirdPersonFireEffects", "Function TribesGame.TrAttachment_ChainGun.ThirdPersonFireEffects")()); }
		}
	}
	@property final
	{
		auto ref
		{
			TrSkelControl_SpinControl m_BarrelSpinControl() { mixin(MGPC!(TrSkelControl_SpinControl, 796)()); }
			float m_fLastFireTime() { mixin(MGPC!(float, 792)()); }
			float m_fCurrSpinTime() { mixin(MGPC!(float, 788)()); }
		}
		bool m_bSpinningUp() { mixin(MGBPC!(784, 0x2)()); }
		bool m_bSpinningUp(bool val) { mixin(MSBPC!(784, 0x2)()); }
		bool m_bIsFiring() { mixin(MGBPC!(784, 0x1)()); }
		bool m_bIsFiring(bool val) { mixin(MSBPC!(784, 0x1)()); }
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
	void ThirdPersonFireEffects(Vector HitLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.ThirdPersonFireEffects, params.ptr, cast(void*)0);
	}
}
