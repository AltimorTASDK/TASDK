module UnrealScript.Engine.K2Connector;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.K2NodeBase;

extern(C++) interface K2Connector : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.K2Connector")()); }
	private static __gshared K2Connector mDefaultProperties;
	@property final static K2Connector DefaultProperties() { mixin(MGDPC!(K2Connector, "K2Connector Engine.Default__K2Connector")()); }
	enum EK2ConnectorType : ubyte
	{
		K2CT_Bool = 0,
		K2CT_Int = 1,
		K2CT_Float = 2,
		K2CT_Vector = 3,
		K2CT_Rotator = 4,
		K2CT_String = 5,
		K2CT_Object = 6,
		K2CT_Exec = 7,
		K2CT_Unsupported = 8,
		K2CT_MAX = 9,
	}
	enum EK2ConnectorDirection : ubyte
	{
		K2CD_Input = 0,
		K2CD_Output = 1,
		K2CD_MAX = 2,
	}
	@property final auto ref
	{
		K2Connector.EK2ConnectorType Type() { mixin(MGPC!("K2Connector.EK2ConnectorType", 76)()); }
		ScriptString ConnName() { mixin(MGPC!("ScriptString", 64)()); }
		K2NodeBase OwningNode() { mixin(MGPC!("K2NodeBase", 60)()); }
	}
}
