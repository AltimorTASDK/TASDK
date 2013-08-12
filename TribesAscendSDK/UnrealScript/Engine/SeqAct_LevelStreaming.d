module UnrealScript.Engine.SeqAct_LevelStreaming;

import ScriptClasses;
import UnrealScript.Engine.LevelStreaming;
import UnrealScript.Engine.SeqAct_LevelStreamingBase;

extern(C++) interface SeqAct_LevelStreaming : SeqAct_LevelStreamingBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_LevelStreaming")); }
	private static __gshared SeqAct_LevelStreaming mDefaultProperties;
	@property final static SeqAct_LevelStreaming DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_LevelStreaming)("SeqAct_LevelStreaming Engine.Default__SeqAct_LevelStreaming")); }
	@property final
	{
		auto ref
		{
			ScriptName LevelName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 256); }
			// WARNING: Property 'Level' has the same name as a defined type!
		}
		bool bStatusIsOk() { return (*cast(uint*)(cast(size_t)cast(void*)this + 264) & 0x1) != 0; }
		bool bStatusIsOk(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 264) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 264) &= ~0x1; } return val; }
	}
}
