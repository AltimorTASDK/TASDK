module UnrealScript.TribesGame.TrEffect_Sensor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrEffect_Managed;

extern(C++) interface TrEffect_Sensor : TrEffect_Managed
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrEffect_Sensor")); }
	private static __gshared TrEffect_Sensor mDefaultProperties;
	@property final static TrEffect_Sensor DefaultProperties() { mixin(MGDPC("TrEffect_Sensor", "TrEffect_Sensor TribesGame.Default__TrEffect_Sensor")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mApply;
			ScriptFunction mRemove;
		}
		public @property static final
		{
			ScriptFunction Apply() { mixin(MGF("mApply", "Function TribesGame.TrEffect_Sensor.Apply")); }
			ScriptFunction Remove() { mixin(MGF("mRemove", "Function TribesGame.TrEffect_Sensor.Remove")); }
		}
	}
	@property final
	{
		auto ref
		{
			float m_fScannerRange() { mixin(MGPC("float", 92)); }
			float m_fScannerFOV() { mixin(MGPC("float", 88)); }
		}
		bool m_bSeeLowHealthEnemy() { mixin(MGBPC(96, 0x20)); }
		bool m_bSeeLowHealthEnemy(bool val) { mixin(MSBPC(96, 0x20)); }
		bool m_bSeeStealthedEnemy() { mixin(MGBPC(96, 0x10)); }
		bool m_bSeeStealthedEnemy(bool val) { mixin(MSBPC(96, 0x10)); }
		bool m_bSeeNormalEnemy() { mixin(MGBPC(96, 0x8)); }
		bool m_bSeeNormalEnemy(bool val) { mixin(MSBPC(96, 0x8)); }
		bool m_bDisplayForeground() { mixin(MGBPC(96, 0x4)); }
		bool m_bDisplayForeground(bool val) { mixin(MSBPC(96, 0x4)); }
		bool m_bDisplayInGame() { mixin(MGBPC(96, 0x2)); }
		bool m_bDisplayInGame(bool val) { mixin(MSBPC(96, 0x2)); }
		bool m_bRequiresLOS() { mixin(MGBPC(96, 0x1)); }
		bool m_bRequiresLOS(bool val) { mixin(MSBPC(96, 0x1)); }
	}
final:
	void Apply(Actor Target, Actor.ImpactInfo* Impact = null)
	{
		ubyte params[84];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		if (Impact !is null)
			*cast(Actor.ImpactInfo*)&params[4] = *Impact;
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
