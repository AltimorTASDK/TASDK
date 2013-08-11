module UnrealScript.Engine.K2Node_MemberVar;

import ScriptClasses;
import UnrealScript.Engine.K2Connector;
import UnrealScript.Engine.K2Node_Code;

extern(C++) interface K2Node_MemberVar : K2Node_Code
{
public extern(D):
	@property final auto ref
	{
		ScriptString VarName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 96); }
		K2Connector.EK2ConnectorType VarType() { return *cast(K2Connector.EK2ConnectorType*)(cast(size_t)cast(void*)this + 92); }
	}
}
