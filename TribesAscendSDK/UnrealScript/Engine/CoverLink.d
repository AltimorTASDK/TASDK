module UnrealScript.Engine.CoverLink;

import ScriptClasses;
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
	public static immutable auto COVERLINK_DangerDist = 153.0f;
	public static immutable auto COVERLINK_EdgeExposureDot = 0.85f;
	public static immutable auto COVERLINK_EdgeCheckDot = 0.25f;
	public static immutable auto COVERLINK_ExposureDot = 0.4f;
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
		public @property final auto ref CoverLink Link() { return *cast(CoverLink*)(cast(size_t)&this + 0); }
		private ubyte __Link[4];
		public @property final auto ref int LtSlotIdx() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __LtSlotIdx[4];
		public @property final auto ref int RtSlotIdx() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __RtSlotIdx[4];
		public @property final auto ref float LtToRtPct() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __LtToRtPct[4];
		public @property final auto ref Vector Location() { return *cast(Vector*)(cast(size_t)&this + 16); }
		private ubyte __Location[12];
		public @property final auto ref Vector Normal() { return *cast(Vector*)(cast(size_t)&this + 28); }
		private ubyte __Normal[12];
		public @property final auto ref Vector Tangent() { return *cast(Vector*)(cast(size_t)&this + 40); }
		private ubyte __Tangent[12];
	}
	struct FireLinkItem
	{
		public @property final auto ref CoverLink.ECoverAction DestAction() { return *cast(CoverLink.ECoverAction*)(cast(size_t)&this + 3); }
		private ubyte __DestAction[1];
		public @property final auto ref CoverLink.ECoverType DestType() { return *cast(CoverLink.ECoverType*)(cast(size_t)&this + 2); }
		private ubyte __DestType[1];
		public @property final auto ref CoverLink.ECoverAction SrcAction() { return *cast(CoverLink.ECoverAction*)(cast(size_t)&this + 1); }
		private ubyte __SrcAction[1];
		public @property final auto ref CoverLink.ECoverType SrcType() { return *cast(CoverLink.ECoverType*)(cast(size_t)&this + 0); }
		private ubyte __SrcType[1];
	}
	struct FireLink
	{
		public @property final auto ref ScriptArray!(ubyte) Interactions() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)&this + 0); }
		private ubyte __Interactions[12];
		public @property final bool bDynamicIndexInited() { return (*cast(uint*)(cast(size_t)&this + 16) & 0x2) != 0; }
		public @property final bool bDynamicIndexInited(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 16) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 16) &= ~0x2; } return val; }
		private ubyte __bDynamicIndexInited[4];
		public @property final bool bFallbackLink() { return (*cast(uint*)(cast(size_t)&this + 16) & 0x1) != 0; }
		public @property final bool bFallbackLink(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 16) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 16) &= ~0x1; } return val; }
		private ubyte __bFallbackLink[4];
		public @property final auto ref int PackedProperties_CoverPairRefAndDynamicInfo() { return *cast(int*)(cast(size_t)&this + 12); }
		private ubyte __PackedProperties_CoverPairRefAndDynamicInfo[4];
	}
	struct DynamicLinkInfo
	{
		public @property final auto ref Vector LastSrcLocation() { return *cast(Vector*)(cast(size_t)&this + 12); }
		private ubyte __LastSrcLocation[12];
		public @property final auto ref Vector LastTargetLocation() { return *cast(Vector*)(cast(size_t)&this + 0); }
		private ubyte __LastTargetLocation[12];
	}
	struct ExposedLink
	{
		public @property final auto ref ubyte ExposedScale() { return *cast(ubyte*)(cast(size_t)&this + 24); }
		private ubyte __ExposedScale[1];
		public @property final auto ref CoverLink.CoverReference TargetActor() { return *cast(CoverLink.CoverReference*)(cast(size_t)&this + 0); }
		private ubyte __TargetActor[24];
	}
	struct CoverReference
	{
		// WARNING: Property 'Guid' has the same name as a defined type!
		// WARNING: Property 'Actor' has the same name as a defined type!
		public @property final auto ref int SlotIdx() { return *cast(int*)(cast(size_t)&this + 20); }
		private ubyte __SlotIdx[4];
	}
	struct SlotMoveRef
	{
		public @property final auto ref int Direction() { return *cast(int*)(cast(size_t)&this + 76); }
		private ubyte __Direction[4];
		public @property final auto ref Actor.BasedPosition Dest() { return *cast(Actor.BasedPosition*)(cast(size_t)&this + 24); }
		private ubyte __Dest[52];
		public @property final auto ref Pylon.PolyReference Poly() { return *cast(Pylon.PolyReference*)(cast(size_t)&this + 0); }
		private ubyte __Poly[24];
	}
	struct CoverSlot
	{
		public @property final auto ref ScriptArray!(CoverLink.ECoverAction) Actions() { return *cast(ScriptArray!(CoverLink.ECoverAction)*)(cast(size_t)&this + 36); }
		private ubyte __Actions[12];
		public @property final auto ref ScriptArray!(CoverLink.FireLink) FireLinks() { return *cast(ScriptArray!(CoverLink.FireLink)*)(cast(size_t)&this + 48); }
		private ubyte __FireLinks[12];
		public @property final auto ref ScriptArray!(CoverLink.FireLink) RejectedFireLinks() { return *cast(ScriptArray!(CoverLink.FireLink)*)(cast(size_t)&this + 60); }
		private ubyte __RejectedFireLinks[12];
		public @property final auto ref ScriptArray!(int) ExposedCoverPackedProperties() { return *cast(ScriptArray!(int)*)(cast(size_t)&this + 72); }
		private ubyte __ExposedCoverPackedProperties[12];
		public @property final auto ref ScriptArray!(CoverLink.SlotMoveRef) SlipRefs() { return *cast(ScriptArray!(CoverLink.SlotMoveRef)*)(cast(size_t)&this + 88); }
		private ubyte __SlipRefs[12];
		public @property final auto ref ScriptArray!(CoverLink.CoverInfo) OverlapClaimsList() { return *cast(ScriptArray!(CoverLink.CoverInfo)*)(cast(size_t)&this + 100); }
		private ubyte __OverlapClaimsList[12];
		public @property final bool bFailedToFindSurface() { return (*cast(uint*)(cast(size_t)&this + 112) & 0x200000) != 0; }
		public @property final bool bFailedToFindSurface(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 112) |= 0x200000; } else { *cast(uint*)(cast(size_t)&this + 112) &= ~0x200000; } return val; }
		private ubyte __bFailedToFindSurface[4];
		public @property final bool bSelected() { return (*cast(uint*)(cast(size_t)&this + 112) & 0x100000) != 0; }
		public @property final bool bSelected(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 112) |= 0x100000; } else { *cast(uint*)(cast(size_t)&this + 112) &= ~0x100000; } return val; }
		private ubyte __bSelected[4];
		public @property final bool bPlayerOnly() { return (*cast(uint*)(cast(size_t)&this + 112) & 0x80000) != 0; }
		public @property final bool bPlayerOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 112) |= 0x80000; } else { *cast(uint*)(cast(size_t)&this + 112) &= ~0x80000; } return val; }
		private ubyte __bPlayerOnly[4];
		public @property final bool bForceNoGroundAdjust() { return (*cast(uint*)(cast(size_t)&this + 112) & 0x40000) != 0; }
		public @property final bool bForceNoGroundAdjust(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 112) |= 0x40000; } else { *cast(uint*)(cast(size_t)&this + 112) &= ~0x40000; } return val; }
		private ubyte __bForceNoGroundAdjust[4];
		public @property final bool bAllowSwatTurn() { return (*cast(uint*)(cast(size_t)&this + 112) & 0x20000) != 0; }
		public @property final bool bAllowSwatTurn(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 112) |= 0x20000; } else { *cast(uint*)(cast(size_t)&this + 112) &= ~0x20000; } return val; }
		private ubyte __bAllowSwatTurn[4];
		public @property final bool bAllowClimbUp() { return (*cast(uint*)(cast(size_t)&this + 112) & 0x10000) != 0; }
		public @property final bool bAllowClimbUp(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 112) |= 0x10000; } else { *cast(uint*)(cast(size_t)&this + 112) &= ~0x10000; } return val; }
		private ubyte __bAllowClimbUp[4];
		public @property final bool bAllowCoverSlip() { return (*cast(uint*)(cast(size_t)&this + 112) & 0x8000) != 0; }
		public @property final bool bAllowCoverSlip(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 112) |= 0x8000; } else { *cast(uint*)(cast(size_t)&this + 112) &= ~0x8000; } return val; }
		private ubyte __bAllowCoverSlip[4];
		public @property final bool bAllowMantle() { return (*cast(uint*)(cast(size_t)&this + 112) & 0x4000) != 0; }
		public @property final bool bAllowMantle(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 112) |= 0x4000; } else { *cast(uint*)(cast(size_t)&this + 112) &= ~0x4000; } return val; }
		private ubyte __bAllowMantle[4];
		public @property final bool bAllowPopup() { return (*cast(uint*)(cast(size_t)&this + 112) & 0x2000) != 0; }
		public @property final bool bAllowPopup(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 112) |= 0x2000; } else { *cast(uint*)(cast(size_t)&this + 112) &= ~0x2000; } return val; }
		private ubyte __bAllowPopup[4];
		public @property final bool bEnabled() { return (*cast(uint*)(cast(size_t)&this + 112) & 0x1000) != 0; }
		public @property final bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 112) |= 0x1000; } else { *cast(uint*)(cast(size_t)&this + 112) &= ~0x1000; } return val; }
		private ubyte __bEnabled[4];
		public @property final bool bCanSwatTurn_Right() { return (*cast(uint*)(cast(size_t)&this + 112) & 0x800) != 0; }
		public @property final bool bCanSwatTurn_Right(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 112) |= 0x800; } else { *cast(uint*)(cast(size_t)&this + 112) &= ~0x800; } return val; }
		private ubyte __bCanSwatTurn_Right[4];
		public @property final bool bCanSwatTurn_Left() { return (*cast(uint*)(cast(size_t)&this + 112) & 0x400) != 0; }
		public @property final bool bCanSwatTurn_Left(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 112) |= 0x400; } else { *cast(uint*)(cast(size_t)&this + 112) &= ~0x400; } return val; }
		private ubyte __bCanSwatTurn_Left[4];
		public @property final bool bCanCoverSlip_Right() { return (*cast(uint*)(cast(size_t)&this + 112) & 0x200) != 0; }
		public @property final bool bCanCoverSlip_Right(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 112) |= 0x200; } else { *cast(uint*)(cast(size_t)&this + 112) &= ~0x200; } return val; }
		private ubyte __bCanCoverSlip_Right[4];
		public @property final bool bCanCoverSlip_Left() { return (*cast(uint*)(cast(size_t)&this + 112) & 0x100) != 0; }
		public @property final bool bCanCoverSlip_Left(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 112) |= 0x100; } else { *cast(uint*)(cast(size_t)&this + 112) &= ~0x100; } return val; }
		private ubyte __bCanCoverSlip_Left[4];
		public @property final bool bForceCanCoverSlip_Right() { return (*cast(uint*)(cast(size_t)&this + 112) & 0x80) != 0; }
		public @property final bool bForceCanCoverSlip_Right(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 112) |= 0x80; } else { *cast(uint*)(cast(size_t)&this + 112) &= ~0x80; } return val; }
		private ubyte __bForceCanCoverSlip_Right[4];
		public @property final bool bForceCanCoverSlip_Left() { return (*cast(uint*)(cast(size_t)&this + 112) & 0x40) != 0; }
		public @property final bool bForceCanCoverSlip_Left(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 112) |= 0x40; } else { *cast(uint*)(cast(size_t)&this + 112) &= ~0x40; } return val; }
		private ubyte __bForceCanCoverSlip_Left[4];
		public @property final bool bCanClimbUp() { return (*cast(uint*)(cast(size_t)&this + 112) & 0x20) != 0; }
		public @property final bool bCanClimbUp(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 112) |= 0x20; } else { *cast(uint*)(cast(size_t)&this + 112) &= ~0x20; } return val; }
		private ubyte __bCanClimbUp[4];
		public @property final bool bCanMantle() { return (*cast(uint*)(cast(size_t)&this + 112) & 0x10) != 0; }
		public @property final bool bCanMantle(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 112) |= 0x10; } else { *cast(uint*)(cast(size_t)&this + 112) &= ~0x10; } return val; }
		private ubyte __bCanMantle[4];
		public @property final bool bCanPopUp() { return (*cast(uint*)(cast(size_t)&this + 112) & 0x8) != 0; }
		public @property final bool bCanPopUp(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 112) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 112) &= ~0x8; } return val; }
		private ubyte __bCanPopUp[4];
		public @property final bool bForceCanPopUp() { return (*cast(uint*)(cast(size_t)&this + 112) & 0x4) != 0; }
		public @property final bool bForceCanPopUp(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 112) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 112) &= ~0x4; } return val; }
		private ubyte __bForceCanPopUp[4];
		public @property final bool bLeanRight() { return (*cast(uint*)(cast(size_t)&this + 112) & 0x2) != 0; }
		public @property final bool bLeanRight(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 112) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 112) &= ~0x2; } return val; }
		private ubyte __bLeanRight[4];
		public @property final bool bLeanLeft() { return (*cast(uint*)(cast(size_t)&this + 112) & 0x1) != 0; }
		public @property final bool bLeanLeft(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 112) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 112) &= ~0x1; } return val; }
		private ubyte __bLeanLeft[4];
		public @property final auto ref int TurnTargetPackedProperties() { return *cast(int*)(cast(size_t)&this + 84); }
		private ubyte __TurnTargetPackedProperties[4];
		public @property final auto ref Rotator RotationOffset() { return *cast(Rotator*)(cast(size_t)&this + 24); }
		private ubyte __RotationOffset[12];
		public @property final auto ref Vector LocationOffset() { return *cast(Vector*)(cast(size_t)&this + 12); }
		private ubyte __LocationOffset[12];
		public @property final auto ref CoverLink.ECoverLocationDescription LocationDescription() { return *cast(CoverLink.ECoverLocationDescription*)(cast(size_t)&this + 10); }
		private ubyte __LocationDescription[1];
		public @property final auto ref CoverLink.ECoverType CoverType() { return *cast(CoverLink.ECoverType*)(cast(size_t)&this + 9); }
		private ubyte __CoverType[1];
		public @property final auto ref CoverLink.ECoverType ForceCoverType() { return *cast(CoverLink.ECoverType*)(cast(size_t)&this + 8); }
		private ubyte __ForceCoverType[1];
		public @property final auto ref float SlotValidAfterTime() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __SlotValidAfterTime[4];
		public @property final auto ref Pawn SlotOwner() { return *cast(Pawn*)(cast(size_t)&this + 0); }
		private ubyte __SlotOwner[4];
	}
	struct CoverInfo
	{
		public @property final auto ref CoverLink Link() { return *cast(CoverLink*)(cast(size_t)&this + 0); }
		private ubyte __Link[4];
		public @property final auto ref int SlotIdx() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __SlotIdx[4];
	}
	public @property final auto ref ScriptArray!(CoverLink.CoverSlot) Slots() { return *cast(ScriptArray!(CoverLink.CoverSlot)*)(cast(size_t)cast(void*)this + 700); }
	public @property final bool bClaimAllSlots() { return (*cast(uint*)(cast(size_t)cast(void*)this + 692) & 0x4) != 0; }
	public @property final bool bClaimAllSlots(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 692) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 692) &= ~0x4; } return val; }
	public @property final auto ref ScriptArray!(Pawn) Claims() { return *cast(ScriptArray!(Pawn)*)(cast(size_t)cast(void*)this + 724); }
	public @property final bool bCircular() { return (*cast(uint*)(cast(size_t)cast(void*)this + 692) & 0x20) != 0; }
	public @property final bool bCircular(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 692) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 692) &= ~0x20; } return val; }
	public @property final bool bDisabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 692) & 0x2) != 0; }
	public @property final bool bDisabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 692) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 692) &= ~0x2; } return val; }
	public @property final bool bFractureOnTouch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 692) & 0x200) != 0; }
	public @property final bool bFractureOnTouch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 692) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 692) &= ~0x200; } return val; }
	public @property final bool GLOBAL_bUseSlotMarkers() { return (*cast(uint*)(cast(size_t)cast(void*)this + 692) & 0x1) != 0; }
	public @property final bool GLOBAL_bUseSlotMarkers(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 692) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 692) &= ~0x1; } return val; }
	public @property final bool bAutoSort() { return (*cast(uint*)(cast(size_t)cast(void*)this + 692) & 0x8) != 0; }
	public @property final bool bAutoSort(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 692) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 692) &= ~0x8; } return val; }
	public @property final bool bAutoAdjust() { return (*cast(uint*)(cast(size_t)cast(void*)this + 692) & 0x10) != 0; }
	public @property final bool bAutoAdjust(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 692) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 692) &= ~0x10; } return val; }
	public @property final bool bLooped() { return (*cast(uint*)(cast(size_t)cast(void*)this + 692) & 0x40) != 0; }
	public @property final bool bLooped(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 692) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 692) &= ~0x40; } return val; }
	public @property final bool bPlayerOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 692) & 0x80) != 0; }
	public @property final bool bPlayerOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 692) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 692) &= ~0x80; } return val; }
	public @property final bool bDynamicCover() { return (*cast(uint*)(cast(size_t)cast(void*)this + 692) & 0x100) != 0; }
	public @property final bool bDynamicCover(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 692) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 692) &= ~0x100; } return val; }
	public @property final bool bDebug_FireLinks() { return (*cast(uint*)(cast(size_t)cast(void*)this + 692) & 0x400) != 0; }
	public @property final bool bDebug_FireLinks(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 692) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 692) &= ~0x400; } return val; }
	public @property final bool bDebug_ExposedLinks() { return (*cast(uint*)(cast(size_t)cast(void*)this + 692) & 0x800) != 0; }
	public @property final bool bDebug_ExposedLinks(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 692) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 692) &= ~0x800; } return val; }
	public @property final bool bDebug_CoverGen() { return (*cast(uint*)(cast(size_t)cast(void*)this + 692) & 0x1000) != 0; }
	public @property final bool bDebug_CoverGen(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 692) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 692) &= ~0x1000; } return val; }
	public @property final bool bDoAutoSlotDensityFixup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 692) & 0x2000) != 0; }
	public @property final bool bDoAutoSlotDensityFixup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 692) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 692) &= ~0x2000; } return val; }
	public @property final auto ref float LeanTraceDist() { return *cast(float*)(cast(size_t)cast(void*)this + 696); }
	public @property final auto ref ScriptArray!(CoverLink.DynamicLinkInfo) DynamicLinkInfos() { return *cast(ScriptArray!(CoverLink.DynamicLinkInfo)*)(cast(size_t)cast(void*)this + 712); }
	public @property final auto ref float InvalidateDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 736); }
	public @property final auto ref float MaxFireLinkDist() { return *cast(float*)(cast(size_t)cast(void*)this + 740); }
	public @property final auto ref Vector CircularOrigin() { return *cast(Vector*)(cast(size_t)cast(void*)this + 744); }
	public @property final auto ref float CircularRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 756); }
	public @property final auto ref float AlignDist() { return *cast(float*)(cast(size_t)cast(void*)this + 760); }
	public @property final auto ref float AutoCoverSlotInterval() { return *cast(float*)(cast(size_t)cast(void*)this + 764); }
	public @property final auto ref float StandHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 768); }
	public @property final auto ref float MidHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 772); }
	public @property final auto ref Vector StandingLeanOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 776); }
	public @property final auto ref Vector CrouchLeanOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 788); }
	public @property final auto ref Vector PopupOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 800); }
	public @property final auto ref float SlipDist() { return *cast(float*)(cast(size_t)cast(void*)this + 812); }
	public @property final auto ref float TurnDist() { return *cast(float*)(cast(size_t)cast(void*)this + 816); }
	public @property final auto ref float DangerScale() { return *cast(float*)(cast(size_t)cast(void*)this + 820); }
	public @property final auto ref CoverLink NextCoverLink() { return *cast(CoverLink*)(cast(size_t)cast(void*)this + 824); }
	public @property final auto ref CoverLink.ECoverLocationDescription LocationDescription() { return *cast(CoverLink.ECoverLocationDescription*)(cast(size_t)cast(void*)this + 828); }
	final bool GetFireLinkTargetCoverInfo(int SlotIdx, int FireLinkIdx, CoverLink.CoverInfo* out_Info, CoverLink.EFireLinkID ArrayID)
	{
		ubyte params[21];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		*cast(int*)&params[4] = FireLinkIdx;
		*cast(CoverLink.CoverInfo*)&params[8] = *out_Info;
		*cast(CoverLink.EFireLinkID*)&params[16] = ArrayID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13204], params.ptr, cast(void*)0);
		*out_Info = *cast(CoverLink.CoverInfo*)&params[8];
		return *cast(bool*)&params[20];
	}
	final ubyte PackFireLinkInteractionInfo(CoverLink.ECoverType SrcType, CoverLink.ECoverAction SrcAction, CoverLink.ECoverType DestType, CoverLink.ECoverAction DestAction)
	{
		ubyte params[5];
		params[] = 0;
		*cast(CoverLink.ECoverType*)params.ptr = SrcType;
		*cast(CoverLink.ECoverAction*)&params[1] = SrcAction;
		*cast(CoverLink.ECoverType*)&params[2] = DestType;
		*cast(CoverLink.ECoverAction*)&params[3] = DestAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13210], params.ptr, cast(void*)0);
		return params[4];
	}
	final void UnPackFireLinkInteractionInfo(ubyte PackedByte, CoverLink.ECoverType* SrcType, CoverLink.ECoverAction* SrcAction, CoverLink.ECoverType* DestType, CoverLink.ECoverAction* DestAction)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = PackedByte;
		*cast(CoverLink.ECoverType*)&params[1] = *SrcType;
		*cast(CoverLink.ECoverAction*)&params[2] = *SrcAction;
		*cast(CoverLink.ECoverType*)&params[3] = *DestType;
		*cast(CoverLink.ECoverAction*)&params[4] = *DestAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13216], params.ptr, cast(void*)0);
		*SrcType = *cast(CoverLink.ECoverType*)&params[1];
		*SrcAction = *cast(CoverLink.ECoverAction*)&params[2];
		*DestType = *cast(CoverLink.ECoverType*)&params[3];
		*DestAction = *cast(CoverLink.ECoverAction*)&params[4];
	}
	final Vector GetSlotLocation(int SlotIdx, bool bForceUseOffset)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		*cast(bool*)&params[4] = bForceUseOffset;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13222], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[8];
	}
	final Rotator GetSlotRotation(int SlotIdx, bool bForceUseOffset)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		*cast(bool*)&params[4] = bForceUseOffset;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13226], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[8];
	}
	final Vector GetSlotViewPoint(int SlotIdx, CoverLink.ECoverType Type, CoverLink.ECoverAction Action)
	{
		ubyte params[18];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		*cast(CoverLink.ECoverType*)&params[4] = Type;
		*cast(CoverLink.ECoverAction*)&params[5] = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13230], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[8];
	}
	final bool IsExposedTo(int SlotIdx, CoverLink.CoverInfo ChkSlot, float* out_ExposedScale)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		*cast(CoverLink.CoverInfo*)&params[4] = ChkSlot;
		*cast(float*)&params[12] = *out_ExposedScale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13235], params.ptr, cast(void*)0);
		*out_ExposedScale = *cast(float*)&params[12];
		return *cast(bool*)&params[16];
	}
	final void SetInvalidUntil(int SlotIdx, float TimeToBecomeValid)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		*cast(float*)&params[4] = TimeToBecomeValid;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13240], params.ptr, cast(void*)0);
	}
	final bool Claim(Pawn NewClaim, int SlotIdx)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = NewClaim;
		*cast(int*)&params[4] = SlotIdx;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13244], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool UnClaim(Pawn OldClaim, int SlotIdx, bool bUnclaimAll)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Pawn*)params.ptr = OldClaim;
		*cast(int*)&params[4] = SlotIdx;
		*cast(bool*)&params[8] = bUnclaimAll;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13255], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool IsValidClaim(Pawn ChkClaim, int SlotIdx, bool bSkipTeamCheck, bool bSkipOverlapCheck)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Pawn*)params.ptr = ChkClaim;
		*cast(int*)&params[4] = SlotIdx;
		*cast(bool*)&params[8] = bSkipTeamCheck;
		*cast(bool*)&params[12] = bSkipOverlapCheck;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13263], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final bool IsValidClaimBetween(Pawn ChkClaim, int StartSlotIdx, int EndSlotIdx, bool bSkipTeamCheck, bool bSkipOverlapCheck)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Pawn*)params.ptr = ChkClaim;
		*cast(int*)&params[4] = StartSlotIdx;
		*cast(int*)&params[8] = EndSlotIdx;
		*cast(bool*)&params[12] = bSkipTeamCheck;
		*cast(bool*)&params[16] = bSkipOverlapCheck;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13269], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	final bool IsStationarySlot(int SlotIdx)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13276], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool IsEdgeSlot(int SlotIdx, bool bIgnoreLeans)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		*cast(bool*)&params[4] = bIgnoreLeans;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13280], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool FindSlots(Vector CheckLocation, float MaxDistance, int* LeftSlotIdx, int* RightSlotIdx)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = CheckLocation;
		*cast(float*)&params[12] = MaxDistance;
		*cast(int*)&params[16] = *LeftSlotIdx;
		*cast(int*)&params[20] = *RightSlotIdx;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13281], params.ptr, cast(void*)0);
		*LeftSlotIdx = *cast(int*)&params[16];
		*RightSlotIdx = *cast(int*)&params[20];
		return *cast(bool*)&params[24];
	}
	final bool IsLeftEdgeSlot(int SlotIdx, bool bIgnoreLeans)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		*cast(bool*)&params[4] = bIgnoreLeans;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13290], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool IsRightEdgeSlot(int SlotIdx, bool bIgnoreLeans)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		*cast(bool*)&params[4] = bIgnoreLeans;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13294], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final int GetSlotIdxToLeft(int SlotIdx, int Cnt)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		*cast(int*)&params[4] = Cnt;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13298], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final int GetSlotIdxToRight(int SlotIdx, int Cnt)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		*cast(int*)&params[4] = Cnt;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13302], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final bool AllowRightTransition(int SlotIdx)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13306], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool AllowLeftTransition(int SlotIdx)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13310], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool GetFireLinkTo(int SlotIdx, CoverLink.CoverInfo ChkCover, CoverLink.ECoverAction ChkAction, CoverLink.ECoverType ChkType, int* out_FireLinkIdx, ScriptArray!(int)* out_Items)
	{
		ubyte params[34];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		*cast(CoverLink.CoverInfo*)&params[4] = ChkCover;
		*cast(CoverLink.ECoverAction*)&params[12] = ChkAction;
		*cast(CoverLink.ECoverType*)&params[13] = ChkType;
		*cast(int*)&params[16] = *out_FireLinkIdx;
		*cast(ScriptArray!(int)*)&params[20] = *out_Items;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13314], params.ptr, cast(void*)0);
		*out_FireLinkIdx = *cast(int*)&params[16];
		*out_Items = *cast(ScriptArray!(int)*)&params[20];
		return *cast(bool*)&params[32];
	}
	final bool HasFireLinkTo(int SlotIdx, CoverLink.CoverInfo ChkCover, bool bAllowFallbackLinks)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		*cast(CoverLink.CoverInfo*)&params[4] = ChkCover;
		*cast(bool*)&params[12] = bAllowFallbackLinks;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13323], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final void GetSlotActions(int SlotIdx, ScriptArray!(CoverLink.ECoverAction)* Actions)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		*cast(ScriptArray!(CoverLink.ECoverAction)*)&params[4] = *Actions;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13328], params.ptr, cast(void*)0);
		*Actions = *cast(ScriptArray!(CoverLink.ECoverAction)*)&params[4];
	}
	final void SetDisabled(bool bNewDisabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewDisabled;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13332], params.ptr, cast(void*)0);
	}
	final void SetSlotEnabled(int SlotIdx, bool bEnable)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		*cast(bool*)&params[4] = bEnable;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13339], params.ptr, cast(void*)0);
	}
	final void NotifySlotOwnerCoverDisabled(int SlotIdx, bool bAIOnly)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		*cast(bool*)&params[4] = bAIOnly;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13342], params.ptr, cast(void*)0);
	}
	final void SetSlotPlayerOnly(int SlotIdx, bool bInPlayerOnly)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		*cast(bool*)&params[4] = bInPlayerOnly;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13347], params.ptr, cast(void*)0);
	}
	final void OnModifyCover(SeqAct_ModifyCover Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_ModifyCover*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13350], params.ptr, cast(void*)0);
	}
	final bool AutoAdjustSlot(int SlotIdx, bool bOnlyCheckLeans)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		*cast(bool*)&params[4] = bOnlyCheckLeans;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13358], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool IsEnabled()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13364], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void OnToggle(SeqAct_Toggle inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13366], params.ptr, cast(void*)0);
	}
	final void CreateCheckpointRecord(NavigationPoint.CheckpointRecord* Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(NavigationPoint.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13369], params.ptr, cast(void*)0);
		*Record = *cast(NavigationPoint.CheckpointRecord*)params.ptr;
	}
	final void ApplyCheckpointRecord(NavigationPoint.CheckpointRecord* Record)
	{
		ubyte params[4];
		params[] = 0;
		*cast(NavigationPoint.CheckpointRecord*)params.ptr = *Record;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13371], params.ptr, cast(void*)0);
		*Record = *cast(NavigationPoint.CheckpointRecord*)params.ptr;
	}
	final void ShutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13374], cast(void*)0, cast(void*)0);
	}
	final bool GetSwatTurnTarget(int SlotIdx, int Direction, CoverLink.CoverInfo* out_Info)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		*cast(int*)&params[4] = Direction;
		*cast(CoverLink.CoverInfo*)&params[8] = *out_Info;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13375], params.ptr, cast(void*)0);
		*out_Info = *cast(CoverLink.CoverInfo*)&params[8];
		return *cast(bool*)&params[16];
	}
	final void BreakFracturedMeshes(Vector Origin, float Radius, float RBStrength, ScriptClass DamageType)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = Origin;
		*cast(float*)&params[12] = Radius;
		*cast(float*)&params[16] = RBStrength;
		*cast(ScriptClass*)&params[20] = DamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13380], params.ptr, cast(void*)0);
	}
	final int AddCoverSlot(Vector SlotLocation, Rotator SlotRotation, int SlotIdx, bool bForceSlotUpdate, Scout pScout)
	{
		ubyte params[40];
		params[] = 0;
		*cast(Vector*)params.ptr = SlotLocation;
		*cast(Rotator*)&params[12] = SlotRotation;
		*cast(int*)&params[24] = SlotIdx;
		*cast(bool*)&params[28] = bForceSlotUpdate;
		*cast(Scout*)&params[32] = pScout;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13392], params.ptr, cast(void*)0);
		return *cast(int*)&params[36];
	}
	final ScriptString GetDebugString(int SlotIdx)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13399], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	final CoverLink.ECoverLocationDescription GetLocationDescription(int SlotIdx)
	{
		ubyte params[5];
		params[] = 0;
		*cast(int*)params.ptr = SlotIdx;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13402], params.ptr, cast(void*)0);
		return *cast(CoverLink.ECoverLocationDescription*)&params[4];
	}
	final ScriptString GetDebugAbbrev()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13405], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
