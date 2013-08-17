module UnrealScript.TribesGame.TrFamilyInfo;

import ScriptClasses;
import UnrealScript.Helpers;
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
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrFamilyInfo")()); }
	private static __gshared TrFamilyInfo mDefaultProperties;
	@property final static TrFamilyInfo DefaultProperties() { mixin(MGDPC!(TrFamilyInfo, "TrFamilyInfo TribesGame.Default__TrFamilyInfo")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetDeviceClassByEquipPoint;
			ScriptFunction mGetContentDeviceClassStringByEquipPoint;
		}
		public @property static final
		{
			ScriptFunction GetDeviceClassByEquipPoint() { mixin(MGF!("mGetDeviceClassByEquipPoint", "Function TribesGame.TrFamilyInfo.GetDeviceClassByEquipPoint")()); }
			ScriptFunction GetContentDeviceClassStringByEquipPoint() { mixin(MGF!("mGetContentDeviceClassStringByEquipPoint", "Function TribesGame.TrFamilyInfo.GetContentDeviceClassStringByEquipPoint")()); }
		}
	}
	static struct Constants
	{
		enum TR_MAX_FACTION_NBR = 3;
	}
	struct DeviceSelectionList
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct TribesGame.TrFamilyInfo.DeviceSelectionList")()); }
		@property final auto ref
		{
			ScriptClass DeviceClass() { mixin(MGPS!("ScriptClass", 4)()); }
			TrObject.TR_EQUIP_POINT EquipPoint() { mixin(MGPS!("TrObject.TR_EQUIP_POINT", 0)()); }
			ScriptString ContentDeviceClassString() { mixin(MGPS!("ScriptString", 8)()); }
		}
	}
	struct SkillNode
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct TribesGame.TrFamilyInfo.SkillNode")()); }
		@property final auto ref
		{
			int Cost() { mixin(MGPS!("int", 24)()); }
			int ParentIndex() { mixin(MGPS!("int", 20)()); }
			int IconId() { mixin(MGPS!("int", 16)()); }
			int IconPosY() { mixin(MGPS!("int", 12)()); }
			int IconPosX() { mixin(MGPS!("int", 8)()); }
			float Value() { mixin(MGPS!("float", 4)()); }
			TrValueModifier ValueModifier() { mixin(MGPS!("TrValueModifier", 0)()); }
		}
	}
	@property final
	{
		auto ref
		{
			int ClassId() { mixin(MGPC!("int", 636)()); }
			ScriptString FriendlyName() { mixin(MGPC!("ScriptString", 624)()); }
			int m_IconId() { mixin(MGPC!("int", 784)()); }
			TrObject.TrClassType ClassType() { mixin(MGPC!("TrObject.TrClassType", 644)()); }
			ScriptString ClassDescription() { mixin(MGPC!("ScriptString", 660)()); }
			ScriptArray!(ScriptClass) VehicleSelectionList() { mixin(MGPC!("ScriptArray!(ScriptClass)", 424)()); }
			AnimTree m_3pAnimTreeTemplate() { mixin(MGPC!("AnimTree", 620)()); }
			float m_fFIMaxSkiSpeed() { mixin(MGPC!("float", 760)()); }
			SkeletalMesh m_FirstPersonBodyMesh() { mixin(MGPC!("SkeletalMesh", 596)()); }
			float m_fCollisionRadius() { mixin(MGPC!("float", 572)()); }
			float m_fCollisionHeight() { mixin(MGPC!("float", 568)()); }
			float m_fMaxGroundSpeed() { mixin(MGPC!("float", 556)()); }
			float m_fMass() { mixin(MGPC!("float", 704)()); }
			float m_fFIMaxJettingSpeed() { mixin(MGPC!("float", 720)()); }
			float m_fFITerminalJettingSpeed() { mixin(MGPC!("float", 724)()); }
			float m_fFITerminalSkiSpeed() { mixin(MGPC!("float", 764)()); }
			float m_fFIMaxSpeedDecelerationRate() { mixin(MGPC!("float", 792)()); }
			float m_fFIAirControl() { mixin(MGPC!("float", 728)()); }
			float m_fFIAirSpeed() { mixin(MGPC!("float", 732)()); }
			float m_fFIPeakSkiControlSpeed() { mixin(MGPC!("float", 768)()); }
			float m_fFISkiControlSigmaSquare() { mixin(MGPC!("float", 772)()); }
			float m_fFIMaxSkiControlPct() { mixin(MGPC!("float", 776)()); }
			float m_fFISkiSlopeGravityBoost() { mixin(MGPC!("float", 780)()); }
			float m_fFIMaxJetpackBoostGroundspeed() { mixin(MGPC!("float", 736)()); }
			float m_fFIMaxStoppingDistance() { mixin(MGPC!("float", 740)()); }
			float m_fFIFallVelocityTransfer() { mixin(MGPC!("float", 744)()); }
			float m_fFIMaxJetpackThrustSpeed() { mixin(MGPC!("float", 748)()); }
			float m_fFIAccelRateAtMaxThrustSpeed() { mixin(MGPC!("float", 752)()); }
			float m_fFIForwardJettingPct() { mixin(MGPC!("float", 756)()); }
			float m_FIJumpZ() { mixin(MGPC!("float", 1728)()); }
			float m_fFIAirAccelCapSpeedThreshold() { mixin(MGPC!("float", 1732)()); }
			float m_fFIAirAccelSpeed() { mixin(MGPC!("float", 1736)()); }
			float m_fFISkiAccelCapSpeedThreshold() { mixin(MGPC!("float", 1740)()); }
			float m_fFISkiAccelPct() { mixin(MGPC!("float", 1744)()); }
			ScriptName m_nmHeadBone() { mixin(MGPC!("ScriptName", 584)()); }
			float m_fHeadHeightOffset() { mixin(MGPC!("float", 580)()); }
			float m_fHeadRadius() { mixin(MGPC!("float", 576)()); }
			float r_fMaxPowerPool() { mixin(MGPC!("float", 536)()); }
			float m_nMaxHealthPool() { mixin(MGPC!("float", 560)()); }
			float m_fPowerPoolRechargeRate() { mixin(MGPC!("float", 540)()); }
			float m_fSecondsBeforeAutoHeal() { mixin(MGPC!("float", 548)()); }
			float m_fHealthPoolRechargeRate() { mixin(MGPC!("float", 544)()); }
			UObject.Vector2D m_vAirControlReductionRange() { mixin(MGPC!("UObject.Vector2D", 452)()); }
			UObject.Vector2D m_vAirControlMultiplier() { mixin(MGPC!("UObject.Vector2D", 460)()); }
			float m_fFlightAcceleration() { mixin(MGPC!("float", 468)()); }
			float m_fMomentumDampingSpeed() { mixin(MGPC!("float", 712)()); }
			float m_fMomentumDampingPct() { mixin(MGPC!("float", 716)()); }
			SkeletalMesh m_GibMesh() { mixin(MGPC!("SkeletalMesh", 604)()); }
			PhysicsAsset m_GibPhysicsAsset() { mixin(MGPC!("PhysicsAsset", 608)()); }
			ParticleSystem m_GibMeshParticleTemplate() { mixin(MGPC!("ParticleSystem", 612)()); }
			float m_fPassengerMeshScale() { mixin(MGPC!("float", 592)()); }
			float m_fVehicleSpeedInheritPercent() { mixin(MGPC!("float", 564)()); }
			SkeletalMesh m_FirstPersonHandsMesh() { mixin(MGPC!("SkeletalMesh", 600)()); }
			ScriptArray!(ScriptName) m_nmFootstepEffectSockets() { mixin(MGPC!("ScriptArray!(ScriptName)", 524)()); }
			ScriptArray!(ScriptName) m_nmSkiThrusterEffectSockets() { mixin(MGPC!("ScriptArray!(ScriptName)", 512)()); }
			float m_fLowHealthThreshold() { mixin(MGPC!("float", 552)()); }
			float m_fJetpackInitTotalTime() { mixin(MGPC!("float", 476)()); }
			int InfoBit() { mixin(MGPC!("int", 640)()); }
			ScriptArray!(TrFamilyInfo.DeviceSelectionList) DevSelectionList() { mixin(MGPC!("ScriptArray!(TrFamilyInfo.DeviceSelectionList)", 412)()); }
			ScriptClass DefaultSkinClass() { mixin(MGPC!("ScriptClass", 448)()); }
			ScriptArray!(ScriptClass) PassengerSelectionList() { mixin(MGPC!("ScriptArray!(ScriptClass)", 436)()); }
			ScriptArray!(ScriptName) m_nmJetpackThrustEffectSockets() { mixin(MGPC!("ScriptArray!(ScriptName)", 500)()); }
			ScriptArray!(TrFamilyInfo.SkillNode) m_SkillGrid() { mixin(MGPC!("ScriptArray!(TrFamilyInfo.SkillNode)", 796)()); }
			TrObject.PaperDollInfo m_MainMenuPaperDollInfo() { mixin(MGPC!("TrObject.PaperDollInfo", 1748)()); }
			PhysicsAsset m_PaperDollSidekickPhysics() { mixin(MGPC!("PhysicsAsset", 1724)()); }
			AnimTree m_PaperDollSidekickAnimTree() { mixin(MGPC!("AnimTree", 1720)()); }
			AnimSet m_PaperDollSidekickAnimset() { mixin(MGPC!("AnimSet", 1716)()); }
			SkeletalMesh m_PaperDollSidekickMesh() { mixin(MGPC!("SkeletalMesh", 1712)()); }
			float m_fPaperDollFOV() { mixin(MGPC!("float", 1708)()); }
			ScriptString m_SkillNodeShortDescriptions() { mixin(MGPC!("ScriptString", 1408)()); }
			ScriptString m_SkillNodeDescriptions() { mixin(MGPC!("ScriptString", 1108)()); }
			ScriptString m_SkillNodeNames() { mixin(MGPC!("ScriptString", 808)()); }
			int m_IconColor() { mixin(MGPC!("int", 788)()); }
			float Stat_Durability() { mixin(MGPC!("float", 700)()); }
			float Stat_Difficulty() { mixin(MGPC!("float", 696)()); }
			float Stat_AntiArmor() { mixin(MGPC!("float", 692)()); }
			float Stat_Mobility() { mixin(MGPC!("float", 688)()); }
			float Stat_Range() { mixin(MGPC!("float", 684)()); }
			ScriptString Abbreviation() { mixin(MGPC!("ScriptString", 672)()); }
			ScriptString ShortDesc() { mixin(MGPC!("ScriptString", 648)()); }
			MorphTargetSet m_OverlayMorphTarget() { mixin(MGPC!("MorphTargetSet", 616)()); }
			ParticleSystem m_fJetpackThrustTemplate() { mixin(MGPC!("ParticleSystem", 496)()); }
			ParticleSystem m_fJetpackRibbonTemplate() { mixin(MGPC!("ParticleSystem", 492)()); }
			float m_fJetpackInitialCost() { mixin(MGPC!("float", 488)()); }
			float m_fJetpackPowerPoolTickRate() { mixin(MGPC!("float", 484)()); }
			float m_fJetpackPowerPoolCost() { mixin(MGPC!("float", 480)()); }
			float m_fJetpackInitAccelMultiplier() { mixin(MGPC!("float", 472)()); }
		}
		bool m_bMomentumDampingEnabled() { mixin(MGBPC!(708, 0x1)()); }
		bool m_bMomentumDampingEnabled(bool val) { mixin(MSBPC!(708, 0x1)()); }
	}
final:
	static ScriptClass GetDeviceClassByEquipPoint(TrObject.TR_EQUIP_POINT EquipPoint)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrObject.TR_EQUIP_POINT*)params.ptr = EquipPoint;
		StaticClass.ProcessEvent(Functions.GetDeviceClassByEquipPoint, params.ptr, cast(void*)0);
		return *cast(ScriptClass*)&params[4];
	}
	static ScriptString GetContentDeviceClassStringByEquipPoint(TrObject.TR_EQUIP_POINT EquipPoint)
	{
		ubyte params[16];
		params[] = 0;
		*cast(TrObject.TR_EQUIP_POINT*)params.ptr = EquipPoint;
		StaticClass.ProcessEvent(Functions.GetContentDeviceClassStringByEquipPoint, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
}
