module UnrealScript.Engine.K2Node_MemberVar;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.K2Connector;
import UnrealScript.Engine.K2Node_Code;

extern(C++) interface K2Node_MemberVar : K2Node_Code
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.K2Node_MemberVar")()); }
	private static __gshared K2Node_MemberVar mDefaultProperties;
	@property final static K2Node_MemberVar DefaultProperties() { mixin(MGDPC!(K2Node_MemberVar, "K2Node_MemberVar Engine.Default__K2Node_MemberVar")()); }
	@property final auto ref
	{
		ScriptString VarName() { mixin(MGPC!("ScriptString", 96)()); }
		K2Connector.EK2ConnectorType VarType() { mixin(MGPC!("K2Connector.EK2ConnectorType", 92)()); }
	}
}
