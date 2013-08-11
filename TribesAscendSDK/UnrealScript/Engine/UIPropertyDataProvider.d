module UnrealScript.Engine.UIPropertyDataProvider;

import ScriptClasses;
import UnrealScript.Core.Property;
import UnrealScript.Engine.UIRoot;
import UnrealScript.Engine.UIDataProvider;

extern(C++) interface UIPropertyDataProvider : UIDataProvider
{
	public @property final auto ref ScriptArray!(ScriptClass) ComplexPropertyTypes() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 88); }
	final bool CanSupportComplexPropertyType(Property UnsupportedProperty)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Property*)params.ptr = UnsupportedProperty;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22596], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool GetCustomPropertyValue(UIRoot.UIProviderScriptFieldValue* PropertyValue, int ArrayIndex)
	{
		ubyte params[92];
		params[] = 0;
		*cast(UIRoot.UIProviderScriptFieldValue*)params.ptr = *PropertyValue;
		*cast(int*)&params[84] = ArrayIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22599], params.ptr, cast(void*)0);
		*PropertyValue = *cast(UIRoot.UIProviderScriptFieldValue*)params.ptr;
		return *cast(bool*)&params[88];
	}
}
