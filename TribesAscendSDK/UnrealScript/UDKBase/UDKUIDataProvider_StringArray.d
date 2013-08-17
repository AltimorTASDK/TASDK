module UnrealScript.UDKBase.UDKUIDataProvider_StringArray;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKUIDataProvider_SimpleElementProvider;

extern(C++) interface UDKUIDataProvider_StringArray : UDKUIDataProvider_SimpleElementProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKUIDataProvider_StringArray")()); }
	private static __gshared UDKUIDataProvider_StringArray mDefaultProperties;
	@property final static UDKUIDataProvider_StringArray DefaultProperties() { mixin(MGDPC!(UDKUIDataProvider_StringArray, "UDKUIDataProvider_StringArray UDKBase.Default__UDKUIDataProvider_StringArray")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetElementCount;
		public @property static final ScriptFunction GetElementCount() { mixin(MGF!("mGetElementCount", "Function UDKBase.UDKUIDataProvider_StringArray.GetElementCount")()); }
	}
	@property final auto ref ScriptArray!(ScriptString) Strings() { mixin(MGPC!("ScriptArray!(ScriptString)", 92)()); }
	final int GetElementCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetElementCount, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
