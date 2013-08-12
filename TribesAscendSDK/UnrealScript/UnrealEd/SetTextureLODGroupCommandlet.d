module UnrealScript.UnrealEd.SetTextureLODGroupCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface SetTextureLODGroupCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.SetTextureLODGroupCommandlet")); }
	private static __gshared SetTextureLODGroupCommandlet mDefaultProperties;
	@property final static SetTextureLODGroupCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SetTextureLODGroupCommandlet)("SetTextureLODGroupCommandlet UnrealEd.Default__SetTextureLODGroupCommandlet")); }
}
