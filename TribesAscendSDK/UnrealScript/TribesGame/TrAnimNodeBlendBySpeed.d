module UnrealScript.TribesGame.TrAnimNodeBlendBySpeed;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.AnimNodeBlendBySpeed;

extern(C++) interface TrAnimNodeBlendBySpeed : AnimNodeBlendBySpeed
{
public extern(D):
	@property final
	{
		auto ref
		{
			ScriptArray!(float) m_BaseSpeed() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 328); }
			ScriptArray!(Actor.EPhysics) m_IgnoredPhysics() { return *cast(ScriptArray!(Actor.EPhysics)*)(cast(size_t)cast(void*)this + 344); }
			TrPawn m_TrPawn() { return *cast(TrPawn*)(cast(size_t)cast(void*)this + 324); }
		}
		bool m_bIgnoreZVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 340) & 0x1) != 0; }
		bool m_bIgnoreZVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 340) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 340) &= ~0x1; } return val; }
	}
}
