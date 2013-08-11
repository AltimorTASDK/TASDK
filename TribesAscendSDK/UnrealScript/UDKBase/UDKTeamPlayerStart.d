module UnrealScript.UDKBase.UDKTeamPlayerStart;

import ScriptClasses;
import UnrealScript.Engine.PlayerStart;
import UnrealScript.Engine.Texture2D;

extern(C++) interface UDKTeamPlayerStart : PlayerStart
{
public extern(D):
	@property final auto ref
	{
		ScriptArray!(Texture2D) TeamSprites() { return *cast(ScriptArray!(Texture2D)*)(cast(size_t)cast(void*)this + 704); }
		ubyte TeamNumber() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 700); }
	}
}
