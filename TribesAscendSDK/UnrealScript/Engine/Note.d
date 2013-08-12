module UnrealScript.Engine.Note;

import ScriptClasses;
import UnrealScript.Engine.Actor;

extern(C++) interface Note : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Note")); }
	private static __gshared Note mDefaultProperties;
	@property final static Note DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(Note)("Note Engine.Default__Note")); }
	@property final auto ref ScriptString Text() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 476); }
}
