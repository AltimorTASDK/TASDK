module UnrealScript.Engine.SoundNodeAmbientNonLoop;

import ScriptClasses;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.SoundNodeAmbient;

extern(C++) interface SoundNodeAmbientNonLoop : SoundNodeAmbient
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SoundNodeAmbientNonLoop")); }
	private static __gshared SoundNodeAmbientNonLoop mDefaultProperties;
	@property final static SoundNodeAmbientNonLoop DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SoundNodeAmbientNonLoop)("SoundNodeAmbientNonLoop Engine.Default__SoundNodeAmbientNonLoop")); }
	@property final auto ref
	{
		DistributionFloat.RawDistributionFloat DelayTime() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 312); }
		float DelayMax() { return *cast(float*)(cast(size_t)cast(void*)this + 308); }
		float DelayMin() { return *cast(float*)(cast(size_t)cast(void*)this + 304); }
	}
}
