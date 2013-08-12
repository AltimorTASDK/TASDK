module UnrealScript.Engine.InterpTrackAudioMaster;

import ScriptClasses;
import UnrealScript.Engine.InterpTrackVectorBase;

extern(C++) interface InterpTrackAudioMaster : InterpTrackVectorBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackAudioMaster")); }
}
