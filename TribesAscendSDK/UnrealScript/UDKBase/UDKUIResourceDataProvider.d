module UnrealScript.UDKBase.UDKUIResourceDataProvider;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.UIResourceDataProvider;

extern(C++) interface UDKUIResourceDataProvider : UIResourceDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKUIResourceDataProvider")()); }
	private static __gshared UDKUIResourceDataProvider mDefaultProperties;
	@property final static UDKUIResourceDataProvider DefaultProperties() { mixin(MGDPC!(UDKUIResourceDataProvider, "UDKUIResourceDataProvider UDKBase.Default__UDKUIResourceDataProvider")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mIsFiltered;
			ScriptFunction mShouldBeFiltered;
		}
		public @property static final
		{
			ScriptFunction IsFiltered() { mixin(MGF!("mIsFiltered", "Function UDKBase.UDKUIResourceDataProvider.IsFiltered")()); }
			ScriptFunction ShouldBeFiltered() { mixin(MGF!("mShouldBeFiltered", "Function UDKBase.UDKUIResourceDataProvider.ShouldBeFiltered")()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptString IniName() { mixin(MGPC!("ScriptString", 140)()); }
			ScriptString FriendlyName() { mixin(MGPC!("ScriptString", 124)()); }
		}
		bool bRemoveOnPS3() { mixin(MGBPC!(136, 0x8)()); }
		bool bRemoveOnPS3(bool val) { mixin(MSBPC!(136, 0x8)()); }
		bool bRemoveOnPC() { mixin(MGBPC!(136, 0x4)()); }
		bool bRemoveOnPC(bool val) { mixin(MSBPC!(136, 0x4)()); }
		bool bRemoveOn360() { mixin(MGBPC!(136, 0x2)()); }
		bool bRemoveOn360(bool val) { mixin(MSBPC!(136, 0x2)()); }
		bool bSearchAllInis() { mixin(MGBPC!(136, 0x1)()); }
		bool bSearchAllInis(bool val) { mixin(MSBPC!(136, 0x1)()); }
	}
final:
	bool IsFiltered()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsFiltered, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool ShouldBeFiltered()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldBeFiltered, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
