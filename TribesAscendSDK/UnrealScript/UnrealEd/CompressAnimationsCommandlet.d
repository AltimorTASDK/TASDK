module UnrealScript.UnrealEd.CompressAnimationsCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface CompressAnimationsCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.CompressAnimationsCommandlet")); }
	private static __gshared CompressAnimationsCommandlet mDefaultProperties;
	@property final static CompressAnimationsCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(CompressAnimationsCommandlet)("CompressAnimationsCommandlet UnrealEd.Default__CompressAnimationsCommandlet")); }
}
