module UnrealScript.Engine.SoundNodeWaveParam;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundNode;

extern(C++) interface SoundNodeWaveParam : SoundNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SoundNodeWaveParam")()); }
	private static __gshared SoundNodeWaveParam mDefaultProperties;
	@property final static SoundNodeWaveParam DefaultProperties() { mixin(MGDPC!(SoundNodeWaveParam, "SoundNodeWaveParam Engine.Default__SoundNodeWaveParam")()); }
	@property final auto ref ScriptName WaveParameterName() { mixin(MGPC!("ScriptName", 76)()); }
}
