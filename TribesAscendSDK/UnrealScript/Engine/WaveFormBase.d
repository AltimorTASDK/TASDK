module UnrealScript.Engine.WaveFormBase;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ForceFeedbackWaveform;

extern(C++) interface WaveFormBase : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.WaveFormBase")); }
	@property final auto ref ForceFeedbackWaveform TheWaveForm() { return *cast(ForceFeedbackWaveform*)(cast(size_t)cast(void*)this + 60); }
}
