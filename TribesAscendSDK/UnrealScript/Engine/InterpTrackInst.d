module UnrealScript.Engine.InterpTrackInst;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface InterpTrackInst : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackInst")); }
	private static __gshared InterpTrackInst mDefaultProperties;
	@property final static InterpTrackInst DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackInst)("InterpTrackInst Engine.Default__InterpTrackInst")); }
}
