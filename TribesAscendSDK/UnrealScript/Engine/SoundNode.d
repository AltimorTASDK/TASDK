module UnrealScript.Engine.SoundNode;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface SoundNode : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SoundNode")()); }
	private static __gshared SoundNode mDefaultProperties;
	@property final static SoundNode DefaultProperties() { mixin(MGDPC!(SoundNode, "SoundNode Engine.Default__SoundNode")()); }
	@property final auto ref
	{
		ScriptArray!(SoundNode) ChildNodes() { mixin(MGPC!("ScriptArray!(SoundNode)", 64)()); }
		int NodeUpdateHint() { mixin(MGPC!("int", 60)()); }
	}
}
