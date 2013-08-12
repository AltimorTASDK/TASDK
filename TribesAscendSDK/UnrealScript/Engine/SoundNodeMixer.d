module UnrealScript.Engine.SoundNodeMixer;

import ScriptClasses;
import UnrealScript.Engine.SoundNode;

extern(C++) interface SoundNodeMixer : SoundNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SoundNodeMixer")); }
	private static __gshared SoundNodeMixer mDefaultProperties;
	@property final static SoundNodeMixer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SoundNodeMixer)("SoundNodeMixer Engine.Default__SoundNodeMixer")); }
	@property final auto ref ScriptArray!(float) InputVolume() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 76); }
}
