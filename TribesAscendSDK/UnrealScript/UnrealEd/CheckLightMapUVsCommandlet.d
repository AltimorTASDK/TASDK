module UnrealScript.UnrealEd.CheckLightMapUVsCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface CheckLightMapUVsCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.CheckLightMapUVsCommandlet")); }
	private static __gshared CheckLightMapUVsCommandlet mDefaultProperties;
	@property final static CheckLightMapUVsCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(CheckLightMapUVsCommandlet)("CheckLightMapUVsCommandlet UnrealEd.Default__CheckLightMapUVsCommandlet")); }
}
