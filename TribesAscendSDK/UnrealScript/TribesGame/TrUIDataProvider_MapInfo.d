module UnrealScript.TribesGame.TrUIDataProvider_MapInfo;

import ScriptClasses;
import UnrealScript.UDKBase.UDKUIDataProvider_MapInfo;

extern(C++) interface TrUIDataProvider_MapInfo : UDKUIDataProvider_MapInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrUIDataProvider_MapInfo")); }
	private static __gshared TrUIDataProvider_MapInfo mDefaultProperties;
	@property final static TrUIDataProvider_MapInfo DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrUIDataProvider_MapInfo)("TrUIDataProvider_MapInfo TribesGame.Default__TrUIDataProvider_MapInfo")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mShouldBeFiltered;
		public @property static final ScriptFunction ShouldBeFiltered() { return mShouldBeFiltered ? mShouldBeFiltered : (mShouldBeFiltered = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrUIDataProvider_MapInfo.ShouldBeFiltered")); }
	}
	final bool ShouldBeFiltered()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldBeFiltered, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
