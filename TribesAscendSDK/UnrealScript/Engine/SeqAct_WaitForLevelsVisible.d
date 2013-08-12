module UnrealScript.Engine.SeqAct_WaitForLevelsVisible;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Latent;

extern(C++) interface SeqAct_WaitForLevelsVisible : SeqAct_Latent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_WaitForLevelsVisible")); }
	private static __gshared SeqAct_WaitForLevelsVisible mDefaultProperties;
	@property final static SeqAct_WaitForLevelsVisible DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_WaitForLevelsVisible)("SeqAct_WaitForLevelsVisible Engine.Default__SeqAct_WaitForLevelsVisible")); }
	@property final
	{
		@property final auto ref ScriptArray!(ScriptName) LevelNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 248); }
		bool bShouldBlockOnLoad() { return (*cast(uint*)(cast(size_t)cast(void*)this + 260) & 0x1) != 0; }
		bool bShouldBlockOnLoad(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 260) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 260) &= ~0x1; } return val; }
	}
}
