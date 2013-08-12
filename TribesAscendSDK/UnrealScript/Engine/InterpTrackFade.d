module UnrealScript.Engine.InterpTrackFade;

import ScriptClasses;
import UnrealScript.Engine.InterpTrackFloatBase;

extern(C++) interface InterpTrackFade : InterpTrackFloatBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackFade")); }
	@property final
	{
		bool bPersistFade() { return (*cast(uint*)(cast(size_t)cast(void*)this + 148) & 0x1) != 0; }
		bool bPersistFade(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 148) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 148) &= ~0x1; } return val; }
	}
}
