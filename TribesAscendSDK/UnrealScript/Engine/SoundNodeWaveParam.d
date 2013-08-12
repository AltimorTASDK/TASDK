module UnrealScript.Engine.SoundNodeWaveParam;

import ScriptClasses;
import UnrealScript.Engine.SoundNode;

extern(C++) interface SoundNodeWaveParam : SoundNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SoundNodeWaveParam")); }
	@property final auto ref ScriptName WaveParameterName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 76); }
}
