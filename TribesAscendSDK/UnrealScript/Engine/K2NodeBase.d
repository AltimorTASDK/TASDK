module UnrealScript.Engine.K2NodeBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.K2Output;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.K2Input;

extern(C++) interface K2NodeBase : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.K2NodeBase")()); }
	private static __gshared K2NodeBase mDefaultProperties;
	@property final static K2NodeBase DefaultProperties() { mixin(MGDPC!(K2NodeBase, "K2NodeBase Engine.Default__K2NodeBase")()); }
	@property final auto ref
	{
		ScriptArray!(K2Input) Inputs() { mixin(MGPC!(ScriptArray!(K2Input), 60)()); }
		ScriptArray!(K2Output) Outputs() { mixin(MGPC!(ScriptArray!(K2Output), 72)()); }
		int NodePosY() { mixin(MGPC!(int, 88)()); }
		int NodePosX() { mixin(MGPC!(int, 84)()); }
	}
}
