module UnrealScript.Engine.SoundNodeConcatenator;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundNode;

extern(C++) interface SoundNodeConcatenator : SoundNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SoundNodeConcatenator")()); }
	private static __gshared SoundNodeConcatenator mDefaultProperties;
	@property final static SoundNodeConcatenator DefaultProperties() { mixin(MGDPC!(SoundNodeConcatenator, "SoundNodeConcatenator Engine.Default__SoundNodeConcatenator")()); }
	@property final auto ref ScriptArray!(float) InputVolume() { mixin(MGPC!(ScriptArray!(float), 76)()); }
}
