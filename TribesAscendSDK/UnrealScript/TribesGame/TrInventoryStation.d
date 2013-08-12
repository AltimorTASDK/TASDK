module UnrealScript.TribesGame.TrInventoryStation;

import ScriptClasses;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.TribesGame.TrStation;

extern(C++) interface TrInventoryStation : TrStation
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrInventoryStation")); }
	private static __gshared TrInventoryStation mDefaultProperties;
	@property final static TrInventoryStation DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrInventoryStation)("TrInventoryStation TribesGame.Default__TrInventoryStation")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPawnEnteredStation;
			ScriptFunction mOnPowerStatusChanged;
			ScriptFunction mPlayStationEnteredEffects;
			ScriptFunction mTimer;
			ScriptFunction mGetMarker;
		}
		public @property static final
		{
			ScriptFunction PawnEnteredStation() { return mPawnEnteredStation ? mPawnEnteredStation : (mPawnEnteredStation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrInventoryStation.PawnEnteredStation")); }
			ScriptFunction OnPowerStatusChanged() { return mOnPowerStatusChanged ? mOnPowerStatusChanged : (mOnPowerStatusChanged = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrInventoryStation.OnPowerStatusChanged")); }
			ScriptFunction PlayStationEnteredEffects() { return mPlayStationEnteredEffects ? mPlayStationEnteredEffects : (mPlayStationEnteredEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrInventoryStation.PlayStationEnteredEffects")); }
			ScriptFunction Timer() { return mTimer ? mTimer : (mTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrInventoryStation.Timer")); }
			ScriptFunction GetMarker() { return mGetMarker ? mGetMarker : (mGetMarker = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrInventoryStation.GetMarker")); }
		}
	}
	@property final
	{
		auto ref
		{
			TrPawn m_PawnToRefresh() { return *cast(TrPawn*)(cast(size_t)cast(void*)this + 1420); }
			UObject.Color m_PowerOffColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1412); }
			UObject.Color m_PowerOnColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1408); }
			float m_fStationReleaseTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1400); }
			float m_fStationAnimTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1396); }
		}
		bool m_bForceHealthRegen() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1416) & 0x1) != 0; }
		bool m_bForceHealthRegen(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1416) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1416) &= ~0x1; } return val; }
	}
final:
	void PawnEnteredStation(TrPawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.PawnEnteredStation, params.ptr, cast(void*)0);
	}
	void OnPowerStatusChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPowerStatusChanged, cast(void*)0, cast(void*)0);
	}
	void PlayStationEnteredEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayStationEnteredEffects, cast(void*)0, cast(void*)0);
	}
	void Timer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Timer, cast(void*)0, cast(void*)0);
	}
	Texture2D GetMarker()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMarker, params.ptr, cast(void*)0);
		return *cast(Texture2D*)params.ptr;
	}
}
