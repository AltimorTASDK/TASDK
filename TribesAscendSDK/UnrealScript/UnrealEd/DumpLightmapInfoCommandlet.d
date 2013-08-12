module UnrealScript.UnrealEd.DumpLightmapInfoCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface DumpLightmapInfoCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.DumpLightmapInfoCommandlet")); }
	private static __gshared DumpLightmapInfoCommandlet mDefaultProperties;
	@property final static DumpLightmapInfoCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(DumpLightmapInfoCommandlet)("DumpLightmapInfoCommandlet UnrealEd.Default__DumpLightmapInfoCommandlet")); }
}
