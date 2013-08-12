module UnrealScript.UnrealEd.PrecompileShadersCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface PrecompileShadersCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.PrecompileShadersCommandlet")); }
	private static __gshared PrecompileShadersCommandlet mDefaultProperties;
	@property final static PrecompileShadersCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PrecompileShadersCommandlet)("PrecompileShadersCommandlet UnrealEd.Default__PrecompileShadersCommandlet")); }
}
