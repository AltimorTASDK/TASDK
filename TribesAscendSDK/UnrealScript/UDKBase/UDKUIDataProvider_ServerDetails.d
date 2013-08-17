module UnrealScript.UDKBase.UDKUIDataProvider_ServerDetails;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKUIDataProvider_SimpleElementProvider;
import UnrealScript.Engine.UIDataProvider_Settings;

extern(C++) interface UDKUIDataProvider_ServerDetails : UDKUIDataProvider_SimpleElementProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKUIDataProvider_ServerDetails")()); }
	private static __gshared UDKUIDataProvider_ServerDetails mDefaultProperties;
	@property final static UDKUIDataProvider_ServerDetails DefaultProperties() { mixin(MGDPC!(UDKUIDataProvider_ServerDetails, "UDKUIDataProvider_ServerDetails UDKBase.Default__UDKUIDataProvider_ServerDetails")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetSearchResultsProvider;
			ScriptFunction mGetElementCount;
		}
		public @property static final
		{
			ScriptFunction GetSearchResultsProvider() { mixin(MGF!("mGetSearchResultsProvider", "Function UDKBase.UDKUIDataProvider_ServerDetails.GetSearchResultsProvider")()); }
			ScriptFunction GetElementCount() { mixin(MGF!("mGetElementCount", "Function UDKBase.UDKUIDataProvider_ServerDetails.GetElementCount")()); }
		}
	}
	@property final auto ref int SearchResultsRow() { mixin(MGPC!("int", 92)()); }
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
