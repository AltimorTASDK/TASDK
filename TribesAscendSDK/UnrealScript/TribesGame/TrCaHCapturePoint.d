module UnrealScript.TribesGame.TrCaHCapturePoint;

import ScriptClasses;
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
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrCaHCapturePoint")); }
	private static __gshared TrCaHCapturePoint mDefaultProperties;
	@property final static TrCaHCapturePoint DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrCaHCapturePoint)("TrCaHCapturePoint TribesGame.Default__TrCaHCapturePoint")); }
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
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCaHCapturePoint.PostBeginPlay")); }
			ScriptFunction PostInitAnimTree() { return mPostInitAnimTree ? mPostInitAnimTree : (mPostInitAnimTree = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCaHCapturePoint.PostInitAnimTree")); }
			ScriptFunction PulseMarker() { return mPulseMarker ? mPulseMarker : (mPulseMarker = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCaHCapturePoint.PulseMarker")); }
			ScriptFunction PointPulseMarker() { return mPointPulseMarker ? mPointPulseMarker : (mPointPulseMarker = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCaHCapturePoint.PointPulseMarker")); }
			ScriptFunction UpdateHologramVisibility() { return mUpdateHologramVisibility ? mUpdateHologramVisibility : (mUpdateHologramVisibility = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCaHCapturePoint.UpdateHologramVisibility")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCaHCapturePoint.ReplicatedEvent")); }
			ScriptFunction Touch() { return mTouch ? mTouch : (mTouch = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCaHCapturePoint.Touch")); }
			ScriptFunction OnPawnTouched() { return mOnPawnTouched ? mOnPawnTouched : (mOnPawnTouched = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCaHCapturePoint.OnPawnTouched")); }
			ScriptFunction PostCapturePointTimer() { return mPostCapturePointTimer ? mPostCapturePointTimer : (mPostCapturePointTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCaHCapturePoint.PostCapturePointTimer")); }
			ScriptFunction AwardPointTimer() { return mAwardPointTimer ? mAwardPointTimer : (mAwardPointTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCaHCapturePoint.AwardPointTimer")); }
			ScriptFunction ShouldPostRenderForCaH() { return mShouldPostRenderForCaH ? mShouldPostRenderForCaH : (mShouldPostRenderForCaH = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCaHCapturePoint.ShouldPostRenderForCaH")); }
			ScriptFunction GetScreenName() { return mGetScreenName ? mGetScreenName : (mGetScreenName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCaHCapturePoint.GetScreenName")); }
			ScriptFunction PostRenderFor() { return mPostRenderFor ? mPostRenderFor : (mPostRenderFor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCaHCapturePoint.PostRenderFor")); }
			ScriptFunction CheckNearbyPlayersTimer() { return mCheckNearbyPlayersTimer ? mCheckNearbyPlayersTimer : (mCheckNearbyPlayersTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCaHCapturePoint.CheckNearbyPlayersTimer")); }
			ScriptFunction IsPawnConsideredNearby() { return mIsPawnConsideredNearby ? mIsPawnConsideredNearby : (mIsPawnConsideredNearby = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrCaHCapturePoint.IsPawnConsideredNearby")); }
		}
	}
	struct NearbyPlayer
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrCaHCapturePoint.NearbyPlayer")); }
		@property final auto ref
		{
			float LastCheckedTimestamp() { return *cast(float*)(cast(size_t)&this + 8); }
			float Time() { return *cast(float*)(cast(size_t)&this + 4); }
			TrPlayerController NearbyPC() { return *cast(TrPlayerController*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(TrBaseTurret_Neutral) m_BaseTurrets() { return *cast(ScriptArray!(TrBaseTurret_Neutral)*)(cast(size_t)cast(void*)this + 1372); }
			ScriptArray!(TrRadarStation_Neutral) m_BaseSensors() { return *cast(ScriptArray!(TrRadarStation_Neutral)*)(cast(size_t)cast(void*)this + 1384); }
			ScriptArray!(TrInventoryStation_Neutral) m_InventoryStations() { return *cast(ScriptArray!(TrInventoryStation_Neutral)*)(cast(size_t)cast(void*)this + 1396); }
			ScriptArray!(TrRepairStation_Neutral) m_RepairStations() { return *cast(ScriptArray!(TrRepairStation_Neutral)*)(cast(size_t)cast(void*)this + 1408); }
			ScriptArray!(TrCaHCapturePoint.NearbyPlayer) m_NearbyPlayers() { return *cast(ScriptArray!(TrCaHCapturePoint.NearbyPlayer)*)(cast(size_t)cast(void*)this + 1580); }
			float m_HoldTheLineAccoladeTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1596); }
			float m_fNearbyPawnCheckTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1592); }
			TrPlayerController m_LastCapturedBy() { return *cast(TrPlayerController*)(cast(size_t)cast(void*)this + 1576); }
			float m_fPointPulseMarkerSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1572); }
			float m_fPointPulseMarkerTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1568); }
			float m_fRemainingPointPulseMarkerTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1564); }
			float m_fPulseMarkerSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1560); }
			float m_fPulseMarkerTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1556); }
			float m_fRemainingPulseMarkerTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1552); }
			float m_MarkerSize() { return *cast(float*)(cast(size_t)cast(void*)this + 1548); }
			ubyte r_nFlashPointPulse() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 1545); }
			TrObject.CaHCapturePointLabel m_CapturePointLabel() { return *cast(TrObject.CaHCapturePointLabel*)(cast(size_t)cast(void*)this + 1544); }
			Vector LastCameraPos() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1528); }
			Vector LastCameraDir() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1516); }
			Vector LastScreenLoc() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1504); }
			float m_fInfluenceRadiusSize() { return *cast(float*)(cast(size_t)cast(void*)this + 1500); }
			SkelControlSingleBone m_SkyHologramSkelControl() { return *cast(SkelControlSingleBone*)(cast(size_t)cast(void*)this + 1496); }
			float m_fSkyHologramScaleDS() { return *cast(float*)(cast(size_t)cast(void*)this + 1492); }
			float m_fSkyHologramScaleBE() { return *cast(float*)(cast(size_t)cast(void*)this + 1488); }
			float m_fSkyHologramScaleOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 1484); }
			Vector m_vSkyHologramOffsetDS() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1472); }
			Vector m_vSkyHologramOffsetBE() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1460); }
			float m_fSkyHologramOffsetZ() { return *cast(float*)(cast(size_t)cast(void*)this + 1456); }
			float m_fSkyHologramOffsetY() { return *cast(float*)(cast(size_t)cast(void*)this + 1452); }
			float m_fSkyHologramOffsetX() { return *cast(float*)(cast(size_t)cast(void*)this + 1448); }
			MaterialInstanceConstant m_DiamondSwordHologramMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 1444); }
			MaterialInstanceConstant m_BloodEagleHologramMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 1440); }
			ScriptString m_sCapturePointName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1360); }
		}
		bool r_bIsHeld() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1540) & 0x1) != 0; }
		bool r_bIsHeld(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1540) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1540) &= ~0x1; } return val; }
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
