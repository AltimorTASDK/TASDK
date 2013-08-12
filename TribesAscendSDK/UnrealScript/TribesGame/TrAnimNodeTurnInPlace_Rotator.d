module UnrealScript.TribesGame.TrAnimNodeTurnInPlace_Rotator;

import ScriptClasses;
import UnrealScript.TribesGame.TrAnimNodeTurnInPlace;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.AnimNodeBlendBase;

extern(C++) interface TrAnimNodeTurnInPlace_Rotator : AnimNodeBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAnimNodeTurnInPlace_Rotator")); }
	private static __gshared TrAnimNodeTurnInPlace_Rotator mDefaultProperties;
	@property final static TrAnimNodeTurnInPlace_Rotator DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAnimNodeTurnInPlace_Rotator)("TrAnimNodeTurnInPlace_Rotator TribesGame.Default__TrAnimNodeTurnInPlace_Rotator")); }
	@property final auto ref
	{
		ScriptArray!(TrAnimNodeTurnInPlace) c_TurnInPlaceNodes() { return *cast(ScriptArray!(TrAnimNodeTurnInPlace)*)(cast(size_t)cast(void*)this + 248); }
		TrPawn m_TrPawn() { return *cast(TrPawn*)(cast(size_t)cast(void*)this + 244); }
	}
}
