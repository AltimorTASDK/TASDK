module UnrealScript.Engine.SoundNodeDelay;

import ScriptClasses;
import UnrealScript.Engine.SoundNode;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface SoundNodeDelay : SoundNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SoundNodeDelay")); }
	private static __gshared SoundNodeDelay mDefaultProperties;
	@property final static SoundNodeDelay DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SoundNodeDelay)("SoundNodeDelay Engine.Default__SoundNodeDelay")); }
	@property final auto ref
	{
		DistributionFloat.RawDistributionFloat DelayDuration() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 84); }
		float DelayMax() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
		float DelayMin() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
	}
}
