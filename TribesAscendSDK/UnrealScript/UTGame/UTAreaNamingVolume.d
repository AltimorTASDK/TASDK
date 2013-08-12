module UnrealScript.UTGame.UTAreaNamingVolume;

import ScriptClasses;
import UnrealScript.Engine.Volume;

extern(C++) interface UTAreaNamingVolume : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTAreaNamingVolume")); }
	private static __gshared UTAreaNamingVolume mDefaultProperties;
	@property final static UTAreaNamingVolume DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTAreaNamingVolume)("UTAreaNamingVolume UTGame.Default__UTAreaNamingVolume")); }
}
