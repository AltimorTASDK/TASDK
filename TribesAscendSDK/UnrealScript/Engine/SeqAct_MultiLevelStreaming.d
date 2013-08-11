module UnrealScript.Engine.SeqAct_MultiLevelStreaming;

import ScriptClasses;
import UnrealScript.Engine.LevelStreaming;
import UnrealScript.Engine.SeqAct_LevelStreamingBase;

extern(C++) interface SeqAct_MultiLevelStreaming : SeqAct_LevelStreamingBase
{
	struct LevelStreamingNameCombo
	{
		public @property final auto ref ScriptName LevelName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
		private ubyte __LevelName[8];
		// WARNING: Property 'Level' has the same name as a defined type!
	}
	public @property final auto ref ScriptArray!(SeqAct_MultiLevelStreaming.LevelStreamingNameCombo) Levels() { return *cast(ScriptArray!(SeqAct_MultiLevelStreaming.LevelStreamingNameCombo)*)(cast(size_t)cast(void*)this + 252); }
	public @property final bool bStatusIsOk() { return (*cast(uint*)(cast(size_t)cast(void*)this + 264) & 0x2) != 0; }
	public @property final bool bStatusIsOk(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 264) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 264) &= ~0x2; } return val; }
	public @property final bool bUnloadAllOtherLevels() { return (*cast(uint*)(cast(size_t)cast(void*)this + 264) & 0x1) != 0; }
	public @property final bool bUnloadAllOtherLevels(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 264) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 264) &= ~0x1; } return val; }
}
