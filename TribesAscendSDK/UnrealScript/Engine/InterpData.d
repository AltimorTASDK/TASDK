module UnrealScript.Engine.InterpData;

import ScriptClasses;
import UnrealScript.Engine.InterpFilter;
import UnrealScript.Engine.SequenceVariable;
import UnrealScript.Engine.InterpGroup;
import UnrealScript.Engine.InterpCurveEdSetup;

extern(C++) interface InterpData : SequenceVariable
{
	struct AnimSetBakeAndPruneStatus
	{
		public @property final bool bSkipBakeAndPrune() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x2) != 0; }
		public @property final bool bSkipBakeAndPrune(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x2; } return val; }
		private ubyte __bSkipBakeAndPrune[4];
		public @property final bool bReferencedButUnused() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x1) != 0; }
		public @property final bool bReferencedButUnused(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x1; } return val; }
		private ubyte __bReferencedButUnused[4];
		public @property final auto ref ScriptString AnimSetName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		private ubyte __AnimSetName[12];
	}
	public @property final auto ref ScriptArray!(InterpGroup) InterpGroups() { return *cast(ScriptArray!(InterpGroup)*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref ScriptArray!(InterpFilter) InterpFilters() { return *cast(ScriptArray!(InterpFilter)*)(cast(size_t)cast(void*)this + 172); }
	public @property final auto ref ScriptArray!(InterpFilter) DefaultFilters() { return *cast(ScriptArray!(InterpFilter)*)(cast(size_t)cast(void*)this + 188); }
	public @property final auto ref ScriptArray!(InterpData.AnimSetBakeAndPruneStatus) BakeAndPruneStatus() { return *cast(ScriptArray!(InterpData.AnimSetBakeAndPruneStatus)*)(cast(size_t)cast(void*)this + 212); }
	public @property final bool bShouldBakeAndPrune() { return (*cast(uint*)(cast(size_t)cast(void*)this + 208) & 0x1) != 0; }
	public @property final bool bShouldBakeAndPrune(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 208) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 208) &= ~0x1; } return val; }
	public @property final auto ref float EdSectionEnd() { return *cast(float*)(cast(size_t)cast(void*)this + 204); }
	public @property final auto ref float EdSectionStart() { return *cast(float*)(cast(size_t)cast(void*)this + 200); }
	public @property final auto ref InterpFilter SelectedFilter() { return *cast(InterpFilter*)(cast(size_t)cast(void*)this + 184); }
	public @property final auto ref InterpCurveEdSetup CurveEdSetup() { return *cast(InterpCurveEdSetup*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref float PathBuildTime() { return *cast(float*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref float InterpLength() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
}
