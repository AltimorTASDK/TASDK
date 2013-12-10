module UnrealScript.Engine.CoverLink;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SeqAct_ModifyCover;
import UnrealScript.Engine.Pylon;
import UnrealScript.Engine.Scout;

extern(C++) interface CoverLink : NavigationPoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.CoverLink")); }
	private static __gshared CoverLink mDefaultProperties;
	@property final static CoverLink DefaultProperties() { mixin(MGDPC("CoverLink", "CoverLink Engine.Default__CoverLink")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetFireLinkTargetCoverInfo;
			ScriptFunction mPackFireLinkInteractionInfo;
			ScriptFunction mUnPackFireLinkInteractionInfo;
			ScriptFunction mGetSlotLocation;
			ScriptFunction mGetSlotRotation;
			ScriptFunction mGetSlotViewPoint;
			ScriptFunction mIsExposedTo;
			ScriptFunction mSetInvalidUntil;
			ScriptFunction mClaim;
			ScriptFunction mUnClaim;
			ScriptFunction mIsValidClaim;
			ScriptFunction mIsValidClaimBetween;
			ScriptFunction mIsStationarySlot;
			ScriptFunction mIsEdgeSlot;
			ScriptFunction mFindSlots;
			ScriptFunction mIsLeftEdgeSlot;
			ScriptFunction mIsRightEdgeSlot;
			ScriptFunction mGetSlotIdxToLeft;
			ScriptFunction mGetSlotIdxToRight;
			ScriptFunction mAllowRightTransition;
			ScriptFunction mAllowLeftTransition;
			ScriptFunction mGetFireLinkTo;
			ScriptFunction mHasFireLinkTo;
			ScriptFunction mGetSlotActions;
			ScriptFunction mSetDisabled;
			ScriptFunction mSetSlotEnabled;
			ScriptFunction mNotifySlotOwnerCoverDisabled;
			ScriptFunction mSetSlotPlayerOnly;
			ScriptFunction mOnModifyCover;
			ScriptFunction mAutoAdjustSlot;
			ScriptFunction mIsEnabled;
			ScriptFunction mOnToggle;
			ScriptFunction mCreateCheckpointRecord;
			ScriptFunction mApplyCheckpointRecord;
			ScriptFunction mShutDown;
			ScriptFunction mGetSwatTurnTarget;
			ScriptFunction mBreakFracturedMeshes;
			ScriptFunction mAddCoverSlot;
			ScriptFunction mGetDebugString;
			ScriptFunction mGetLocationDescription;
			ScriptFunction mGetDebugAbbrev;
		}
		public @property static final
		{
			ScriptFunction GetFireLinkTargetCoverInfo() { mixin(MGF("mGetFireLinkTargetCoverInfo", "Function Engine.CoverLink.GetFireLinkTargetCoverInfo")); }
			ScriptFunction PackFireLinkInteractionInfo() { mixin(MGF("mPackFireLinkInteractionInfo", "Function Engine.CoverLink.PackFireLinkInteractionInfo")); }
			ScriptFunction UnPackFireLinkInteractionInfo() { mixin(MGF("mUnPackFireLinkInteractionInfo", "Function Engine.CoverLink.UnPackFireLinkInteractionInfo")); }
			ScriptFunction GetSlotLocation() { mixin(MGF("mGetSlotLocation", "Function Engine.CoverLink.GetSlotLocation")); }
			ScriptFunction GetSlotRotation() { mixin(MGF("mGetSlotRotation", "Function Engine.CoverLink.GetSlotRotation")); }
			ScriptFunction GetSlotViewPoint() { mixin(MGF("mGetSlotViewPoint", "Function Engine.CoverLink.GetSlotViewPoint")); }
			ScriptFunction IsExposedTo() { mixin(MGF("mIsExposedTo", "Function Engine.CoverLink.IsExposedTo")); }
			ScriptFunction SetInvalidUntil() { mixin(MGF("mSetInvalidUntil", "Function Engine.CoverLink.SetInvalidUntil")); }
			ScriptFunction Claim() { mixin(MGF("mClaim", "Function Engine.CoverLink.Claim")); }
			ScriptFunction UnClaim() { mixin(MGF("mUnClaim", "Function Engine.CoverLink.UnClaim")); }
			ScriptFunction IsValidClaim() { mixin(MGF("mIsValidClaim", "Function Engine.CoverLink.IsValidClaim")); }
			ScriptFunction IsValidClaimBetween() { mixin(MGF("mIsValidClaimBetween", "Function Engine.CoverLink.IsValidClaimBetween")); }
			ScriptFunction IsStationarySlot() { mixin(MGF("mIsStationarySlot", "Function Engine.CoverLink.IsStationarySlot")); }
			ScriptFunction IsEdgeSlot() { mixin(MGF("mIsEdgeSlot", "Function Engine.CoverLink.IsEdgeSlot")); }
			ScriptFunction FindSlots() { mixin(MGF("mFindSlots", "Function Engine.CoverLink.FindSlots")); }
			ScriptFunction IsLeftEdgeSlot() { mixin(MGF("mIsLeftEdgeSlot", "Function Engine.CoverLink.IsLeftEdgeSlot")); }
			ScriptFunction IsRightEdgeSlot() { mixin(MGF("mIsRightEdgeSlot", "Function Engine.CoverLink.IsRightEdgeSlot")); }
			ScriptFunction GetSlotIdxToLeft() { mixin(MGF("mGetSlotIdxToLeft", "Function Engine.CoverLink.GetSlotIdxToLeft")); }
			ScriptFunction GetSlotIdxToRight() { mixin(MGF("mGetSlotIdxToRight", "Function Engine.CoverLink.GetSlotIdxToRight")); }
			ScriptFunction AllowRightTransition() { mixin(MGF("mAllowRightTransition", "Function Engine.CoverLink.AllowRightTransition")); }
			ScriptFunction AllowLeftTransition() { mixin(MGF("mAllowLeftTransition", "Function Engine.CoverLink.AllowLeftTransition")); }
			ScriptFunction GetFireLinkTo() { mixin(MGF("mGetFireLinkTo", "Function Engine.CoverLink.GetFireLinkTo")); }
			ScriptFunction HasFireLinkTo() { mixin(MGF("mHasFireLinkTo", "Function Engine.CoverLink.HasFireLinkTo")); }
			ScriptFunction GetSlotActions() { mixin(MGF("mGetSlotActions", "Function Engine.CoverLink.GetSlotActions")); }
			ScriptFunction SetDisabled() { mixin(MGF("mSetDisabled", "Function Engine.CoverLink.SetDisabled")); }
			ScriptFunction SetSlotEnabled() { mixin(MGF("mSetSlotEnabled", "Function Engine.CoverLink.SetSlotEnabled")); }
			ScriptFunction NotifySlotOwnerCoverDisabled() { mixin(MGF("mNotifySlotOwnerCoverDisabled", "Function Engine.CoverLink.NotifySlotOwnerCoverDisabled")); }
			ScriptFunction SetSlotPlayerOnly() { mixin(MGF("mSetSlotPlayerOnly", "Function Engine.CoverLink.SetSlotPlayerOnly")); }
			ScriptFunction OnModifyCover() { mixin(MGF("mOnModifyCover", "Function Engine.CoverLink.OnModifyCover")); }
			ScriptFunction AutoAdjustSlot() { mixin(MGF("mAutoAdjustSlot", "Function Engine.CoverLink.AutoAdjustSlot")); }
			ScriptFunction IsEnabled() { mixin(MGF("mIsEnabled", "Function Engine.CoverLink.IsEnabled")); }
			ScriptFunction OnToggle() { mixin(MGF("mOnToggle", "Function Engine.CoverLink.OnToggle")); }
			ScriptFunction CreateCheckpointRecord() { mixin(MGF("mCreateCheckpointRecord", "Function Engine.CoverLink.CreateCheckpointRecord")); }
			ScriptFunction ApplyCheckpointRecord() { mixin(MGF("mApplyCheckpointRecord", "Function Engine.CoverLink.ApplyCheckpointRecord")); }
			ScriptFunction ShutDown() { mixin(MGF("mShutDown", "Function Engine.CoverLink.ShutDown")); }
			ScriptFunction GetSwatTurnTarget() { mixin(MGF("mGetSwatTurnTarget", "Function Engine.CoverLink.GetSwatTurnTarget")); }
			ScriptFunction BreakFracturedMeshes() { mixin(MGF("mBreakFracturedMeshes", "Function Engine.CoverLink.BreakFracturedMeshes")); }
			ScriptFunction AddCoverSlot() { mixin(MGF("mAddCoverSlot", "Function Engine.CoverLink.AddCoverSlot")); }
			ScriptFunction GetDebugString() { mixin(MGF("mGetDebugString", "Function Engine.CoverLink.GetDebugString")); }
			ScriptFunction GetLocationDescription() { mixin(MGF("mGetLocationDescription", "Function Engine.CoverLink.GetLocationDescription")); }
			ScriptFunction GetDebugAbbrev() { mixin(MGF("mGetDebugAbbrev", "Function Engine.CoverLink.GetDebugAbbrev")); }
		}
	}
	static struct Constants
	{
		enum
		{
			COVERLINK_DangerDist = 153.0f,
			COVERLINK_EdgeExposureDot = 0.85f,
			COVERLINK_EdgeCheckDot = 0.25f,
			COVERLINK_ExposureDot = 0.4f,
		}
	}
	enum ECoverLocationDescription : ubyte
	{
		CoverDesc_None = 0,
		CoverDesc_InWindow = 1,
		CoverDesc_InDoorway = 2,
		CoverDesc_BehindCar = 3,
		CoverDesc_BehindTruck = 4,
		CoverDesc_OnTruck = 5,
		CoverDesc_BehindBarrier = 6,
		CoverDesc_BehindColumn = 7,
		CoverDesc_BehindCrate = 8,
		CoverDesc_BehindWall = 9,
		CoverDesc_BehindStatue = 10,
		CoverDesc_BehindSandbags = 11,
		CoverDesc_MAX = 12,
	}
	enum ECoverType : ubyte
	{
		CT_None = 0,
		CT_Standing = 1,
		CT_MidLevel = 2,
		CT_MAX = 3,
	}
	enum ECoverAction : ubyte
	{
		CA_Default = 0,
		CA_BlindLeft = 1,
		CA_BlindRight = 2,
		CA_LeanLeft = 3,
		CA_LeanRight = 4,
		CA_PopUp = 5,
		CA_BlindUp = 6,
		CA_PeekLeft = 7,
		CA_PeekRight = 8,
		CA_PeekUp = 9,
		CA_MAX = 10,
	}
	enum ECoverDirection : ubyte
	{
		CD_Default = 0,
		CD_Left = 1,
		CD_Right = 2,
		CD_Up = 3,
		CD_MAX = 4,
	}
	enum EFireLinkID : ubyte
	{
		FLI_FireLink = 0,
		FLI_RejectedFireLink = 1,
		FLI_MAX = 2,
	}
	struct CovPosInfo
	{
		private ubyte __buffer__[52];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.CoverLink.CovPosInfo")); }
		@property final auto ref
		{
			CoverLink Link() { mixin(MGPS("CoverLink", 0)); }
			int LtSlotIdx() { mixin(MGPS("int", 4)); }
			int RtSlotIdx() { mixin(MGPS("int", 8)); }
			float LtToRtPct() { mixin(MGPS("float", 12)); }
			Vector Location() { mixin(MGPS("Vector", 16)); }
			Vector Normal() { mixin(MGPS("Vector", 28)); }
			Vector Tangent() { mixin(MGPS("Vector", 40)); }
		}
	}
	struct FireLinkItem
	{
		private ubyte __buffer__[4];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.CoverLink.FireLinkItem")); }
		@property final auto ref
		{
			CoverLink.ECoverAction DestAction() { mixin(MGPS("CoverLink.ECoverAction", 3)); }
			CoverLink.ECoverType DestType() { mixin(MGPS("CoverLink.ECoverType", 2)); }
			CoverLink.ECoverAction SrcAction() { mixin(MGPS("CoverLink.ECoverAction", 1)); }
			CoverLink.ECoverType SrcType() { mixin(MGPS("CoverLink.ECoverType", 0)); }
		}
	}
	struct FireLink
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.CoverLink.FireLink")); }
		@property final
		{
			auto ref
			{
				ScriptArray!(ubyte) Interactions() { mixin(MGPS("ScriptArray!(ubyte)", 0)); }
				int PackedProperties_CoverPairRefAndDynamicInfo() { mixin(MGPS("int", 12)); }
			}
			bool bDynamicIndexInited() { mixin(MGBPS(16, 0x2)); }
			bool bDynamicIndexInited(bool val) { mixin(MSBPS(16, 0x2)); }
			bool bFallbackLink() { mixin(MGBPS(16, 0x1)); }
			bool bFallbackLink(bool val) { mixin(MSBPS(16, 0x1)); }
		}
	}
	struct DynamicLinkInfo
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.CoverLink.DynamicLinkInfo")); }
		@property final auto ref
		{
			Vector LastSrcLocation() { mixin(MGPS("Vector", 12)); }
			Vector LastTargetLocation() { mixin(MGPS("Vector", 0)); }
		}
	}
	struct ExposedLink
	{
		private ubyte __buffer__[25];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.CoverLink.ExposedLink")); }
		@property final auto ref
		{
			ubyte ExposedScale() { mixin(MGPS("ubyte", 24)); }
			CoverLink.CoverReference TargetActor() { mixin(MGPS("CoverLink.CoverReference", 0)); }
		}
	}
	struct CoverReference
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.CoverLink.CoverReference")); }
		@property final auto ref
		{
			UObject.Guid GuidVar() { mixin(MGPS("UObject.Guid", 4)); }
			Actor ActorVar() { mixin(MGPS("Actor", 0)); }
		}
		@property final auto ref int SlotIdx() { mixin(MGPS("int", 20)); }
	}
	struct SlotMoveRef
	{
		private ubyte __buffer__[80];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.CoverLink.SlotMoveRef")); }
		@property final auto ref
		{
			int Direction() { mixin(MGPS("int", 76)); }
			Actor.BasedPosition Dest() { mixin(MGPS("Actor.BasedPosition", 24)); }
			Pylon.PolyReference Poly() { mixin(MGPS("Pylon.PolyReference", 0)); }
		}
	}
	struct CoverSlot
	{
		private ubyte __buffer__[116];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.CoverLink.CoverSlot")); }
		@property final
		{
			auto ref
			{
				ScriptArray!(CoverLink.ECoverAction) Actions() { mixin(MGPS("ScriptArray!(CoverLink.ECoverAction)", 36)); }
				ScriptArray!(CoverLink.FireLink) FireLinks() { mixin(MGPS("ScriptArray!(CoverLink.FireLink)", 48)); }
				ScriptArray!(CoverLink.FireLink) RejectedFireLinks() { mixin(MGPS("ScriptArray!(CoverLink.FireLink)", 60)); }
				ScriptArray!(int) ExposedCoverPackedProperties() { mixin(MGPS("ScriptArray!(int)", 72)); }
				ScriptArray!(CoverLink.SlotMoveRef) SlipRefs() { mixin(MGPS("ScriptArray!(CoverLink.SlotMoveRef)", 88)); }
				ScriptArray!(CoverLink.CoverInfo) OverlapClaimsList() { mixin(MGPS("ScriptArray!(CoverLink.CoverInfo)", 100)); }
				int TurnTargetPackedProperties() { mixin(MGPS("int", 84)); }
				Rotator RotationOffset() { mixin(MGPS("Rotator", 24)); }
				Vector LocationOffset() { mixin(MGPS("Vector", 12)); }
				CoverLink.ECoverLocationDescription LocationDescription() { mixin(MGPS("CoverLink.ECoverLocationDescription", 10)); }
				CoverLink.ECoverType CoverType() { mixin(MGPS("CoverLink.ECoverType", 9)); }
				CoverLink.ECoverType ForceCoverType() { mixin(MGPS("CoverLink.ECoverType", 8)); }
				float SlotValidAfterTime() { mixin(MGPS("float", 4)); }
				Pawn SlotOwner() { mixin(MGPS("Pawn", 0)); }
			}
			bool bFailedToFindSurface() { mixin(MGBPS(112, 0x200000)); }
			bool bFailedToFindSurface(bool val) { mixin(MSBPS(112, 0x200000)); }
			bool bSelected() { mixin(MGBPS(112, 0x100000)); }
			bool bSelected(bool val) { mixin(MSBPS(112, 0x100000)); }
			bool bPlayerOnly() { mixin(MGBPS(112, 0x80000)); }
			bool bPlayerOnly(bool val) { mixin(MSBPS(112, 0x80000)); }
			bool bForceNoGroundAdjust() { mixin(MGBPS(112, 0x40000)); }
			bool bForceNoGroundAdjust(bool val) { mixin(MSBPS(112, 0x40000)); }
			bool bAllowSwatTurn() { mixin(MGBPS(112, 0x20000)); }
			bool bAllowSwatTurn(bool val) { mixin(MSBPS(112, 0x20000)); }
			bool bAllowClimbUp() { mixin(MGBPS(112, 0x10000)); }
			bool bAllowClimbUp(bool val) { mixin(MSBPS(112, 0x10000)); }
			bool bAllowCoverSlip() { mixin(MGBPS(112, 0x8000)); }
			bool bAllowCoverSlip(bool val) { mixin(MSBPS(112, 0x8000)); }
			bool bAllowMantle() { mixin(MGBPS(112, 0x4000)); }
			bool bAllowMantle(bool val) { mixin(MSBPS(112, 0x4000)); }
			bool bAllowPopup() { mixin(MGBPS(112, 0x2000)); }
			bool bAllowPopup(bool val) { mixin(MSBPS(112, 0x2000)); }
			bool bEnabled() { mixin(MGBPS(112, 0x1000)); }
			bool bEnabled(bool val) { mixin(MSBPS(112, 0x1000)); }
			bool bCanSwatTurn_Right() { mixin(MGBPS(112, 0x800)); }
			bool bCanSwatTurn_Right(bool val) { mixin(MSBPS(112, 0x800)); }
			bool bCanSwatTurn_Left() { mixin(MGBPS(112, 0x400)); }
			bool bCanSwatTurn_Left(bool val) { mixin(MSBPS(112, 0x400)); }
			bool bCanCoverSlip_Right() { mixin(MGBPS(112, 0x200)); }
			bool bCanCoverSlip_Right(bool val) { mixin(MSBPS(112, 0x200)); }
			bool bCanCoverSlip_Left() { mixin(MGBPS(112, 0x100)); }
			bool bCanCoverSlip_Left(bool val) { mixin(MSBPS(112, 0x100)); }
			bool bForceCanCoverSlip_Right() { mixin(MGBPS(112, 0x80)); }
			bool bForceCanCoverSlip_Right(bool val) { mixin(MSBPS(112, 0x80)); }
			bool bForceCanCoverSlip_Left() { mixin(MGBPS(112, 0x40)); }
			bool bForceCanCoverSlip_Left(bool val) { mixin(MSBPS(112, 0x40)); }
			bool bCanClimbUp() { mixin(MGBPS(112, 0x20)); }
			bool bCanClimbUp(bool val) { mixin(MSBPS(112, 0x20)); }
			bool bCanMantle() { mixin(MGBPS(112, 0x10)); }
			bool bCanMantle(bool val) { mixin(MSBPS(112, 0x10)); }
			bool bCanPopUp() { mixin(MGBPS(112, 0x8)); }
			bool bCanPopUp(bool val) { mixin(MSBPS(112, 0x8)); }
			bool bForceCanPopUp() { mixin(MGBPS(112, 0x4)); }
			bool bForceCanPopUp(bool val) { mixin(MSBPS(112, 0x4)); }
			bool bLeanRight() { mixin(MGBPS(112, 0x2)); }
			bool bLeanRight(bool val) { mixin(MSBPS(112, 0x2)); }
			bool bLeanLeft() { mixin(MGBPS(112, 0x1)); }
			bool bLeanLeft(bool val) { mixin(MSBPS(112, 0x1)); }
		}
	}
	struct CoverInfo
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.CoverLink.CoverInfo")); }
		@property final auto ref
		{
			CoverLink Link() { mixin(MGPS("CoverLink", 0)); }
			int SlotIdx() { mixin(MGPS("int", 4)); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(CoverLink.CoverSlot) Slots() { mixin(MGPC("ScriptArray!(CoverLink.CoverSlot)", 700)); }
			ScriptArray!(Pawn) Claims() { mixin(MGPC("ScriptArray!(Pawn)", 724)); }
			float LeanTraceDist() { mixin(MGPC("float", 696)); }
			ScriptArray!(CoverLink.DynamicLinkInfo) DynamicLinkInfos() { mixin(MGPC("ScriptArray!(CoverLink.DynamicLinkInfo)", 712)); }
			float InvalidateDistance() { mixin(MGPC("float", 736)); }
			float MaxFireLinkDist() { mixin(MGPC("float", 740)); }
			Vector CircularOrigin() { mixin(MGPC("Vector", 744)); }
			float CircularRadius() { mixin(MGPC("float", 756)); }
			float AlignDist() { mixin(MGPC("float", 760)); }
			float AutoCoverSlotInterval() { mixin(MGPC("float", 764)); }
			float StandHeight() { mixin(MGPC("float", 768)); }
			float MidHeight() { mixin(MGPC("float", 772)); }
			Vector StandingLeanOffset() { mixin(MGPC("Vector", 776)); }
			Vector CrouchLeanOffset() { mixin(MGPC("Vector", 788)); }
			Vector PopupOffset() { mixin(MGPC("Vector", 800)); }
			float SlipDist() { mixin(MGPC("float", 812)); }
			float TurnDist() { mixin(MGPC("float", 816)); }
			float DangerScale() { mixin(MGPC("float", 820)); }
			CoverLink NextCoverLink() { mixin(MGPC("CoverLink", 824)); }
			CoverLink.ECoverLocationDescription LocationDescription() { mixin(MGPC("CoverLink.ECoverLocationDescription", 828)); }
		}
		bool bClaimAllSlots() { mixin(MGBPC(692, 0x4)); }
		bool bClaimAllSlots(bool val) { mixin(MSBPC(692, 0x4)); }
		bool bCircular() { mixin(MGBPC(692, 0x20)); }
		bool bCircular(bool val) { mixin(MSBPC(692, 0x20)); }
		bool bDisabled() { mixin(MGBPC(692, 0x2)); }
		bool bDisabled(bool val) { mixin(MSBPC(692, 0x2)); }
		bool bFractureOnTouch() { mixin(MGBPC(692, 0x200)); }
		bool bFractureOnTouch(bool val) { mixin(MSBPC(692, 0x200)); }
		bool GLOBAL_bUseSlotMarkers() { mixin(MGBPC(692, 0x1)); }
		bool GLOBAL_bUseSlotMarkers(bool val) { mixin(MSBPC(692, 0x1)); }
		bool bAutoSort() { mixin(MGBPC(692, 0x8)); }
		bool bAutoSort(bool val) { mixin(MSBPC(692, 0x8)); }
		bool bAutoAdjust() { mixin(MGBPC(692, 0x10)); }
		bool bAutoAdjust(bool val) { mixin(MSBPC(692, 0x10)); }
		bool bLooped() { mixin(MGBPC(692, 0x40)); }
		bool bLooped(bool val) { mixin(MSBPC(692, 0x40)); }
		bool bPlayerOnly() { mixin(MGBPC(692, 0x80)); }
		bool bPlayerOnly(bool val) { mixin(MSBPC(692, 0x80)); }
		bool bDynamicCover() { mixin(MGBPC(692, 0x100)); }
		bool bDynamicCover(bool val) { mixin(MSBPC(692, 0x100)); }
		bool bDebug_FireLinks() { mixin(MGBPC(692, 0x400)); }
		bool bDebug_FireLinks(bool val) { mixin(MSBPC(692, 0x400)); }
		bool bDebug_ExposedLinks() { mixin(MGBPC(692, 0x800)); }
		bool bDebug_ExposedLinks(bool val) { mixin(MSBPC(692, 0x800)); }
		bool bDebug_CoverGen() { mixin(MGBPC(692, 0x1000)); }
		bool bDebug_CoverGen(bool val) { mixin(MSBPC(692, 0x1000)); }
		bool bDoAutoSlotDensityFixup() { mixin(MGBPC(692, 0x2000)); }
		bool bDoAutoSlotDensityFixup(bool val) { mixin(MSBPC(692, 0x2000)); }
	}
