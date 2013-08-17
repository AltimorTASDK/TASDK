module UnrealScript.TribesGame.TrAnimNodeBlendByFlagDirection;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeAdditiveBlending;
import UnrealScript.TribesGame.TrFlagBase;
import UnrealScript.TribesGame.TrAnimNodeBlendList;

extern(C++) interface TrAnimNodeBlendByFlagDirection : TrAnimNodeBlendList
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAnimNodeBlendByFlagDirection")()); }
	private static __gshared TrAnimNodeBlendByFlagDirection mDefaultProperties;
	@property final static TrAnimNodeBlendByFlagDirection DefaultProperties() { mixin(MGDPC!(TrAnimNodeBlendByFlagDirection, "TrAnimNodeBlendByFlagDirection TribesGame.Default__TrAnimNodeBlendByFlagDirection")()); }
	enum EFlagAnimTypes : ubyte
	{
		FlagAnim_Idle = 0,
		FlagAnim_Forward = 1,
		FlagAnim_Back = 2,
		FlagAnim_Left = 3,
		FlagAnim_Right = 4,
		FlagAnim_Up = 5,
		FlagAnim_Down = 6,
		FlagAnim_None = 7,
		FlagAnim_MAX = 8,
	}
	@property final auto ref
	{
		float m_fIdleBlendOutTime() { mixin(MGPC!(float, 320)()); }
		float m_fIdleBlendInTime() { mixin(MGPC!(float, 316)()); }
		AnimNodeAdditiveBlending m_AdditiveBlendNode() { mixin(MGPC!(AnimNodeAdditiveBlending, 312)()); }
		ScriptName m_nmAdditiveAnimNodeName() { mixin(MGPC!(ScriptName, 304)()); }
		float m_fIdleSpeedSizeSq() { mixin(MGPC!(float, 300)()); }
		TrFlagBase m_TrFlagOwner() { mixin(MGPC!(TrFlagBase, 296)()); }
		TrAnimNodeBlendByFlagDirection.EFlagAnimTypes LastDirection() { mixin(MGPC!(TrAnimNodeBlendByFlagDirection.EFlagAnimTypes, 292)()); }
	}
}
