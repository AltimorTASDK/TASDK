module UnrealScript.Engine.SkelControlHandlebars;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface SkelControlHandlebars : SkelControlSingleBone
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SkelControlHandlebars")); }
	@property final
	{
		auto ref
		{
			int SteerWheelBoneIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 252); }
			ScriptName WheelBoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 240); }
			UObject.EAxis HandlebarRotateAxis() { return *cast(UObject.EAxis*)(cast(size_t)cast(void*)this + 237); }
			UObject.EAxis WheelRollAxis() { return *cast(UObject.EAxis*)(cast(size_t)cast(void*)this + 236); }
		}
		bool bInvertRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x1) != 0; }
		bool bInvertRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x1; } return val; }
	}
}
