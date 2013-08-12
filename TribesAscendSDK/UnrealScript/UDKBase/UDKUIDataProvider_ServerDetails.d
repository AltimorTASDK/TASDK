module UnrealScript.UDKBase.UDKUIDataProvider_ServerDetails;

import ScriptClasses;
import UnrealScript.UDKBase.UDKUIDataProvider_SimpleElementProvider;
import UnrealScript.Engine.UIDataProvider_Settings;

extern(C++) interface UDKUIDataProvider_ServerDetails : UDKUIDataProvider_SimpleElementProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKUIDataProvider_ServerDetails")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetSearchResultsProvider;
			ScriptFunction mGetElementCount;
		}
		public @property static final
		{
			ScriptFunction GetSearchResultsProvider() { return mGetSearchResultsProvider ? mGetSearchResultsProvider : (mGetSearchResultsProvider = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKUIDataProvider_ServerDetails.GetSearchResultsProvider")); }
			ScriptFunction GetElementCount() { return mGetElementCount ? mGetElementCount : (mGetElementCount = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKUIDataProvider_ServerDetails.GetElementCount")); }
		}
	}
	@property final auto ref int SearchResultsRow() { return *cast(int*)(cast(size_t)cast(void*)this + 92); }
final:
	UIDataProvider_Settings GetSearchResultsProvider()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSearchResultsProvider, params.ptr, cast(void*)0);
		return *cast(UIDataProvider_Settings*)params.ptr;
	}
	int GetElementCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetElementCount, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
