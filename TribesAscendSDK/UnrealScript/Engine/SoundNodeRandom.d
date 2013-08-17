module UnrealScript.Engine.SoundNodeRandom;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundNode;

extern(C++) interface SoundNodeRandom : SoundNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SoundNodeRandom")()); }
	private static __gshared SoundNodeRandom mDefaultProperties;
	@property final static SoundNodeRandom DefaultProperties() { mixin(MGDPC!(SoundNodeRandom, "SoundNodeRandom Engine.Default__SoundNodeRandom")()); }
	@property final
	{
		auto ref
		{
			ScriptArray!(float) Weights() { mixin(MGPC!(ScriptArray!(float), 76)()); }
			ScriptArray!(bool) HasBeenUsed() { mixin(MGPC!(ScriptArray!(bool), 92)()); }
			int NumRandomUsed() { mixin(MGPC!(int, 104)()); }
		}
		bool bRandomizeWithoutReplacement() { mixin(MGBPC!(88, 0x1)()); }
		bool bRandomizeWithoutReplacement(bool val) { mixin(MSBPC!(88, 0x1)()); }
	}
}
