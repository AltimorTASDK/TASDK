module UnrealScript.Engine.SeqAct_LevelVisibility;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Latent;
import UnrealScript.Engine.LevelStreaming;

extern(C++) interface SeqAct_LevelVisibility : SeqAct_Latent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_LevelVisibility")); }
	private static __gshared SeqAct_LevelVisibility mDefaultProperties;
	@property final static SeqAct_LevelVisibility DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_LevelVisibility)("SeqAct_LevelVisibility Engine.Default__SeqAct_LevelVisibility")); }
	@property final
	{
		auto ref
		{
			ScriptName LevelName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 252); }
			// WARNING: Property 'Level' has the same name as a defined type!
		}
		bool bStatusIsOk() { return (*cast(uint*)(cast(size_t)cast(void*)this + 260) & 0x1) != 0; }
		bool bStatusIsOk(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 260) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 260) &= ~0x1; } return val; }
	}
}
