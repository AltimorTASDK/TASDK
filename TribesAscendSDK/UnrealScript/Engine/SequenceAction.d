module UnrealScript.Engine.SequenceAction;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SequenceOp;

extern(C++) interface SequenceAction : SequenceOp
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SequenceAction")()); }
	private static __gshared SequenceAction mDefaultProperties;
	@property final static SequenceAction DefaultProperties() { mixin(MGDPC!(SequenceAction, "SequenceAction Engine.Default__SequenceAction")()); }
	@property final
	{
		auto ref
		{
			ScriptArray!(UObject) Targets() { mixin(MGPC!("ScriptArray!(UObject)", 220)()); }
			ScriptName HandlerName() { mixin(MGPC!("ScriptName", 208)()); }
		}
		bool bCallHandler() { mixin(MGBPC!(216, 0x1)()); }
		bool bCallHandler(bool val) { mixin(MSBPC!(216, 0x1)()); }
	}
}
