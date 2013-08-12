module UnrealScript.Engine.InterpTrackInstSkelControlScale;

import ScriptClasses;
import UnrealScript.Engine.InterpTrackInst;

extern(C++) interface InterpTrackInstSkelControlScale : InterpTrackInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackInstSkelControlScale")); }
}
