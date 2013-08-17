module UnrealScript.TribesGame.TrAnimNodeBlendBySpeed;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.AnimNodeBlendBySpeed;

extern(C++) interface TrAnimNodeBlendBySpeed : AnimNodeBlendBySpeed
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAnimNodeBlendBySpeed")); }
	private static __gshared TrAnimNodeBlendBySpeed mDefaultProperties;
	@property final static TrAnimNodeBlendBySpeed DefaultProperties() { mixin(MGDPC("TrAnimNodeBlendBySpeed", "TrAnimNodeBlendBySpeed TribesGame.Default__TrAnimNodeBlendBySpeed")); }
	@property final
	{
		auto ref
		{
			ScriptArray!(float) m_BaseSpeed() { mixin(MGPC("ScriptArray!(float)", 328)); }
			ScriptArray!(Actor.EPhysics) m_IgnoredPhysics() { mixin(MGPC("ScriptArray!(Actor.EPhysics)", 344)); }
			TrPawn m_TrPawn() { mixin(MGPC("TrPawn", 324)); }
		}
		bool m_bIgnoreZVelocity() { mixin(MGBPC(340, 0x1)); }
		bool m_bIgnoreZVelocity(bool val) { mixin(MSBPC(340, 0x1)); }
	}
}
