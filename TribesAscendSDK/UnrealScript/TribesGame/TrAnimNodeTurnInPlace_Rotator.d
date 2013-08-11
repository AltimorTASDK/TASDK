module UnrealScript.TribesGame.TrAnimNodeTurnInPlace_Rotator;

import ScriptClasses;
import UnrealScript.TribesGame.TrAnimNodeTurnInPlace;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.AnimNodeBlendBase;

extern(C++) interface TrAnimNodeTurnInPlace_Rotator : AnimNodeBlendBase
{
public extern(D):
	@property final auto ref
	{
		ScriptArray!(TrAnimNodeTurnInPlace) c_TurnInPlaceNodes() { return *cast(ScriptArray!(TrAnimNodeTurnInPlace)*)(cast(size_t)cast(void*)this + 248); }
		TrPawn m_TrPawn() { return *cast(TrPawn*)(cast(size_t)cast(void*)this + 244); }
	}
}
