module UnrealScript.Engine.InterpTrackMorphWeight;

import ScriptClasses;
import UnrealScript.Engine.InterpTrackFloatBase;

extern(C++) interface InterpTrackMorphWeight : InterpTrackFloatBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackMorphWeight")); }
	@property final auto ref ScriptName MorphNodeName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 148); }
}
