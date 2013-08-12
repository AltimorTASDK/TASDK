module UnrealScript.TribesGame.TrAttachment_ChainGun;

import ScriptClasses;
import UnrealScript.TribesGame.TrSkelControl_SpinControl;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_ChainGun : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_ChainGun")); }
	private static __gshared TrAttachment_ChainGun mDefaultProperties;
	@property final static TrAttachment_ChainGun DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_ChainGun)("TrAttachment_ChainGun TribesGame.Default__TrAttachment_ChainGun")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostInitAnimTree;
			ScriptFunction mThirdPersonFireEffects;
		}
		public @property static final
		{
			ScriptFunction PostInitAnimTree() { return mPostInitAnimTree ? mPostInitAnimTree : (mPostInitAnimTree = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAttachment_ChainGun.PostInitAnimTree")); }
			ScriptFunction ThirdPersonFireEffects() { return mThirdPersonFireEffects ? mThirdPersonFireEffects : (mThirdPersonFireEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAttachment_ChainGun.ThirdPersonFireEffects")); }
		}
	}
	@property final
	{
		auto ref
		{
			TrSkelControl_SpinControl m_BarrelSpinControl() { return *cast(TrSkelControl_SpinControl*)(cast(size_t)cast(void*)this + 796); }
			float m_fLastFireTime() { return *cast(float*)(cast(size_t)cast(void*)this + 792); }
			float m_fCurrSpinTime() { return *cast(float*)(cast(size_t)cast(void*)this + 788); }
		}
		bool m_bSpinningUp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 784) & 0x2) != 0; }
		bool m_bSpinningUp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 784) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 784) &= ~0x2; } return val; }
		bool m_bIsFiring() { return (*cast(uint*)(cast(size_t)cast(void*)this + 784) & 0x1) != 0; }
		bool m_bIsFiring(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 784) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 784) &= ~0x1; } return val; }
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
