module UnrealScript.TribesGame.TrCaHCapturePoint;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.Canvas;
import UnrealScript.TribesGame.TrInventoryStation_Neutral;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.PlayerController;
import UnrealScript.TribesGame.TrGameObjective;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.TribesGame.TrBaseTurret_Neutral;
import UnrealScript.TribesGame.TrRepairStation_Neutral;
import UnrealScript.Engine.SkelControlSingleBone;
import UnrealScript.TribesGame.TrRadarStation_Neutral;

extern(C++) interface TrCaHCapturePoint : TrGameObjective
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrCaHCapturePoint")()); }
	private static __gshared TrCaHCapturePoint mDefaultProperties;
	@property final static TrCaHCapturePoint DefaultProperties() { mixin(MGDPC!(TrCaHCapturePoint, "TrCaHCapturePoint TribesGame.Default__TrCaHCapturePoint")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mPostInitAnimTree;
			ScriptFunction mPulseMarker;
			ScriptFunction mPointPulseMarker;
			ScriptFunction mUpdateHologramVisibility;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mTouch;
			ScriptFunction mOnPawnTouched;
			ScriptFunction mPostCapturePointTimer;
			ScriptFunction mAwardPointTimer;
			ScriptFunction mShouldPostRenderForCaH;
			ScriptFunction mGetScreenName;
			ScriptFunction mPostRenderFor;
			ScriptFunction mCheckNearbyPlayersTimer;
			ScriptFunction mIsPawnConsideredNearby;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrCaHCapturePoint.PostBeginPlay")()); }
			ScriptFunction PostInitAnimTree() { mixin(MGF!("mPostInitAnimTree", "Function TribesGame.TrCaHCapturePoint.PostInitAnimTree")()); }
			ScriptFunction PulseMarker() { mixin(MGF!("mPulseMarker", "Function TribesGame.TrCaHCapturePoint.PulseMarker")()); }
			ScriptFunction PointPulseMarker() { mixin(MGF!("mPointPulseMarker", "Function TribesGame.TrCaHCapturePoint.PointPulseMarker")()); }
			ScriptFunction UpdateHologramVisibility() { mixin(MGF!("mUpdateHologramVisibility", "Function TribesGame.TrCaHCapturePoint.UpdateHologramVisibility")()); }
			ScriptFunction ReplicatedEvent() { mixin(MGF!("mReplicatedEvent", "Function TribesGame.TrCaHCapturePoint.ReplicatedEvent")()); }
			ScriptFunction Touch() { mixin(MGF!("mTouch", "Function TribesGame.TrCaHCapturePoint.Touch")()); }
			ScriptFunction OnPawnTouched() { mixin(MGF!("mOnPawnTouched", "Function TribesGame.TrCaHCapturePoint.OnPawnTouched")()); }
			ScriptFunction PostCapturePointTimer() { mixin(MGF!("mPostCapturePointTimer", "Function TribesGame.TrCaHCapturePoint.PostCapturePointTimer")()); }
			ScriptFunction AwardPointTimer() { mixin(MGF!("mAwardPointTimer", "Function TribesGame.TrCaHCapturePoint.AwardPointTimer")()); }
			ScriptFunction ShouldPostRenderForCaH() { mixin(MGF!("mShouldPostRenderForCaH", "Function TribesGame.TrCaHCapturePoint.ShouldPostRenderForCaH")()); }
			ScriptFunction GetScreenName() { mixin(MGF!("mGetScreenName", "Function TribesGame.TrCaHCapturePoint.GetScreenName")()); }
			ScriptFunction PostRenderFor() { mixin(MGF!("mPostRenderFor", "Function TribesGame.TrCaHCapturePoint.PostRenderFor")()); }
			ScriptFunction CheckNearbyPlayersTimer() { mixin(MGF!("mCheckNearbyPlayersTimer", "Function TribesGame.TrCaHCapturePoint.CheckNearbyPlayersTimer")()); }
			ScriptFunction IsPawnConsideredNearby() { mixin(MGF!("mIsPawnConsideredNearby", "Function TribesGame.TrCaHCapturePoint.IsPawnConsideredNearby")()); }
		}
	}
	struct NearbyPlayer
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct TribesGame.TrCaHCapturePoint.NearbyPlayer")()); }
		@property final auto ref
		{
			float LastCheckedTimestamp() { mixin(MGPS!(float, 8)()); }
			float Time() { mixin(MGPS!(float, 4)()); }
			TrPlayerController NearbyPC() { mixin(MGPS!(TrPlayerController, 0)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(TrBaseTurret_Neutral) m_BaseTurrets() { mixin(MGPC!(ScriptArray!(TrBaseTurret_Neutral), 1372)()); }
			ScriptArray!(TrRadarStation_Neutral) m_BaseSensors() { mixin(MGPC!(ScriptArray!(TrRadarStation_Neutral), 1384)()); }
			ScriptArray!(TrInventoryStation_Neutral) m_InventoryStations() { mixin(MGPC!(ScriptArray!(TrInventoryStation_Neutral), 1396)()); }
			ScriptArray!(TrRepairStation_Neutral) m_RepairStations() { mixin(MGPC!(ScriptArray!(TrRepairStation_Neutral), 1408)()); }
			ScriptArray!(TrCaHCapturePoint.NearbyPlayer) m_NearbyPlayers() { mixin(MGPC!(ScriptArray!(TrCaHCapturePoint.NearbyPlayer), 1580)()); }
			float m_HoldTheLineAccoladeTime() { mixin(MGPC!(float, 1596)()); }
			float m_fNearbyPawnCheckTime() { mixin(MGPC!(float, 1592)()); }
			TrPlayerController m_LastCapturedBy() { mixin(MGPC!(TrPlayerController, 1576)()); }
			float m_fPointPulseMarkerSpeed() { mixin(MGPC!(float, 1572)()); }
			float m_fPointPulseMarkerTime() { mixin(MGPC!(float, 1568)()); }
			float m_fRemainingPointPulseMarkerTime() { mixin(MGPC!(float, 1564)()); }
			float m_fPulseMarkerSpeed() { mixin(MGPC!(float, 1560)()); }
			float m_fPulseMarkerTime() { mixin(MGPC!(float, 1556)()); }
			float m_fRemainingPulseMarkerTime() { mixin(MGPC!(float, 1552)()); }
			float m_MarkerSize() { mixin(MGPC!(float, 1548)()); }
			ubyte r_nFlashPointPulse() { mixin(MGPC!(ubyte, 1545)()); }
			TrObject.CaHCapturePointLabel m_CapturePointLabel() { mixin(MGPC!(TrObject.CaHCapturePointLabel, 1544)()); }
			Vector LastCameraPos() { mixin(MGPC!(Vector, 1528)()); }
			Vector LastCameraDir() { mixin(MGPC!(Vector, 1516)()); }
			Vector LastScreenLoc() { mixin(MGPC!(Vector, 1504)()); }
			float m_fInfluenceRadiusSize() { mixin(MGPC!(float, 1500)()); }
			SkelControlSingleBone m_SkyHologramSkelControl() { mixin(MGPC!(SkelControlSingleBone, 1496)()); }
			float m_fSkyHologramScaleDS() { mixin(MGPC!(float, 1492)()); }
			float m_fSkyHologramScaleBE() { mixin(MGPC!(float, 1488)()); }
			float m_fSkyHologramScaleOffset() { mixin(MGPC!(float, 1484)()); }
			Vector m_vSkyHologramOffsetDS() { mixin(MGPC!(Vector, 1472)()); }
			Vector m_vSkyHologramOffsetBE() { mixin(MGPC!(Vector, 1460)()); }
			float m_fSkyHologramOffsetZ() { mixin(MGPC!(float, 1456)()); }
			float m_fSkyHologramOffsetY() { mixin(MGPC!(float, 1452)()); }
			float m_fSkyHologramOffsetX() { mixin(MGPC!(float, 1448)()); }
			MaterialInstanceConstant m_DiamondSwordHologramMIC() { mixin(MGPC!(MaterialInstanceConstant, 1444)()); }
			MaterialInstanceConstant m_BloodEagleHologramMIC() { mixin(MGPC!(MaterialInstanceConstant, 1440)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_SkyPreviewHologramMesh'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_SkyDiamondSwordHologramMesh'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_SkyBloodEagleHologramMesh'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_GroundDiamondSwordHologramMesh'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_GroundBloodEagleHologramMesh'!
			ScriptString m_sCapturePointName() { mixin(MGPC!(ScriptString, 1360)()); }
		}
		bool r_bIsHeld() { mixin(MGBPC!(1540, 0x1)()); }
		bool r_bIsHeld(bool val) { mixin(MSBPC!(1540, 0x1)()); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void PostInitAnimTree(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelComp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostInitAnimTree, params.ptr, cast(void*)0);
	}
	void PulseMarker()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PulseMarker, cast(void*)0, cast(void*)0);
	}
	void PointPulseMarker()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PointPulseMarker, cast(void*)0, cast(void*)0);
	}
	void UpdateHologramVisibility()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateHologramVisibility, cast(void*)0, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
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
	void OnPawnTouched(TrPawn TRP)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPawn*)params.ptr = TRP;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPawnTouched, params.ptr, cast(void*)0);
	}
	void PostCapturePointTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostCapturePointTimer, cast(void*)0, cast(void*)0);
	}
	void AwardPointTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AwardPointTimer, cast(void*)0, cast(void*)0);
	}
	bool ShouldPostRenderForCaH()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldPostRenderForCaH, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	ScriptString GetScreenName(PlayerController PC)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetScreenName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	void PostRenderFor(PlayerController PC, Canvas pCanvas, Vector CameraPosition, Vector CameraDir)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(Vector*)&params[8] = CameraPosition;
		*cast(Vector*)&params[20] = CameraDir;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostRenderFor, params.ptr, cast(void*)0);
	}
	void CheckNearbyPlayersTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckNearbyPlayersTimer, cast(void*)0, cast(void*)0);
	}
	bool IsPawnConsideredNearby(TrPawn TRP)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPawn*)params.ptr = TRP;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsPawnConsideredNearby, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
