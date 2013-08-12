module UnrealScript.UnrealEd.ReplaceActorCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface ReplaceActorCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.ReplaceActorCommandlet")); }
	private static __gshared ReplaceActorCommandlet mDefaultProperties;
	@property final static ReplaceActorCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ReplaceActorCommandlet)("ReplaceActorCommandlet UnrealEd.Default__ReplaceActorCommandlet")); }
}
