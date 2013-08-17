module UnrealScript.Engine.SoundNodeMixer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundNode;

extern(C++) interface SoundNodeMixer : SoundNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SoundNodeMixer")()); }
	private static __gshared SoundNodeMixer mDefaultProperties;
	@property final static SoundNodeMixer DefaultProperties() { mixin(MGDPC!(SoundNodeMixer, "SoundNodeMixer Engine.Default__SoundNodeMixer")()); }
	@property final auto ref ScriptArray!(float) InputVolume() { mixin(MGPC!("ScriptArray!(float)", 76)()); }
}
