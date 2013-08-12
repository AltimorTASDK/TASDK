module UnrealScript.Engine.SoundNodeModulatorContinuous;

import ScriptClasses;
import UnrealScript.Engine.SoundNode;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface SoundNodeModulatorContinuous : SoundNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SoundNodeModulatorContinuous")); }
	@property final auto ref
	{
		DistributionFloat.RawDistributionFloat VolumeModulation() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 104); }
		DistributionFloat.RawDistributionFloat PitchModulation() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 76); }
	}
}
