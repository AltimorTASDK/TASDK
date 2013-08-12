module UnrealScript.Engine.SoundNodeLooping;

import ScriptClasses;
import UnrealScript.Engine.SoundNode;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface SoundNodeLooping : SoundNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SoundNodeLooping")); }
	private static __gshared SoundNodeLooping mDefaultProperties;
	@property final static SoundNodeLooping DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SoundNodeLooping)("SoundNodeLooping Engine.Default__SoundNodeLooping")); }
	@property final
	{
		auto ref
		{
			DistributionFloat.RawDistributionFloat LoopCount() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 88); }
			float LoopCountMax() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
			float LoopCountMin() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
		}
		bool bLoopIndefinitely() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x1) != 0; }
		bool bLoopIndefinitely(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x1; } return val; }
	}
}
