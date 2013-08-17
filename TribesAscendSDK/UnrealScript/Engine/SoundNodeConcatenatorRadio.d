module UnrealScript.Engine.SoundNodeConcatenatorRadio;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundNode;

extern(C++) interface SoundNodeConcatenatorRadio : SoundNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SoundNodeConcatenatorRadio")); }
	private static __gshared SoundNodeConcatenatorRadio mDefaultProperties;
	@property final static SoundNodeConcatenatorRadio DefaultProperties() { mixin(MGDPC("SoundNodeConcatenatorRadio", "SoundNodeConcatenatorRadio Engine.Default__SoundNodeConcatenatorRadio")); }
}
