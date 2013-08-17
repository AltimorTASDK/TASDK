module UnrealScript.TribesGame.TrRepairStationCollision;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrStationCollision;

extern(C++) interface TrRepairStationCollision : TrStationCollision
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrRepairStationCollision")()); }
	private static __gshared TrRepairStationCollision mDefaultProperties;
	@property final static TrRepairStationCollision DefaultProperties() { mixin(MGDPC!(TrRepairStationCollision, "TrRepairStationCollision TribesGame.Default__TrRepairStationCollision")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetPawnsInStation;
			ScriptFunction mCheckNearByPawns;
			ScriptFunction mTouch;
			ScriptFunction mUnTouch;
		}
		public @property static final
		{
			ScriptFunction GetPawnsInStation() { mixin(MGF!("mGetPawnsInStation", "Function TribesGame.TrRepairStationCollision.GetPawnsInStation")()); }
			ScriptFunction CheckNearByPawns() { mixin(MGF!("mCheckNearByPawns", "Function TribesGame.TrRepairStationCollision.CheckNearByPawns")()); }
			ScriptFunction Touch() { mixin(MGF!("mTouch", "Function TribesGame.TrRepairStationCollision.Touch")()); }
			ScriptFunction UnTouch() { mixin(MGF!("mUnTouch", "Function TribesGame.TrRepairStationCollision.UnTouch")()); }
		}
	}
	@property final auto ref ScriptArray!(Pawn) m_NearByPawns() { mixin(MGPC!(ScriptArray!(Pawn), 484)()); }
final:
	int GetPawnsInStation()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPawnsInStation, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void CheckNearByPawns(TrPawn aPawn, bool bAdd)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPawn*)params.ptr = aPawn;
		*cast(bool*)&params[4] = bAdd;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckNearByPawns, params.ptr, cast(void*)0);
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
}
