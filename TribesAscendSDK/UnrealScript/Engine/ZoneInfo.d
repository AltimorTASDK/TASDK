module UnrealScript.Engine.ZoneInfo;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Info;

extern(C++) interface ZoneInfo : Info
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ZoneInfo")); }
	private static __gshared ZoneInfo mDefaultProperties;
	@property final static ZoneInfo DefaultProperties() { mixin(MGDPC("ZoneInfo", "ZoneInfo Engine.Default__ZoneInfo")); }
	@property final
	{
		auto ref
		{
			float KillZ() { mixin(MGPC("float", 476)); }
			ScriptClass KillZDamageTypeVar() { mixin(MGPC("ScriptClass", 484)); }
			float SoftKill() { mixin(MGPC("float", 480)); }
		}
		bool bSoftKillZ() { mixin(MGBPC(488, 0x1)); }
		bool bSoftKillZ(bool val) { mixin(MSBPC(488, 0x1)); }
	}
}
