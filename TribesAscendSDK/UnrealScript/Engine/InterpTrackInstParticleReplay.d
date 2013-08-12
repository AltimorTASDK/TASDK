module UnrealScript.Engine.InterpTrackInstParticleReplay;

import ScriptClasses;
import UnrealScript.Engine.InterpTrackInst;

extern(C++) interface InterpTrackInstParticleReplay : InterpTrackInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackInstParticleReplay")); }
	@property final auto ref float LastUpdatePosition() { return *cast(float*)(cast(size_t)cast(void*)this + 60); }
}
