module UnrealScript.TribesGame.TrStationCollision;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrPawn;

extern(C++) interface TrStationCollision : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrStationCollision")()); }
	private static __gshared TrStationCollision mDefaultProperties;
	@property final static TrStationCollision DefaultProperties() { mixin(MGDPC!(TrStationCollision, "TrStationCollision TribesGame.Default__TrStationCollision")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetPawnsInStation;
			ScriptFunction mTouch;
			ScriptFunction mUnTouch;
			ScriptFunction mCheckCanPawnUseStationNow;
		}
		public @property static final
		{
			ScriptFunction GetPawnsInStation() { mixin(MGF!("mGetPawnsInStation", "Function TribesGame.TrStationCollision.GetPawnsInStation")()); }
			ScriptFunction Touch() { mixin(MGF!("mTouch", "Function TribesGame.TrStationCollision.Touch")()); }
			ScriptFunction UnTouch() { mixin(MGF!("mUnTouch", "Function TribesGame.TrStationCollision.UnTouch")()); }
			ScriptFunction CheckCanPawnUseStationNow() { mixin(MGF!("mCheckCanPawnUseStationNow", "Function TribesGame.TrStationCollision.CheckCanPawnUseStationNow")()); }
		}
	}
	@property final
	{
		@property final auto ref TrPawn m_OccupiedPawn() { mixin(MGPC!("TrPawn", 480)()); }
		bool m_bCanBeUsedDuringWarmupRound() { mixin(MGBPC!(476, 0x2)()); }
		bool m_bCanBeUsedDuringWarmupRound(bool val) { mixin(MSBPC!(476, 0x2)()); }
		bool m_bOccupied() { mixin(MGBPC!(476, 0x1)()); }
		bool m_bOccupied(bool val) { mixin(MSBPC!(476, 0x1)()); }
	}
final:
	int GetPawnsInStation()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPawnsInStation, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void Touch(Actor Other, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* OtherComp, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = OtherComp;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.Touch, params.ptr, cast(void*)0);
	}
	void UnTouch(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.UnTouch, params.ptr, cast(void*)0);
	}
	bool CheckCanPawnUseStationNow(TrPawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckCanPawnUseStationNow, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
