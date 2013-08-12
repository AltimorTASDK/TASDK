module UnrealScript.UnrealEd.AnalyzeShaderCachesCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface AnalyzeShaderCachesCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.AnalyzeShaderCachesCommandlet")); }
	private static __gshared AnalyzeShaderCachesCommandlet mDefaultProperties;
	@property final static AnalyzeShaderCachesCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AnalyzeShaderCachesCommandlet)("AnalyzeShaderCachesCommandlet UnrealEd.Default__AnalyzeShaderCachesCommandlet")); }
}
