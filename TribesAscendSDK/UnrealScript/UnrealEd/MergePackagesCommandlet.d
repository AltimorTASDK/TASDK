module UnrealScript.UnrealEd.MergePackagesCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface MergePackagesCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.MergePackagesCommandlet")); }
	private static __gshared MergePackagesCommandlet mDefaultProperties;
	@property final static MergePackagesCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MergePackagesCommandlet)("MergePackagesCommandlet UnrealEd.Default__MergePackagesCommandlet")); }
}
