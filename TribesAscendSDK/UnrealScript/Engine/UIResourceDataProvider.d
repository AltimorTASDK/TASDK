module UnrealScript.Engine.UIResourceDataProvider;

import ScriptClasses;
import UnrealScript.Engine.UIPropertyDataProvider;
import UnrealScript.Core.UObject;

extern(C++) interface UIResourceDataProvider : UIPropertyDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.UIResourceDataProvider")); }
	private static __gshared UIResourceDataProvider mDefaultProperties;
	@property final static UIResourceDataProvider DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UIResourceDataProvider)("UIResourceDataProvider Engine.Default__UIResourceDataProvider")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mInitializeProvider;
		public @property static final ScriptFunction InitializeProvider() { return mInitializeProvider ? mInitializeProvider : (mInitializeProvider = ScriptObject.Find!(ScriptFunction)("Function Engine.UIResourceDataProvider.InitializeProvider")); }
	}
	@property final
	{
		auto ref
		{
			UObject.Pointer VfTable_IUIListElementCellProvider() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 116); }
			UObject.Pointer VfTable_IUIListElementProvider() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 112); }
		}
		bool bSkipDuringEnumeration() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x2) != 0; }
		bool bSkipDuringEnumeration(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x2; } return val; }
		bool bDataBindingPropertiesOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x1) != 0; }
		bool bDataBindingPropertiesOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x1; } return val; }
	}
	final void InitializeProvider(bool bIsEditor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIsEditor;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitializeProvider, params.ptr, cast(void*)0);
	}
}
