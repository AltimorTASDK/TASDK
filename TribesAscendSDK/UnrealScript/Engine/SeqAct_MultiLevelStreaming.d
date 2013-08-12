module UnrealScript.Engine.SeqAct_MultiLevelStreaming;

import ScriptClasses;
import UnrealScript.Engine.LevelStreaming;
import UnrealScript.Engine.SeqAct_LevelStreamingBase;

extern(C++) interface SeqAct_MultiLevelStreaming : SeqAct_LevelStreamingBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_MultiLevelStreaming")); }
	private static __gshared SeqAct_MultiLevelStreaming mDefaultProperties;
	@property final static SeqAct_MultiLevelStreaming DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_MultiLevelStreaming)("SeqAct_MultiLevelStreaming Engine.Default__SeqAct_MultiLevelStreaming")); }
	struct LevelStreamingNameCombo
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.SeqAct_MultiLevelStreaming.LevelStreamingNameCombo")); }
		@property final auto ref
		{
			ScriptName LevelName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
			// WARNING: Property 'Level' has the same name as a defined type!
		}
	}
	@property final
	{
		@property final auto ref ScriptArray!(SeqAct_MultiLevelStreaming.LevelStreamingNameCombo) Levels() { return *cast(ScriptArray!(SeqAct_MultiLevelStreaming.LevelStreamingNameCombo)*)(cast(size_t)cast(void*)this + 252); }
		bool bStatusIsOk() { return (*cast(uint*)(cast(size_t)cast(void*)this + 264) & 0x2) != 0; }
		bool bStatusIsOk(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 264) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 264) &= ~0x2; } return val; }
		bool bUnloadAllOtherLevels() { return (*cast(uint*)(cast(size_t)cast(void*)this + 264) & 0x1) != 0; }
		bool bUnloadAllOtherLevels(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 264) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 264) &= ~0x1; } return val; }
	}
}
