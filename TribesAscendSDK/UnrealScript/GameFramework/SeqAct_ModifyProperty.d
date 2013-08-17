module UnrealScript.GameFramework.SeqAct_ModifyProperty;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_ModifyProperty : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.SeqAct_ModifyProperty")()); }
	private static __gshared SeqAct_ModifyProperty mDefaultProperties;
	@property final static SeqAct_ModifyProperty DefaultProperties() { mixin(MGDPC!(SeqAct_ModifyProperty, "SeqAct_ModifyProperty GameFramework.Default__SeqAct_ModifyProperty")()); }
	struct PropertyInfo
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct GameFramework.SeqAct_ModifyProperty.PropertyInfo")()); }
		@property final
		{
			auto ref
			{
				ScriptString PropertyValue() { mixin(MGPS!(ScriptString, 12)()); }
				ScriptName PropertyName() { mixin(MGPS!(ScriptName, 0)()); }
			}
			bool bModifyProperty() { mixin(MGBPS!(8, 0x1)()); }
			bool bModifyProperty(bool val) { mixin(MSBPS!(8, 0x1)()); }
		}
	}
	@property final auto ref ScriptArray!(SeqAct_ModifyProperty.PropertyInfo) Properties() { mixin(MGPC!(ScriptArray!(SeqAct_ModifyProperty.PropertyInfo), 232)()); }
}