final:
	bool GetFireLinkTargetCoverInfo(int SlotIdx, int FireLinkIdx, ref CoverLink.CoverInfo out_Info, CoverLink.EFireLinkID* ArrayID = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		*cast(int*)&params[4] = FireLinkIdx;
		*cast(CoverLink.CoverInfo*)&params[8] = out_Info;
		if (ArrayID !is null)
			*cast(CoverLink.EFireLinkID*)&params[16] = *ArrayID;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFireLinkTargetCoverInfo, params.ptr, cast(void*)0);
		out_Info = *cast(CoverLink.CoverInfo*)&params[8];
		return *cast(bool*)&params[20];
	}
	static ubyte PackFireLinkInteractionInfo(CoverLink.ECoverType SrcType, CoverLink.ECoverAction SrcAction, CoverLink.ECoverType DestType, CoverLink.ECoverAction DestAction)
	{
		ubyte params[5];
		params[] = 0;
		*cast(CoverLink.ECoverType*)params.ptr = SrcType;
		*cast(CoverLink.ECoverAction*)&params[1] = SrcAction;
		*cast(CoverLink.ECoverType*)&params[2] = DestType;
		*cast(CoverLink.ECoverAction*)&params[3] = DestAction;
		StaticClass.ProcessEvent(Functions.PackFireLinkInteractionInfo, params.ptr, cast(void*)0);
		return params[4];
	}
	static void UnPackFireLinkInteractionInfo(in ubyte PackedByte, ref CoverLink.ECoverType SrcType, ref CoverLink.ECoverAction SrcAction, ref CoverLink.ECoverType DestType, ref CoverLink.ECoverAction DestAction)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = cast(ubyte)PackedByte;
		*cast(CoverLink.ECoverType*)&params[1] = SrcType;
		*cast(CoverLink.ECoverAction*)&params[2] = SrcAction;
		*cast(CoverLink.ECoverType*)&params[3] = DestType;
		*cast(CoverLink.ECoverAction*)&params[4] = DestAction;
		StaticClass.ProcessEvent(Functions.UnPackFireLinkInteractionInfo, params.ptr, cast(void*)0);
		SrcType = *cast(CoverLink.ECoverType*)&params[1];
		SrcAction = *cast(CoverLink.ECoverAction*)&params[2];
		DestType = *cast(CoverLink.ECoverType*)&params[3];
		DestAction = *cast(CoverLink.ECoverAction*)&params[4];
	}
	Vector GetSlotLocation(int SlotIdx, bool* bForceUseOffset = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		if (bForceUseOffset !is null)
			*cast(bool*)&params[4] = *bForceUseOffset;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSlotLocation, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[8];
	}
	Rotator GetSlotRotation(int SlotIdx, bool* bForceUseOffset = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		if (bForceUseOffset !is null)
			*cast(bool*)&params[4] = *bForceUseOffset;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSlotRotation, params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[8];
	}
	Vector GetSlotViewPoint(int SlotIdx, CoverLink.ECoverType* Type = null, CoverLink.ECoverAction* Action = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		if (Type !is null)
			*cast(CoverLink.ECoverType*)&params[4] = *Type;
		if (Action !is null)
			*cast(CoverLink.ECoverAction*)&params[5] = *Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSlotViewPoint, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[8];
	}
	bool IsExposedTo(int SlotIdx, CoverLink.CoverInfo ChkSlot, ref float out_ExposedScale)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		*cast(CoverLink.CoverInfo*)&params[4] = ChkSlot;
		*cast(float*)&params[12] = out_ExposedScale;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsExposedTo, params.ptr, cast(void*)0);
		out_ExposedScale = *cast(float*)&params[12];
		return *cast(bool*)&params[16];
	}
	void SetInvalidUntil(int SlotIdx, float TimeToBecomeValid)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		*cast(float*)&params[4] = TimeToBecomeValid;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetInvalidUntil, params.ptr, cast(void*)0);
	}
	bool Claim(Pawn NewClaim, int SlotIdx)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = NewClaim;
		*cast(int*)&params[4] = SlotIdx;
		(cast(ScriptObject)this).ProcessEvent(Functions.Claim, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool UnClaim(Pawn OldClaim, int SlotIdx, bool bUnclaimAll)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Pawn*)params.ptr = OldClaim;
		*cast(int*)&params[4] = SlotIdx;
		*cast(bool*)&params[8] = bUnclaimAll;
		(cast(ScriptObject)this).ProcessEvent(Functions.UnClaim, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool IsValidClaim(Pawn ChkClaim, int SlotIdx, bool* bSkipTeamCheck = null, bool* bSkipOverlapCheck = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Pawn*)params.ptr = ChkClaim;
		*cast(int*)&params[4] = SlotIdx;
		if (bSkipTeamCheck !is null)
			*cast(bool*)&params[8] = *bSkipTeamCheck;
		if (bSkipOverlapCheck !is null)
			*cast(bool*)&params[12] = *bSkipOverlapCheck;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsValidClaim, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool IsValidClaimBetween(Pawn ChkClaim, int StartSlotIdx, int EndSlotIdx, bool* bSkipTeamCheck = null, bool* bSkipOverlapCheck = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Pawn*)params.ptr = ChkClaim;
		*cast(int*)&params[4] = StartSlotIdx;
		*cast(int*)&params[8] = EndSlotIdx;
		if (bSkipTeamCheck !is null)
			*cast(bool*)&params[12] = *bSkipTeamCheck;
		if (bSkipOverlapCheck !is null)
			*cast(bool*)&params[16] = *bSkipOverlapCheck;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsValidClaimBetween, params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	bool IsStationarySlot(int SlotIdx)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsStationarySlot, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool IsEdgeSlot(int SlotIdx, bool* bIgnoreLeans = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		if (bIgnoreLeans !is null)
			*cast(bool*)&params[4] = *bIgnoreLeans;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsEdgeSlot, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool FindSlots(Vector CheckLocation, float MaxDistance, ref int LeftSlotIdx, ref int RightSlotIdx)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = CheckLocation;
		*cast(float*)&params[12] = MaxDistance;
		*cast(int*)&params[16] = LeftSlotIdx;
		*cast(int*)&params[20] = RightSlotIdx;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindSlots, params.ptr, cast(void*)0);
		LeftSlotIdx = *cast(int*)&params[16];
		RightSlotIdx = *cast(int*)&params[20];
		return *cast(bool*)&params[24];
	}
	bool IsLeftEdgeSlot(int SlotIdx, bool bIgnoreLeans)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		*cast(bool*)&params[4] = bIgnoreLeans;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsLeftEdgeSlot, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool IsRightEdgeSlot(int SlotIdx, bool bIgnoreLeans)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		*cast(bool*)&params[4] = bIgnoreLeans;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsRightEdgeSlot, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	int GetSlotIdxToLeft(int SlotIdx, int* Cnt = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		if (Cnt !is null)
			*cast(int*)&params[4] = *Cnt;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSlotIdxToLeft, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	int GetSlotIdxToRight(int SlotIdx, int* Cnt = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		if (Cnt !is null)
			*cast(int*)&params[4] = *Cnt;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSlotIdxToRight, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	bool AllowRightTransition(int SlotIdx)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowRightTransition, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool AllowLeftTransition(int SlotIdx)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowLeftTransition, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool GetFireLinkTo(int SlotIdx, CoverLink.CoverInfo ChkCover, CoverLink.ECoverAction ChkAction, CoverLink.ECoverType ChkType, ref int out_FireLinkIdx, ref ScriptArray!(int) out_Items)
	{
		ubyte params[36];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		*cast(CoverLink.CoverInfo*)&params[4] = ChkCover;
		*cast(CoverLink.ECoverAction*)&params[12] = ChkAction;
		*cast(CoverLink.ECoverType*)&params[13] = ChkType;
		*cast(int*)&params[16] = out_FireLinkIdx;
		*cast(ScriptArray!(int)*)&params[20] = out_Items;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFireLinkTo, params.ptr, cast(void*)0);
		out_FireLinkIdx = *cast(int*)&params[16];
		out_Items = *cast(ScriptArray!(int)*)&params[20];
		return *cast(bool*)&params[32];
	}
	bool HasFireLinkTo(int SlotIdx, CoverLink.CoverInfo ChkCover, bool* bAllowFallbackLinks = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		*cast(CoverLink.CoverInfo*)&params[4] = ChkCover;
		if (bAllowFallbackLinks !is null)
			*cast(bool*)&params[12] = *bAllowFallbackLinks;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasFireLinkTo, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void GetSlotActions(int SlotIdx, ref ScriptArray!(CoverLink.ECoverAction) Actions)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		*cast(ScriptArray!(CoverLink.ECoverAction)*)&params[4] = Actions;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSlotActions, params.ptr, cast(void*)0);
		Actions = *cast(ScriptArray!(CoverLink.ECoverAction)*)&params[4];
	}
	void SetDisabled(bool bNewDisabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewDisabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetDisabled, params.ptr, cast(void*)0);
	}
	void SetSlotEnabled(int SlotIdx, bool bEnable)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		*cast(bool*)&params[4] = bEnable;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSlotEnabled, params.ptr, cast(void*)0);
	}
	void NotifySlotOwnerCoverDisabled(int SlotIdx, bool* bAIOnly = null)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		if (bAIOnly !is null)
			*cast(bool*)&params[4] = *bAIOnly;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifySlotOwnerCoverDisabled, params.ptr, cast(void*)0);
	}
	void SetSlotPlayerOnly(int SlotIdx, bool bInPlayerOnly)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		*cast(bool*)&params[4] = bInPlayerOnly;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSlotPlayerOnly, params.ptr, cast(void*)0);
	}
	void OnModifyCover(SeqAct_ModifyCover Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_ModifyCover*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnModifyCover, params.ptr, cast(void*)0);
	}
	bool AutoAdjustSlot(int SlotIdx, bool bOnlyCheckLeans)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		*cast(bool*)&params[4] = bOnlyCheckLeans;
		(cast(ScriptObject)this).ProcessEvent(Functions.AutoAdjustSlot, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool IsEnabled()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsEnabled, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void OnToggle(SeqAct_Toggle inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggle, params.ptr, cast(void*)0);
	}
	void CreateCheckpointRecord(ref NavigationPoint.CheckpointRecord Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(NavigationPoint.CheckpointRecord*)params.ptr = Record;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateCheckpointRecord, params.ptr, cast(void*)0);
		Record = *cast(NavigationPoint.CheckpointRecord*)params.ptr;
	}
	void ApplyCheckpointRecord(ref in NavigationPoint.CheckpointRecord Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(NavigationPoint.CheckpointRecord*)params.ptr = cast(NavigationPoint.CheckpointRecord)Record;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyCheckpointRecord, params.ptr, cast(void*)0);
	}
	void ShutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShutDown, cast(void*)0, cast(void*)0);
	}
	bool GetSwatTurnTarget(int SlotIdx, int Direction, ref CoverLink.CoverInfo out_Info)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		*cast(int*)&params[4] = Direction;
		*cast(CoverLink.CoverInfo*)&params[8] = out_Info;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSwatTurnTarget, params.ptr, cast(void*)0);
		out_Info = *cast(CoverLink.CoverInfo*)&params[8];
		return *cast(bool*)&params[16];
	}
	void BreakFracturedMeshes(Vector Origin, float Radius, float RBStrength, ScriptClass pDamageType)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = Origin;
		*cast(float*)&params[12] = Radius;
		*cast(float*)&params[16] = RBStrength;
		*cast(ScriptClass*)&params[20] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(Functions.BreakFracturedMeshes, params.ptr, cast(void*)0);
	}
	int AddCoverSlot(Vector SlotLocation, Rotator SlotRotation, int* SlotIdx = null, bool* bForceSlotUpdate = null, Scout* pScout = null)
	{
		ubyte params[40];
		params[] = 0;
		*cast(Vector*)params.ptr = SlotLocation;
		*cast(Rotator*)&params[12] = SlotRotation;
		if (SlotIdx !is null)
			*cast(int*)&params[24] = *SlotIdx;
		if (bForceSlotUpdate !is null)
			*cast(bool*)&params[28] = *bForceSlotUpdate;
		if (pScout !is null)
			*cast(Scout*)&params[32] = *pScout;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddCoverSlot, params.ptr, cast(void*)0);
		return *cast(int*)&params[36];
	}
	ScriptString GetDebugString(int SlotIdx)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDebugString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	CoverLink.ECoverLocationDescription GetLocationDescription(int SlotIdx)
	{
		ubyte params[5];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLocationDescription, params.ptr, cast(void*)0);
		return *cast(CoverLink.ECoverLocationDescription*)&params[4];
	}
	ScriptString GetDebugAbbrev()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDebugAbbrev, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
