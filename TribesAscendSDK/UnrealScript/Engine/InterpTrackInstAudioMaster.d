module UnrealScript.Engine.InterpTrackInstAudioMaster;

import ScriptClasses;
import UnrealScript.Engine.InterpTrackInst;

extern(C++) interface InterpTrackInstAudioMaster : InterpTrackInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackInstAudioMaster")); }
	private static __gshared InterpTrackInstAudioMaster mDefaultProperties;
	@property final static InterpTrackInstAudioMaster DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackInstAudioMaster)("InterpTrackInstAudioMaster Engine.Default__InterpTrackInstAudioMaster")); }
}
