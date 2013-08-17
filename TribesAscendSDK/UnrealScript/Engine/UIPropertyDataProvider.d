module UnrealScript.Engine.UIPropertyDataProvider;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Property;
import UnrealScript.Engine.UIRoot;
import UnrealScript.Engine.UIDataProvider;

extern(C++) interface UIPropertyDataProvider : UIDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.UIPropertyDataProvider")); }
	private static __gshared UIPropertyDataProvider mDefaultProperties;
	@property final static UIPropertyDataProvider DefaultProperties() { mixin(MGDPC("UIPropertyDataProvider", "UIPropertyDataProvider Engine.Default__UIPropertyDataProvider")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mCanSupportComplexPropertyType;
			ScriptFunction mGetCustomPropertyValue;
		}
		public @property static final
		{
			ScriptFunction CanSupportComplexPropertyType() { mixin(MGF("mCanSupportComplexPropertyType", "Function Engine.UIPropertyDataProvider.CanSupportComplexPropertyType")); }
			ScriptFunction GetCustomPropertyValue() { mixin(MGF("mGetCustomPropertyValue", "Function Engine.UIPropertyDataProvider.GetCustomPropertyValue")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(ScriptClass) ComplexPropertyTypes() { mixin(MGPC("ScriptArray!(ScriptClass)", 88)); }
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__CanSupportComplexPropertyType__Delegate'!
	}
final:
	bool CanSupportComplexPropertyType(Property UnsupportedProperty)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Property*)params.ptr = UnsupportedProperty;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanSupportComplexPropertyType, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool GetCustomPropertyValue(ref UIRoot.UIProviderScriptFieldValue PropertyValue, int* ArrayIndex = null)
	{
		ubyte params[92];
		params[] = 0;
		*cast(UIRoot.UIProviderScriptFieldValue*)params.ptr = PropertyValue;
		if (ArrayIndex !is null)
			*cast(int*)&params[84] = *ArrayIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCustomPropertyValue, params.ptr, cast(void*)0);
		PropertyValue = *cast(UIRoot.UIProviderScriptFieldValue*)params.ptr;
		return *cast(bool*)&params[88];
	}
}
