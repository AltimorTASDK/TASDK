module UnrealScript.TribesGame.TrFamilyInfo;

import ScriptClasses;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PhysicsAsset;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.AnimSet;
import UnrealScript.Engine.MorphTargetSet;
import UnrealScript.UTGame.UTFamilyInfo;
import UnrealScript.Engine.SkeletalMesh;
import UnrealScript.TribesGame.TrValueModifier;
import UnrealScript.Engine.AnimTree;

extern(C++) interface TrFamilyInfo : UTFamilyInfo
{
	public static immutable auto TR_MAX_FACTION_NBR = 3;
	struct DeviceSelectionList
	{
		public @property final auto ref ScriptClass DeviceClass() { return *cast(ScriptClass*)(cast(size_t)&this + 4); }
		private ubyte __DeviceClass[4];
		public @property final auto ref TrObject.TR_EQUIP_POINT EquipPoint() { return *cast(TrObject.TR_EQUIP_POINT*)(cast(size_t)&this + 0); }
		private ubyte __EquipPoint[1];
		public @property final auto ref ScriptString ContentDeviceClassString() { return *cast(ScriptString*)(cast(size_t)&this + 8); }
		private ubyte __ContentDeviceClassString[12];
	}
	struct SkillNode
	{
		public @property final auto ref int Cost() { return *cast(int*)(cast(size_t)&this + 24); }
		private ubyte __Cost[4];
		public @property final auto ref int ParentIndex() { return *cast(int*)(cast(size_t)&this + 20); }
		private ubyte __ParentIndex[4];
		public @property final auto ref int IconId() { return *cast(int*)(cast(size_t)&this + 16); }
		private ubyte __IconId[4];
		public @property final auto ref int IconPosY() { return *cast(int*)(cast(size_t)&this + 12); }
		private ubyte __IconPosY[4];
		public @property final auto ref int IconPosX() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __IconPosX[4];
		public @property final auto ref float Value() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __Value[4];
		public @property final auto ref TrValueModifier ValueModifier() { return *cast(TrValueModifier*)(cast(size_t)&this + 0); }
		private ubyte __ValueModifier[4];
	}
	public @property final auto ref int ClassId() { return *cast(int*)(cast(size_t)cast(void*)this + 636); }
	public @property final auto ref ScriptString FriendlyName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 624); }
	public @property final auto ref int m_IconId() { return *cast(int*)(cast(size_t)cast(void*)this + 784); }
	public @property final auto ref TrObject.TrClassType ClassType() { return *cast(TrObject.TrClassType*)(cast(size_t)cast(void*)this + 644); }
	public @property final auto ref ScriptString ClassDescription() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 660); }
	public @property final auto ref ScriptArray!(ScriptClass) VehicleSelectionList() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 424); }
	public @property final auto ref AnimTree m_3pAnimTreeTemplate() { return *cast(AnimTree*)(cast(size_t)cast(void*)this + 620); }
	public @property final auto ref float m_fFIMaxSkiSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 760); }
	public @property final auto ref SkeletalMesh m_FirstPersonBodyMesh() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 596); }
	public @property final auto ref float m_fCollisionRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 572); }
	public @property final auto ref float m_fCollisionHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 568); }
	public @property final auto ref float m_fMaxGroundSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 556); }
	public @property final auto ref float m_fMass() { return *cast(float*)(cast(size_t)cast(void*)this + 704); }
	public @property final auto ref float m_fFIMaxJettingSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 720); }
	public @property final auto ref float m_fFITerminalJettingSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 724); }
	public @property final auto ref float m_fFITerminalSkiSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 764); }
	public @property final auto ref float m_fFIMaxSpeedDecelerationRate() { return *cast(float*)(cast(size_t)cast(void*)this + 792); }
	public @property final auto ref float m_fFIAirControl() { return *cast(float*)(cast(size_t)cast(void*)this + 728); }
	public @property final auto ref float m_fFIAirSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 732); }
	public @property final auto ref float m_fFIPeakSkiControlSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 768); }
	public @property final auto ref float m_fFISkiControlSigmaSquare() { return *cast(float*)(cast(size_t)cast(void*)this + 772); }
	public @property final auto ref float m_fFIMaxSkiControlPct() { return *cast(float*)(cast(size_t)cast(void*)this + 776); }
	public @property final auto ref float m_fFISkiSlopeGravityBoost() { return *cast(float*)(cast(size_t)cast(void*)this + 780); }
	public @property final auto ref float m_fFIMaxJetpackBoostGroundspeed() { return *cast(float*)(cast(size_t)cast(void*)this + 736); }
	public @property final auto ref float m_fFIMaxStoppingDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 740); }
	public @property final auto ref float m_fFIFallVelocityTransfer() { return *cast(float*)(cast(size_t)cast(void*)this + 744); }
	public @property final auto ref float m_fFIMaxJetpackThrustSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 748); }
	public @property final auto ref float m_fFIAccelRateAtMaxThrustSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 752); }
	public @property final auto ref float m_fFIForwardJettingPct() { return *cast(float*)(cast(size_t)cast(void*)this + 756); }
	public @property final auto ref float m_FIJumpZ() { return *cast(float*)(cast(size_t)cast(void*)this + 1728); }
	public @property final auto ref float m_fFIAirAccelCapSpeedThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 1732); }
	public @property final auto ref float m_fFIAirAccelSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1736); }
	public @property final auto ref float m_fFISkiAccelCapSpeedThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 1740); }
	public @property final auto ref float m_fFISkiAccelPct() { return *cast(float*)(cast(size_t)cast(void*)this + 1744); }
	public @property final auto ref ScriptName m_nmHeadBone() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 584); }
	public @property final auto ref float m_fHeadHeightOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 580); }
	public @property final auto ref float m_fHeadRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 576); }
	public @property final auto ref float r_fMaxPowerPool() { return *cast(float*)(cast(size_t)cast(void*)this + 536); }
	public @property final auto ref float m_nMaxHealthPool() { return *cast(float*)(cast(size_t)cast(void*)this + 560); }
	public @property final auto ref float m_fPowerPoolRechargeRate() { return *cast(float*)(cast(size_t)cast(void*)this + 540); }
	public @property final auto ref float m_fSecondsBeforeAutoHeal() { return *cast(float*)(cast(size_t)cast(void*)this + 548); }
	public @property final auto ref float m_fHealthPoolRechargeRate() { return *cast(float*)(cast(size_t)cast(void*)this + 544); }
	public @property final auto ref UObject.Vector2D m_vAirControlReductionRange() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 452); }
	public @property final auto ref UObject.Vector2D m_vAirControlMultiplier() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 460); }
	public @property final auto ref float m_fFlightAcceleration() { return *cast(float*)(cast(size_t)cast(void*)this + 468); }
	public @property final bool m_bMomentumDampingEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 708) & 0x1) != 0; }
	public @property final bool m_bMomentumDampingEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 708) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 708) &= ~0x1; } return val; }
	public @property final auto ref float m_fMomentumDampingSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 712); }
	public @property final auto ref float m_fMomentumDampingPct() { return *cast(float*)(cast(size_t)cast(void*)this + 716); }
	public @property final auto ref SkeletalMesh m_GibMesh() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 604); }
	public @property final auto ref PhysicsAsset m_GibPhysicsAsset() { return *cast(PhysicsAsset*)(cast(size_t)cast(void*)this + 608); }
	public @property final auto ref ParticleSystem m_GibMeshParticleTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 612); }
	public @property final auto ref float m_fPassengerMeshScale() { return *cast(float*)(cast(size_t)cast(void*)this + 592); }
	public @property final auto ref float m_fVehicleSpeedInheritPercent() { return *cast(float*)(cast(size_t)cast(void*)this + 564); }
	public @property final auto ref SkeletalMesh m_FirstPersonHandsMesh() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 600); }
	public @property final auto ref ScriptArray!(ScriptName) m_nmFootstepEffectSockets() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 524); }
	public @property final auto ref ScriptArray!(ScriptName) m_nmSkiThrusterEffectSockets() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 512); }
	public @property final auto ref float m_fLowHealthThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 552); }
	public @property final auto ref float m_fJetpackInitTotalTime() { return *cast(float*)(cast(size_t)cast(void*)this + 476); }
	public @property final auto ref int InfoBit() { return *cast(int*)(cast(size_t)cast(void*)this + 640); }
	public @property final auto ref ScriptArray!(TrFamilyInfo.DeviceSelectionList) DevSelectionList() { return *cast(ScriptArray!(TrFamilyInfo.DeviceSelectionList)*)(cast(size_t)cast(void*)this + 412); }
	public @property final auto ref ScriptClass DefaultSkinClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 448); }
	public @property final auto ref ScriptArray!(ScriptClass) PassengerSelectionList() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 436); }
	public @property final auto ref ScriptArray!(ScriptName) m_nmJetpackThrustEffectSockets() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 500); }
	public @property final auto ref ScriptArray!(TrFamilyInfo.SkillNode) m_SkillGrid() { return *cast(ScriptArray!(TrFamilyInfo.SkillNode)*)(cast(size_t)cast(void*)this + 796); }
	public @property final auto ref TrObject.PaperDollInfo m_MainMenuPaperDollInfo() { return *cast(TrObject.PaperDollInfo*)(cast(size_t)cast(void*)this + 1748); }
	public @property final auto ref PhysicsAsset m_PaperDollSidekickPhysics() { return *cast(PhysicsAsset*)(cast(size_t)cast(void*)this + 1724); }
	public @property final auto ref AnimTree m_PaperDollSidekickAnimTree() { return *cast(AnimTree*)(cast(size_t)cast(void*)this + 1720); }
	public @property final auto ref AnimSet m_PaperDollSidekickAnimset() { return *cast(AnimSet*)(cast(size_t)cast(void*)this + 1716); }
	public @property final auto ref SkeletalMesh m_PaperDollSidekickMesh() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 1712); }
	public @property final auto ref float m_fPaperDollFOV() { return *cast(float*)(cast(size_t)cast(void*)this + 1708); }
	public @property final auto ref ScriptString m_SkillNodeShortDescriptions() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1408); }
	public @property final auto ref ScriptString m_SkillNodeDescriptions() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1108); }
	public @property final auto ref ScriptString m_SkillNodeNames() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 808); }
	public @property final auto ref int m_IconColor() { return *cast(int*)(cast(size_t)cast(void*)this + 788); }
	public @property final auto ref float Stat_Durability() { return *cast(float*)(cast(size_t)cast(void*)this + 700); }
	public @property final auto ref float Stat_Difficulty() { return *cast(float*)(cast(size_t)cast(void*)this + 696); }
	public @property final auto ref float Stat_AntiArmor() { return *cast(float*)(cast(size_t)cast(void*)this + 692); }
	public @property final auto ref float Stat_Mobility() { return *cast(float*)(cast(size_t)cast(void*)this + 688); }
	public @property final auto ref float Stat_Range() { return *cast(float*)(cast(size_t)cast(void*)this + 684); }
	public @property final auto ref ScriptString Abbreviation() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 672); }
	public @property final auto ref ScriptString ShortDesc() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 648); }
	public @property final auto ref MorphTargetSet m_OverlayMorphTarget() { return *cast(MorphTargetSet*)(cast(size_t)cast(void*)this + 616); }
	public @property final auto ref ParticleSystem m_fJetpackThrustTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 496); }
	public @property final auto ref ParticleSystem m_fJetpackRibbonTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 492); }
	public @property final auto ref float m_fJetpackInitialCost() { return *cast(float*)(cast(size_t)cast(void*)this + 488); }
	public @property final auto ref float m_fJetpackPowerPoolTickRate() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
	public @property final auto ref float m_fJetpackPowerPoolCost() { return *cast(float*)(cast(size_t)cast(void*)this + 480); }
	public @property final auto ref float m_fJetpackInitAccelMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 472); }
	final ScriptClass GetDeviceClassByEquipPoint(TrObject.TR_EQUIP_POINT EquipPoint)
	{
		ubyte params[5];
		params[] = 0;
		*cast(TrObject.TR_EQUIP_POINT*)params.ptr = EquipPoint;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87674], params.ptr, cast(void*)0);
		return *cast(ScriptClass*)&params[4];
	}
	final ScriptString GetContentDeviceClassStringByEquipPoint(TrObject.TR_EQUIP_POINT EquipPoint)
	{
		ubyte params[13];
		params[] = 0;
		*cast(TrObject.TR_EQUIP_POINT*)params.ptr = EquipPoint;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87678], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
}
