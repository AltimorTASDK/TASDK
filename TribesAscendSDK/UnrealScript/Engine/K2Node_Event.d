module UnrealScript.Engine.K2Node_Event;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.K2Node_Code;
import UnrealScript.Core.Function;

extern(C++) interface K2Node_Event : K2Node_Code
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.K2Node_Event")()); }
	private static __gshared K2Node_Event mDefaultProperties;
	@property final static K2Node_Event DefaultProperties() { mixin(MGDPC!(K2Node_Event, "K2Node_Event Engine.Default__K2Node_Event")()); }
	@property final auto ref
	{
		// WARNING: Property 'Function' has the same name as a defined type!
		ScriptString EventName() { mixin(MGPC!(ScriptString, 92)()); }
	}
}
