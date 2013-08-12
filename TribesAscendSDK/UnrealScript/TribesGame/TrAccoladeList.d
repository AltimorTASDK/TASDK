module UnrealScript.TribesGame.TrAccoladeList;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface TrAccoladeList : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccoladeList")); }
	private static __gshared TrAccoladeList mDefaultProperties;
	@property final static TrAccoladeList DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccoladeList)("TrAccoladeList TribesGame.Default__TrAccoladeList")); }
	@property final auto ref ScriptArray!(ScriptString) accoladeList() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 60); }
}
