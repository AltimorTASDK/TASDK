module UnrealScript.UDKBase.UDKAIDecisionComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorComponent;

extern(C++) interface UDKAIDecisionComponent : ActorComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKAIDecisionComponent")()); }
	private static __gshared UDKAIDecisionComponent mDefaultProperties;
	@property final static UDKAIDecisionComponent DefaultProperties() { mixin(MGDPC!(UDKAIDecisionComponent, "UDKAIDecisionComponent UDKBase.Default__UDKAIDecisionComponent")()); }
	@property final
	{
		bool bTriggered() { mixin(MGBPC!(88, 0x1)()); }
		bool bTriggered(bool val) { mixin(MSBPC!(88, 0x1)()); }
	}
}
