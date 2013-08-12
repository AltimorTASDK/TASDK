module UnrealScript.Engine.PathBlockingVolume;

import ScriptClasses;
import UnrealScript.Engine.Volume;

extern(C++) interface PathBlockingVolume : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PathBlockingVolume")); }
	private static __gshared PathBlockingVolume mDefaultProperties;
	@property final static PathBlockingVolume DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PathBlockingVolume)("PathBlockingVolume Engine.Default__PathBlockingVolume")); }
}
