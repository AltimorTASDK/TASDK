module UnrealScript.Engine.InterpData;

import ScriptClasses;
import UnrealScript.Engine.InterpFilter;
import UnrealScript.Engine.SequenceVariable;
import UnrealScript.Engine.InterpGroup;
import UnrealScript.Engine.InterpCurveEdSetup;

extern(C++) interface InterpData : SequenceVariable
{
public extern(D):
	struct AnimSetBakeAndPruneStatus
	{
		private ubyte __buffer__[16];
	public extern(D):
		@property final
		{
			@property final auto ref ScriptString AnimSetName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
			bool bSkipBakeAndPrune() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x2) != 0; }
			bool bSkipBakeAndPrune(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x2; } return val; }
			bool bReferencedButUnused() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x1) != 0; }
			bool bReferencedButUnused(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(InterpGroup) InterpGroups() { return *cast(ScriptArray!(InterpGroup)*)(cast(size_t)cast(void*)this + 156); }
			ScriptArray!(InterpFilter) InterpFilters() { return *cast(ScriptArray!(InterpFilter)*)(cast(size_t)cast(void*)this + 172); }
			ScriptArray!(InterpFilter) DefaultFilters() { return *cast(ScriptArray!(InterpFilter)*)(cast(size_t)cast(void*)this + 188); }
			ScriptArray!(InterpData.AnimSetBakeAndPruneStatus) BakeAndPruneStatus() { return *cast(ScriptArray!(InterpData.AnimSetBakeAndPruneStatus)*)(cast(size_t)cast(void*)this + 212); }
			float EdSectionEnd() { return *cast(float*)(cast(size_t)cast(void*)this + 204); }
			float EdSectionStart() { return *cast(float*)(cast(size_t)cast(void*)this + 200); }
			InterpFilter SelectedFilter() { return *cast(InterpFilter*)(cast(size_t)cast(void*)this + 184); }
			InterpCurveEdSetup CurveEdSetup() { return *cast(InterpCurveEdSetup*)(cast(size_t)cast(void*)this + 168); }
			float PathBuildTime() { return *cast(float*)(cast(size_t)cast(void*)this + 152); }
			float InterpLength() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
		}
		bool bShouldBakeAndPrune() { return (*cast(uint*)(cast(size_t)cast(void*)this + 208) & 0x1) != 0; }
		bool bShouldBakeAndPrune(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 208) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 208) &= ~0x1; } return val; }
	}
}
