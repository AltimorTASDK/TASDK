module UnrealScript.Engine.MassiveLODOverrideVolume;

import ScriptClasses;
import UnrealScript.Engine.Volume;

extern(C++) interface MassiveLODOverrideVolume : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MassiveLODOverrideVolume")); }
	private static __gshared MassiveLODOverrideVolume mDefaultProperties;
	@property final static MassiveLODOverrideVolume DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MassiveLODOverrideVolume)("MassiveLODOverrideVolume Engine.Default__MassiveLODOverrideVolume")); }
}
