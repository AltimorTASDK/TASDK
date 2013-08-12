module UnrealScript.Engine.SequenceFrameWrapped;

import ScriptClasses;
import UnrealScript.Engine.SequenceFrame;

extern(C++) interface SequenceFrameWrapped : SequenceFrame
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SequenceFrameWrapped")); }
	private static __gshared SequenceFrameWrapped mDefaultProperties;
	@property final static SequenceFrameWrapped DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SequenceFrameWrapped)("SequenceFrameWrapped Engine.Default__SequenceFrameWrapped")); }
}
