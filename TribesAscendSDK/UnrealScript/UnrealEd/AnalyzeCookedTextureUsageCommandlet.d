module UnrealScript.UnrealEd.AnalyzeCookedTextureUsageCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface AnalyzeCookedTextureUsageCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.AnalyzeCookedTextureUsageCommandlet")); }
	private static __gshared AnalyzeCookedTextureUsageCommandlet mDefaultProperties;
	@property final static AnalyzeCookedTextureUsageCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AnalyzeCookedTextureUsageCommandlet)("AnalyzeCookedTextureUsageCommandlet UnrealEd.Default__AnalyzeCookedTextureUsageCommandlet")); }
}
