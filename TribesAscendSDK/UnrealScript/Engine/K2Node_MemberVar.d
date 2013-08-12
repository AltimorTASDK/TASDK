module UnrealScript.Engine.K2Node_MemberVar;

import ScriptClasses;
import UnrealScript.Engine.K2Connector;
import UnrealScript.Engine.K2Node_Code;

extern(C++) interface K2Node_MemberVar : K2Node_Code
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.K2Node_MemberVar")); }
	private static __gshared K2Node_MemberVar mDefaultProperties;
	@property final static K2Node_MemberVar DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(K2Node_MemberVar)("K2Node_MemberVar Engine.Default__K2Node_MemberVar")); }
	@property final auto ref
	{
		ScriptString VarName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 96); }
		K2Connector.EK2ConnectorType VarType() { return *cast(K2Connector.EK2ConnectorType*)(cast(size_t)cast(void*)this + 92); }
	}
}
