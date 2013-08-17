module UnrealScript.Engine.InterpData;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpFilter;
import UnrealScript.Engine.SequenceVariable;
import UnrealScript.Engine.InterpGroup;
import UnrealScript.Engine.InterpCurveEdSetup;

extern(C++) interface InterpData : SequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.InterpData")); }
	private static __gshared InterpData mDefaultProperties;
	@property final static InterpData DefaultProperties() { mixin(MGDPC("InterpData", "InterpData Engine.Default__InterpData")); }
	struct AnimSetBakeAndPruneStatus
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.InterpData.AnimSetBakeAndPruneStatus")); }
		@property final
		{
			@property final auto ref ScriptString AnimSetName() { mixin(MGPS("ScriptString", 0)); }
			bool bSkipBakeAndPrune() { mixin(MGBPS(12, 0x2)); }
			bool bSkipBakeAndPrune(bool val) { mixin(MSBPS(12, 0x2)); }
			bool bReferencedButUnused() { mixin(MGBPS(12, 0x1)); }
			bool bReferencedButUnused(bool val) { mixin(MSBPS(12, 0x1)); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(InterpGroup) InterpGroups() { mixin(MGPC("ScriptArray!(InterpGroup)", 156)); }
			ScriptArray!(InterpFilter) InterpFilters() { mixin(MGPC("ScriptArray!(InterpFilter)", 172)); }
			ScriptArray!(InterpFilter) DefaultFilters() { mixin(MGPC("ScriptArray!(InterpFilter)", 188)); }
			ScriptArray!(InterpData.AnimSetBakeAndPruneStatus) BakeAndPruneStatus() { mixin(MGPC("ScriptArray!(InterpData.AnimSetBakeAndPruneStatus)", 212)); }
			float EdSectionEnd() { mixin(MGPC("float", 204)); }
			float EdSectionStart() { mixin(MGPC("float", 200)); }
			InterpFilter SelectedFilter() { mixin(MGPC("InterpFilter", 184)); }
			InterpCurveEdSetup CurveEdSetup() { mixin(MGPC("InterpCurveEdSetup", 168)); }
			float PathBuildTime() { mixin(MGPC("float", 152)); }
			float InterpLength() { mixin(MGPC("float", 148)); }
		}
		bool bShouldBakeAndPrune() { mixin(MGBPC(208, 0x1)); }
		bool bShouldBakeAndPrune(bool val) { mixin(MSBPC(208, 0x1)); }
	}
}
