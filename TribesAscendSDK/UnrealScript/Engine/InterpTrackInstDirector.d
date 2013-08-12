module UnrealScript.Engine.InterpTrackInstDirector;

import ScriptClasses;
import UnrealScript.Engine.InterpTrackInst;
import UnrealScript.Engine.Actor;

extern(C++) interface InterpTrackInstDirector : InterpTrackInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackInstDirector")); }
	@property final auto ref Actor OldViewTarget() { return *cast(Actor*)(cast(size_t)cast(void*)this + 60); }
}
