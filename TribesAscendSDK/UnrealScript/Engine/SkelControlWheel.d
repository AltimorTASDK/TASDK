module UnrealScript.Engine.SkelControlWheel;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface SkelControlWheel : SkelControlSingleBone
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SkelControlWheel")); }
	private static __gshared SkelControlWheel mDefaultProperties;
	@property final static SkelControlWheel DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SkelControlWheel)("SkelControlWheel Engine.Default__SkelControlWheel")); }
	@property final
	{
		auto ref
		{
			float WheelSteering() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
			UObject.EAxis WheelSteeringAxis() { return *cast(UObject.EAxis*)(cast(size_t)cast(void*)this + 249); }
			UObject.EAxis WheelRollAxis() { return *cast(UObject.EAxis*)(cast(size_t)cast(void*)this + 248); }
			float WheelRoll() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
			float WheelMaxRenderDisplacement() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
			float WheelDisplacement() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
		}
		bool bInvertWheelSteering() { return (*cast(uint*)(cast(size_t)cast(void*)this + 256) & 0x2) != 0; }
		bool bInvertWheelSteering(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 256) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 256) &= ~0x2; } return val; }
		bool bInvertWheelRoll() { return (*cast(uint*)(cast(size_t)cast(void*)this + 256) & 0x1) != 0; }
		bool bInvertWheelRoll(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 256) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 256) &= ~0x1; } return val; }
	}
}
