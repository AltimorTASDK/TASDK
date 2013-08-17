module UnrealScript.Engine.AIGatherNodeBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.K2NodeBase;

extern(C++) interface AIGatherNodeBase : K2NodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AIGatherNodeBase")()); }
	private static __gshared AIGatherNodeBase mDefaultProperties;
	@property final static AIGatherNodeBase DefaultProperties() { mixin(MGDPC!(AIGatherNodeBase, "AIGatherNodeBase Engine.Default__AIGatherNodeBase")()); }
	@property final auto ref
	{
		ScriptString NodeName() { mixin(MGPC!(ScriptString, 96)()); }
		float LastUpdateTime() { mixin(MGPC!(float, 92)()); }
	}
}
