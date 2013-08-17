module UnrealScript.Engine.K2GraphBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.K2NodeBase;

extern(C++) interface K2GraphBase : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.K2GraphBase")()); }
	private static __gshared K2GraphBase mDefaultProperties;
	@property final static K2GraphBase DefaultProperties() { mixin(MGDPC!(K2GraphBase, "K2GraphBase Engine.Default__K2GraphBase")()); }
	@property final auto ref ScriptArray!(K2NodeBase) Nodes() { mixin(MGPC!("ScriptArray!(K2NodeBase)", 60)()); }
}
