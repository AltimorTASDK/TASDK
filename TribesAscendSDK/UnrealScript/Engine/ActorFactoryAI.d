module UnrealScript.Engine.ActorFactoryAI;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorFactory;

extern(C++) interface ActorFactoryAI : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ActorFactoryAI")()); }
	private static __gshared ActorFactoryAI mDefaultProperties;
	@property final static ActorFactoryAI DefaultProperties() { mixin(MGDPC!(ActorFactoryAI, "ActorFactoryAI Engine.Default__ActorFactoryAI")()); }
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptClass) InventoryList() { mixin(MGPC!(ScriptArray!(ScriptClass), 116)()); }
			int TeamIndex() { mixin(MGPC!(int, 128)()); }
			ScriptString PawnName() { mixin(MGPC!(ScriptString, 100)()); }
			ScriptClass PawnClass() { mixin(MGPC!(ScriptClass, 96)()); }
			ScriptClass ControllerClass() { mixin(MGPC!(ScriptClass, 92)()); }
		}
		bool bGiveDefaultInventory() { mixin(MGBPC!(112, 0x1)()); }
		bool bGiveDefaultInventory(bool val) { mixin(MSBPC!(112, 0x1)()); }
	}
}
