module UnrealScript.TribesGame.TrAnimNodeAimOffset;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeAimOffset;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrAnimNodeAimOffset : AnimNodeAimOffset
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAnimNodeAimOffset")); }
	private static __gshared TrAnimNodeAimOffset mDefaultProperties;
	@property final static TrAnimNodeAimOffset DefaultProperties() { mixin(MGDPC("TrAnimNodeAimOffset", "TrAnimNodeAimOffset TribesGame.Default__TrAnimNodeAimOffset")); }
	@property final
	{
		auto ref
		{
			UObject.Vector2D m_TargetRandomAimLocation() { mixin(MGPC("UObject.Vector2D", 388)); }
			float m_fCurrentRandomAimPointsInterval() { mixin(MGPC("float", 384)); }
			float m_fRandomAimPointsIntervalMax() { mixin(MGPC("float", 380)); }
			float m_fRandomAimPointsIntervalMin() { mixin(MGPC("float", 376)); }
			float m_fRandomAimPointsInterpRate() { mixin(MGPC("float", 372)); }
			UObject.Vector2D m_RandomAimPointsRangeY() { mixin(MGPC("UObject.Vector2D", 364)); }
			UObject.Vector2D m_RandomAimPointsRangeX() { mixin(MGPC("UObject.Vector2D", 356)); }
			float m_fTurnAroundBlendTime() { mixin(MGPC("float", 348)); }
			float m_fTurnAroundTimeToGo() { mixin(MGPC("float", 344)); }
			UObject.Vector2D m_v2dLastPostProcessedAimOffset() { mixin(MGPC("UObject.Vector2D", 336)); }
			UObject.Vector2D m_v2dLastAimOffset() { mixin(MGPC("UObject.Vector2D", 328)); }
			float m_fTurnInPlaceOffset() { mixin(MGPC("float", 324)); }
			TrDevice m_TrDevice() { mixin(MGPC("TrDevice", 320)); }
			TrPawn m_TrPawn() { mixin(MGPC("TrPawn", 316)); }
		}
		bool m_bRandomAimPointsEnabled() { mixin(MGBPC(352, 0x1)); }
		bool m_bRandomAimPointsEnabled(bool val) { mixin(MSBPC(352, 0x1)); }
	}
}
