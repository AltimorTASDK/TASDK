module UnrealScript.UnrealEd.AnalyzeCookedTextureSingleUsageCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface AnalyzeCookedTextureSingleUsageCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.AnalyzeCookedTextureSingleUsageCommandlet")); }
	private static __gshared AnalyzeCookedTextureSingleUsageCommandlet mDefaultProperties;
	@property final static AnalyzeCookedTextureSingleUsageCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AnalyzeCookedTextureSingleUsageCommandlet)("AnalyzeCookedTextureSingleUsageCommandlet UnrealEd.Default__AnalyzeCookedTextureSingleUsageCommandlet")); }
}
