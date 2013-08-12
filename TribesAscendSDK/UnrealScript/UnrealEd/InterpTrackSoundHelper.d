module UnrealScript.UnrealEd.InterpTrackSoundHelper;

import ScriptClasses;
import UnrealScript.UnrealEd.InterpTrackHelper;

extern(C++) interface InterpTrackSoundHelper : InterpTrackHelper
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.InterpTrackSoundHelper")); }
	private static __gshared InterpTrackSoundHelper mDefaultProperties;
	@property final static InterpTrackSoundHelper DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackSoundHelper)("InterpTrackSoundHelper UnrealEd.Default__InterpTrackSoundHelper")); }
}
