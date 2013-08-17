module UnrealScript.Engine.SoundNodeMature;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundNode;

extern(C++) interface SoundNodeMature : SoundNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SoundNodeMature")()); }
	private static __gshared SoundNodeMature mDefaultProperties;
	@property final static SoundNodeMature DefaultProperties() { mixin(MGDPC!(SoundNodeMature, "SoundNodeMature Engine.Default__SoundNodeMature")()); }
}
