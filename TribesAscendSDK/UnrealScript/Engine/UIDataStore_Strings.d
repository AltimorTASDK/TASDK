module UnrealScript.Engine.UIDataStore_Strings;

import ScriptClasses;
import UnrealScript.Engine.UIDataStore_StringBase;
import UnrealScript.Engine.UIConfigFileProvider;

extern(C++) interface UIDataStore_Strings : UIDataStore_StringBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.UIDataStore_Strings")); }
	@property final auto ref ScriptArray!(UIConfigFileProvider) LocFileProviders() { return *cast(ScriptArray!(UIConfigFileProvider)*)(cast(size_t)cast(void*)this + 120); }
}
