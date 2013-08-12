module UnrealScript.Engine.SaveGameSummary;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface SaveGameSummary : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SaveGameSummary")); }
	@property final auto ref
	{
		ScriptString Description() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 68); }
		ScriptName BaseLevel() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 60); }
	}
}
