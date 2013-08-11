module UnrealScript.Engine.SeqAct_LevelVisibility;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Latent;
import UnrealScript.Engine.LevelStreaming;

extern(C++) interface SeqAct_LevelVisibility : SeqAct_Latent
{
public extern(D):
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
