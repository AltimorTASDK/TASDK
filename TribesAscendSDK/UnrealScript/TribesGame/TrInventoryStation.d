module UnrealScript.TribesGame.TrInventoryStation;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.TribesGame.TrStation;

extern(C++) interface TrInventoryStation : TrStation
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrInventoryStation")); }
	private static __gshared TrInventoryStation mDefaultProperties;
	@property final static TrInventoryStation DefaultProperties() { mixin(MGDPC("TrInventoryStation", "TrInventoryStation TribesGame.Default__TrInventoryStation")); }
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
			ScriptFunction PawnEnteredStation() { mixin(MGF("mPawnEnteredStation", "Function TribesGame.TrInventoryStation.PawnEnteredStation")); }
			ScriptFunction OnPowerStatusChanged() { mixin(MGF("mOnPowerStatusChanged", "Function TribesGame.TrInventoryStation.OnPowerStatusChanged")); }
			ScriptFunction PlayStationEnteredEffects() { mixin(MGF("mPlayStationEnteredEffects", "Function TribesGame.TrInventoryStation.PlayStationEnteredEffects")); }
			ScriptFunction Timer() { mixin(MGF("mTimer", "Function TribesGame.TrInventoryStation.Timer")); }
			ScriptFunction GetMarker() { mixin(MGF("mGetMarker", "Function TribesGame.TrInventoryStation.GetMarker")); }
		}
	}
	@property final
	{
		auto ref
		{
			TrPawn m_PawnToRefresh() { mixin(MGPC("TrPawn", 1420)); }
			UObject.Color m_PowerOffColor() { mixin(MGPC("UObject.Color", 1412)); }
			UObject.Color m_PowerOnColor() { mixin(MGPC("UObject.Color", 1408)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_PowerLight'!
			float m_fStationReleaseTime() { mixin(MGPC("float", 1400)); }
			float m_fStationAnimTime() { mixin(MGPC("float", 1396)); }
		}
		bool m_bForceHealthRegen() { mixin(MGBPC(1416, 0x1)); }
		bool m_bForceHealthRegen(bool val) { mixin(MSBPC(1416, 0x1)); }
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
