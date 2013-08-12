module UnrealScript.TribesGame.TrEffect_Sensor;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrEffect_Managed;

extern(C++) interface TrEffect_Sensor : TrEffect_Managed
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrEffect_Sensor")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mApply;
			ScriptFunction mRemove;
		}
		public @property static final
		{
			ScriptFunction Apply() { return mApply ? mApply : (mApply = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEffect_Sensor.Apply")); }
			ScriptFunction Remove() { return mRemove ? mRemove : (mRemove = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEffect_Sensor.Remove")); }
		}
	}
	@property final
	{
		auto ref
		{
			float m_fScannerRange() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
			float m_fScannerFOV() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
		}
		bool m_bSeeLowHealthEnemy() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x20) != 0; }
		bool m_bSeeLowHealthEnemy(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x20; } return val; }
		bool m_bSeeStealthedEnemy() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x10) != 0; }
		bool m_bSeeStealthedEnemy(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x10; } return val; }
		bool m_bSeeNormalEnemy() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x8) != 0; }
		bool m_bSeeNormalEnemy(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x8; } return val; }
		bool m_bDisplayForeground() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x4) != 0; }
		bool m_bDisplayForeground(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x4; } return val; }
		bool m_bDisplayInGame() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x2) != 0; }
		bool m_bDisplayInGame(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x2; } return val; }
		bool m_bRequiresLOS() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x1) != 0; }
		bool m_bRequiresLOS(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x1; } return val; }
	}
final:
	void Apply(Actor Target, Actor.ImpactInfo Impact)
	{
		ubyte params[84];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		*cast(Actor.ImpactInfo*)&params[4] = Impact;
		(cast(ScriptObject)this).ProcessEvent(Functions.Apply, params.ptr, cast(void*)0);
	}
	void Remove(Actor Target)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		(cast(ScriptObject)this).ProcessEvent(Functions.Remove, params.ptr, cast(void*)0);
	}
}
