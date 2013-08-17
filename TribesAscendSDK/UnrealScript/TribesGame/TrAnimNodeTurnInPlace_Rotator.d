module UnrealScript.TribesGame.TrAnimNodeTurnInPlace_Rotator;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAnimNodeTurnInPlace;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.AnimNodeBlendBase;

extern(C++) interface TrAnimNodeTurnInPlace_Rotator : AnimNodeBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAnimNodeTurnInPlace_Rotator")); }
	private static __gshared TrAnimNodeTurnInPlace_Rotator mDefaultProperties;
	@property final static TrAnimNodeTurnInPlace_Rotator DefaultProperties() { mixin(MGDPC("TrAnimNodeTurnInPlace_Rotator", "TrAnimNodeTurnInPlace_Rotator TribesGame.Default__TrAnimNodeTurnInPlace_Rotator")); }
	@property final auto ref
	{
		ScriptArray!(TrAnimNodeTurnInPlace) c_TurnInPlaceNodes() { mixin(MGPC("ScriptArray!(TrAnimNodeTurnInPlace)", 248)); }
		TrPawn m_TrPawn() { mixin(MGPC("TrPawn", 244)); }
	}
}
