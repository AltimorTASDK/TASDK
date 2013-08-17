module UnrealScript.Engine.SequenceFrameWrapped;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceFrame;

extern(C++) interface SequenceFrameWrapped : SequenceFrame
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SequenceFrameWrapped")); }
	private static __gshared SequenceFrameWrapped mDefaultProperties;
	@property final static SequenceFrameWrapped DefaultProperties() { mixin(MGDPC("SequenceFrameWrapped", "SequenceFrameWrapped Engine.Default__SequenceFrameWrapped")); }
}
