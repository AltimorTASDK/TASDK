module UnrealScript.TribesGame.TrFamilyInfoList;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface TrFamilyInfoList : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfoList")); }
	@property final auto ref ScriptArray!(ScriptString) ClassList() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 60); }
}
