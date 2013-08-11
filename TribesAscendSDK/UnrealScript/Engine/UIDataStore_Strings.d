module UnrealScript.Engine.UIDataStore_Strings;

import ScriptClasses;
import UnrealScript.Engine.UIDataStore_StringBase;
import UnrealScript.Engine.UIConfigFileProvider;

extern(C++) interface UIDataStore_Strings : UIDataStore_StringBase
{
public extern(D):
	@property final auto ref ScriptArray!(UIConfigFileProvider) LocFileProviders() { return *cast(ScriptArray!(UIConfigFileProvider)*)(cast(size_t)cast(void*)this + 120); }
}
