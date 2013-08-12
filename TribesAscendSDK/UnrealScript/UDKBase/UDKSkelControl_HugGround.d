module UnrealScript.UDKBase.UDKSkelControl_HugGround;

import ScriptClasses;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface UDKSkelControl_HugGround : SkelControlSingleBone
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKSkelControl_HugGround")); }
	private static __gshared UDKSkelControl_HugGround mDefaultProperties;
	@property final static UDKSkelControl_HugGround DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UDKSkelControl_HugGround)("UDKSkelControl_HugGround UDKBase.Default__UDKSkelControl_HugGround")); }
	@property final
	{
		auto ref
		{
			float LastUpdateTime() { return *cast(float*)(cast(size_t)cast(void*)this + 268); }
			float MaxTranslationPerSec() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
			float ZDistFromParentBone() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
			float XYDistFromParentBone() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
			ScriptName ParentBone() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 244); }
			float MaxDist() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
			float DesiredGroundDist() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
		}
		bool bOppositeFromParent() { return (*cast(uint*)(cast(size_t)cast(void*)this + 252) & 0x1) != 0; }
		bool bOppositeFromParent(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 252) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 252) &= ~0x1; } return val; }
	}
}
