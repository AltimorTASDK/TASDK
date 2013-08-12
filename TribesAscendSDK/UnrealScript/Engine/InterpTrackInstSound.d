module UnrealScript.Engine.InterpTrackInstSound;

import ScriptClasses;
import UnrealScript.Engine.InterpTrackInst;

extern(C++) interface InterpTrackInstSound : InterpTrackInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackInstSound")); }
	@property final auto ref float LastUpdatePosition() { return *cast(float*)(cast(size_t)cast(void*)this + 60); }
}
