module UnrealScript.Engine.InterpTrackInstFade;

import ScriptClasses;
import UnrealScript.Engine.InterpTrackInst;

extern(C++) interface InterpTrackInstFade : InterpTrackInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackInstFade")); }
	private static __gshared InterpTrackInstFade mDefaultProperties;
	@property final static InterpTrackInstFade DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackInstFade)("InterpTrackInstFade Engine.Default__InterpTrackInstFade")); }
}
