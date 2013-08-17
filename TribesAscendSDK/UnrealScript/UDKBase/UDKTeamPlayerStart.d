module UnrealScript.UDKBase.UDKTeamPlayerStart;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PlayerStart;
import UnrealScript.Engine.Texture2D;

extern(C++) interface UDKTeamPlayerStart : PlayerStart
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UDKBase.UDKTeamPlayerStart")); }
	private static __gshared UDKTeamPlayerStart mDefaultProperties;
	@property final static UDKTeamPlayerStart DefaultProperties() { mixin(MGDPC("UDKTeamPlayerStart", "UDKTeamPlayerStart UDKBase.Default__UDKTeamPlayerStart")); }
	@property final auto ref
	{
		ScriptArray!(Texture2D) TeamSprites() { mixin(MGPC("ScriptArray!(Texture2D)", 704)); }
		ubyte TeamNumber() { mixin(MGPC("ubyte", 700)); }
	}
}
