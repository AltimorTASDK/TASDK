module UnrealScript.GFxUI.GFxRawData;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface GFxRawData : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GFxUI.GFxRawData")); }
	@property final auto ref
	{
		ScriptArray!(ubyte) RawData() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 60); }
		ScriptArray!(ScriptString) ReferencedSwfs() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 72); }
		ScriptArray!(UObject) References() { return *cast(ScriptArray!(UObject)*)(cast(size_t)cast(void*)this + 84); }
		ScriptArray!(UObject) UserReferences() { return *cast(ScriptArray!(UObject)*)(cast(size_t)cast(void*)this + 96); }
	}
}
