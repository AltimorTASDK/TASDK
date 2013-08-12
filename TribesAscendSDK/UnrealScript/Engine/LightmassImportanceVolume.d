module UnrealScript.Engine.LightmassImportanceVolume;

import ScriptClasses;
import UnrealScript.Engine.Volume;

extern(C++) interface LightmassImportanceVolume : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.LightmassImportanceVolume")); }
}
