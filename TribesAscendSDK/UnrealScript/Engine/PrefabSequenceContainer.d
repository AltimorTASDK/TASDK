module UnrealScript.Engine.PrefabSequenceContainer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Sequence;

extern(C++) interface PrefabSequenceContainer : Sequence
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.PrefabSequenceContainer")); }
	private static __gshared PrefabSequenceContainer mDefaultProperties;
	@property final static PrefabSequenceContainer DefaultProperties() { mixin(MGDPC("PrefabSequenceContainer", "PrefabSequenceContainer Engine.Default__PrefabSequenceContainer")); }
}
