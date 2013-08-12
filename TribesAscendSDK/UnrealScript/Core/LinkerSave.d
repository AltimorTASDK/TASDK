module UnrealScript.Core.LinkerSave;

import ScriptClasses;
import UnrealScript.Core.Linker;

extern(C++) interface LinkerSave : Linker
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Core.LinkerSave")); }
	private static __gshared LinkerSave mDefaultProperties;
	@property final static LinkerSave DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(LinkerSave)("LinkerSave Core.Default__LinkerSave")); }
}
