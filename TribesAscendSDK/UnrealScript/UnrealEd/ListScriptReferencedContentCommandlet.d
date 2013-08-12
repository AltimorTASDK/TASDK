module UnrealScript.UnrealEd.ListScriptReferencedContentCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface ListScriptReferencedContentCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.ListScriptReferencedContentCommandlet")); }
	private static __gshared ListScriptReferencedContentCommandlet mDefaultProperties;
	@property final static ListScriptReferencedContentCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ListScriptReferencedContentCommandlet)("ListScriptReferencedContentCommandlet UnrealEd.Default__ListScriptReferencedContentCommandlet")); }
}
