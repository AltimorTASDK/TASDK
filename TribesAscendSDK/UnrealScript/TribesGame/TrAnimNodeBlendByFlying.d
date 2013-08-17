module UnrealScript.TribesGame.TrAnimNodeBlendByFlying;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.TribesGame.TrAnimNodeBlendList;

extern(C++) interface TrAnimNodeBlendByFlying : TrAnimNodeBlendList
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAnimNodeBlendByFlying")()); }
	private static __gshared TrAnimNodeBlendByFlying mDefaultProperties;
	@property final static TrAnimNodeBlendByFlying DefaultProperties() { mixin(MGDPC!(TrAnimNodeBlendByFlying, "TrAnimNodeBlendByFlying TribesGame.Default__TrAnimNodeBlendByFlying")()); }
	enum EFlyDirTypes : ubyte
	{
		FLY_Forward = 0,
		FLY_Back = 1,
		FLY_Left = 2,
		FLY_Right = 3,
		FLY_Up = 4,
		FLY_Down = 5,
		FLY_UpMidair = 6,
		FLY_None = 7,
		FLY_MAX = 8,
	}
	@property final auto ref
	{
		TrPawn m_TrPawn() { mixin(MGPC!(TrPawn, 296)()); }
		TrAnimNodeBlendByFlying.EFlyDirTypes LastDirection() { mixin(MGPC!(TrAnimNodeBlendByFlying.EFlyDirTypes, 292)()); }
	}
}
