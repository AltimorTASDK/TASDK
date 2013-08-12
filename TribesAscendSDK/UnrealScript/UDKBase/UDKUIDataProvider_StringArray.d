module UnrealScript.UDKBase.UDKUIDataProvider_StringArray;

import ScriptClasses;
import UnrealScript.UDKBase.UDKUIDataProvider_SimpleElementProvider;

extern(C++) interface UDKUIDataProvider_StringArray : UDKUIDataProvider_SimpleElementProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKUIDataProvider_StringArray")); }
	private static __gshared UDKUIDataProvider_StringArray mDefaultProperties;
	@property final static UDKUIDataProvider_StringArray DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UDKUIDataProvider_StringArray)("UDKUIDataProvider_StringArray UDKBase.Default__UDKUIDataProvider_StringArray")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetElementCount;
		public @property static final ScriptFunction GetElementCount() { return mGetElementCount ? mGetElementCount : (mGetElementCount = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKUIDataProvider_StringArray.GetElementCount")); }
	}
	@property final auto ref ScriptArray!(ScriptString) Strings() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 92); }
	final int GetElementCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetElementCount, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
