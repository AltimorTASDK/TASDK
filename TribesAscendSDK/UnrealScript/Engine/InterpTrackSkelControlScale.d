module UnrealScript.Engine.InterpTrackSkelControlScale;

import ScriptClasses;
import UnrealScript.Engine.InterpTrackFloatBase;

extern(C++) interface InterpTrackSkelControlScale : InterpTrackFloatBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackSkelControlScale")); }
	@property final auto ref ScriptName SkelControlName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 148); }
}
