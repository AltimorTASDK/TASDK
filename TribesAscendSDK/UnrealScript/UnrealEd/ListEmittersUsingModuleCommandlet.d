module UnrealScript.UnrealEd.ListEmittersUsingModuleCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface ListEmittersUsingModuleCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.ListEmittersUsingModuleCommandlet")); }
	private static __gshared ListEmittersUsingModuleCommandlet mDefaultProperties;
	@property final static ListEmittersUsingModuleCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ListEmittersUsingModuleCommandlet)("ListEmittersUsingModuleCommandlet UnrealEd.Default__ListEmittersUsingModuleCommandlet")); }
}
