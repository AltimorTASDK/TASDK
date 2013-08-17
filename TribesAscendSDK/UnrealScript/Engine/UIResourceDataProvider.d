module UnrealScript.Engine.UIResourceDataProvider;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.UIPropertyDataProvider;
import UnrealScript.Core.UObject;

extern(C++) interface UIResourceDataProvider : UIPropertyDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.UIResourceDataProvider")()); }
	private static __gshared UIResourceDataProvider mDefaultProperties;
	@property final static UIResourceDataProvider DefaultProperties() { mixin(MGDPC!(UIResourceDataProvider, "UIResourceDataProvider Engine.Default__UIResourceDataProvider")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mInitializeProvider;
		public @property static final ScriptFunction InitializeProvider() { mixin(MGF!("mInitializeProvider", "Function Engine.UIResourceDataProvider.InitializeProvider")()); }
	}
	@property final
	{
		auto ref
		{
			UObject.Pointer VfTable_IUIListElementCellProvider() { mixin(MGPC!("UObject.Pointer", 116)()); }
			UObject.Pointer VfTable_IUIListElementProvider() { mixin(MGPC!("UObject.Pointer", 112)()); }
		}
		bool bSkipDuringEnumeration() { mixin(MGBPC!(120, 0x2)()); }
		bool bSkipDuringEnumeration(bool val) { mixin(MSBPC!(120, 0x2)()); }
		bool bDataBindingPropertiesOnly() { mixin(MGBPC!(120, 0x1)()); }
		bool bDataBindingPropertiesOnly(bool val) { mixin(MSBPC!(120, 0x1)()); }
	}
	final void InitializeProvider(bool bIsEditor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIsEditor;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitializeProvider, params.ptr, cast(void*)0);
	}
}
