module UnrealScript.Engine.UIPropertyDataProvider;

import ScriptClasses;
import UnrealScript.Core.Property;
import UnrealScript.Engine.UIRoot;
import UnrealScript.Engine.UIDataProvider;

extern(C++) interface UIPropertyDataProvider : UIDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.UIPropertyDataProvider")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mCanSupportComplexPropertyType;
			ScriptFunction mGetCustomPropertyValue;
		}
		public @property static final
		{
			ScriptFunction CanSupportComplexPropertyType() { return mCanSupportComplexPropertyType ? mCanSupportComplexPropertyType : (mCanSupportComplexPropertyType = ScriptObject.Find!(ScriptFunction)("Function Engine.UIPropertyDataProvider.CanSupportComplexPropertyType")); }
			ScriptFunction GetCustomPropertyValue() { return mGetCustomPropertyValue ? mGetCustomPropertyValue : (mGetCustomPropertyValue = ScriptObject.Find!(ScriptFunction)("Function Engine.UIPropertyDataProvider.GetCustomPropertyValue")); }
		}
	}
	@property final auto ref ScriptArray!(ScriptClass) ComplexPropertyTypes() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 88); }
final:
	bool CanSupportComplexPropertyType(Property UnsupportedProperty)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Property*)params.ptr = UnsupportedProperty;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanSupportComplexPropertyType, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool GetCustomPropertyValue(UIRoot.UIProviderScriptFieldValue* PropertyValue, int ArrayIndex)
	{
		ubyte params[92];
		params[] = 0;
		*cast(UIRoot.UIProviderScriptFieldValue*)params.ptr = *PropertyValue;
		*cast(int*)&params[84] = ArrayIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCustomPropertyValue, params.ptr, cast(void*)0);
		*PropertyValue = *cast(UIRoot.UIProviderScriptFieldValue*)params.ptr;
		return *cast(bool*)&params[88];
	}
}
