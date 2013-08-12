module UnrealScript.UDKBase.UDKTeamPlayerStart;

import ScriptClasses;
import UnrealScript.Engine.PlayerStart;
import UnrealScript.Engine.Texture2D;

extern(C++) interface UDKTeamPlayerStart : PlayerStart
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKTeamPlayerStart")); }
	private static __gshared UDKTeamPlayerStart mDefaultProperties;
	@property final static UDKTeamPlayerStart DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UDKTeamPlayerStart)("UDKTeamPlayerStart UDKBase.Default__UDKTeamPlayerStart")); }
	@property final auto ref
	{
		ScriptArray!(Texture2D) TeamSprites() { return *cast(ScriptArray!(Texture2D)*)(cast(size_t)cast(void*)this + 704); }
		ubyte TeamNumber() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 700); }
	}
}
