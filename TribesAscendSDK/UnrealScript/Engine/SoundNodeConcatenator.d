module UnrealScript.Engine.SoundNodeConcatenator;

import ScriptClasses;
import UnrealScript.Engine.SoundNode;

extern(C++) interface SoundNodeConcatenator : SoundNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SoundNodeConcatenator")); }
	private static __gshared SoundNodeConcatenator mDefaultProperties;
	@property final static SoundNodeConcatenator DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SoundNodeConcatenator)("SoundNodeConcatenator Engine.Default__SoundNodeConcatenator")); }
	@property final auto ref ScriptArray!(float) InputVolume() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 76); }
}
