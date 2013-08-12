module UnrealScript.TribesGame.GFxTrAction;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.GFxTrPage;

extern(C++) interface GFxTrAction : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrAction")); }
	private static __gshared GFxTrAction mDefaultProperties;
	@property final static GFxTrAction DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxTrAction)("GFxTrAction TribesGame.Default__GFxTrAction")); }
	@property final auto ref
	{
		GFxTrPage ActionPage() { return *cast(GFxTrPage*)(cast(size_t)cast(void*)this + 80); }
		ScriptString ActionString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 68); }
		int ActionNumber() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
		int ActionIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
	}
}
