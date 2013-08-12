module UnrealScript.Engine.SequenceFrameWrapped;

import ScriptClasses;
import UnrealScript.Engine.SequenceFrame;

extern(C++) interface SequenceFrameWrapped : SequenceFrame
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SequenceFrameWrapped")); }
}
