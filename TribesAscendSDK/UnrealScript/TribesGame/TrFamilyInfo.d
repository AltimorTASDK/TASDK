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
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetDeviceClassByEquipPoint;
			ScriptFunction mGetContentDeviceClassStringByEquipPoint;
		}
		public @property static final
		{
			ScriptFunction GetDeviceClassByEquipPoint() { return mGetDeviceClassByEquipPoint ? mGetDeviceClassByEquipPoint : (mGetDeviceClassByEquipPoint = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFamilyInfo.GetDeviceClassByEquipPoint")); }
			ScriptFunction GetContentDeviceClassStringByEquipPoint() { return mGetContentDeviceClassStringByEquipPoint ? mGetContentDeviceClassStringByEquipPoint : (mGetContentDeviceClassStringByEquipPoint = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFamilyInfo.GetContentDeviceClassStringByEquipPoint")); }
		}
	}
	enum TR_MAX_FACTION_NBR = 3;
	struct DeviceSelectionList
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrFamilyInfo.DeviceSelectionList")); }
		@property final auto ref
		{
			ScriptClass DeviceClass() { return *cast(ScriptClass*)(cast(size_t)&this + 4); }
			TrObject.TR_EQUIP_POINT EquipPoint() { return *cast(TrObject.TR_EQUIP_POINT*)(cast(size_t)&this + 0); }
			ScriptString ContentDeviceClassString() { return *cast(ScriptString*)(cast(size_t)&this + 8); }
		}
	}
	struct SkillNode
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrFamilyInfo.SkillNode")); }
		@property final auto ref
		{
			int Cost() { return *cast(int*)(cast(size_t)&this + 24); }
			int ParentIndex() { return *cast(int*)(cast(size_t)&this + 20); }
			int IconId() { return *cast(int*)(cast(size_t)&this + 16); }
			int IconPosY() { return *cast(int*)(cast(size_t)&this + 12); }
			int IconPosX() { return *cast(int*)(cast(size_t)&this + 8); }
			float Value() { return *cast(float*)(cast(size_t)&this + 4); }
			TrValueModifier ValueModifier() { return *cast(TrValueModifier*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			int ClassId() { return *cast(int*)(cast(size_t)cast(void*)this + 636); }
			ScriptString FriendlyName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 624); }
			int m_IconId() { return *cast(int*)(cast(size_t)cast(void*)this + 784); }
			TrObject.TrClassType ClassType() { return *cast(TrObject.TrClassType*)(cast(size_t)cast(void*)this + 644); }
			ScriptString ClassDescription() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 660); }
			ScriptArray!(ScriptClass) VehicleSelectionList() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 424); }
			AnimTree m_3pAnimTreeTemplate() { return *cast(AnimTree*)(cast(size_t)cast(void*)this + 620); }
			float m_fFIMaxSkiSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 760); }
			SkeletalMesh m_FirstPersonBodyMesh() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 596); }
			float m_fCollisionRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 572); }
			float m_fCollisionHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 568); }
			float m_fMaxGroundSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 556); }
			float m_fMass() { return *cast(float*)(cast(size_t)cast(void*)this + 704); }
			float m_fFIMaxJettingSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 720); }
			float m_fFITerminalJettingSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 724); }
			float m_fFITerminalSkiSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 764); }
			float m_fFIMaxSpeedDecelerationRate() { return *cast(float*)(cast(size_t)cast(void*)this + 792); }
			float m_fFIAirControl() { return *cast(float*)(cast(size_t)cast(void*)this + 728); }
			float m_fFIAirSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 732); }
			float m_fFIPeakSkiControlSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 768); }
			float m_fFISkiControlSigmaSquare() { return *cast(float*)(cast(size_t)cast(void*)this + 772); }
			float m_fFIMaxSkiControlPct() { return *cast(float*)(cast(size_t)cast(void*)this + 776); }
			float m_fFISkiSlopeGravityBoost() { return *cast(float*)(cast(size_t)cast(void*)this + 780); }
			float m_fFIMaxJetpackBoostGroundspeed() { return *cast(float*)(cast(size_t)cast(void*)this + 736); }
			float m_fFIMaxStoppingDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 740); }
			float m_fFIFallVelocityTransfer() { return *cast(float*)(cast(size_t)cast(void*)this + 744); }
			float m_fFIMaxJetpackThrustSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 748); }
			float m_fFIAccelRateAtMaxThrustSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 752); }
			float m_fFIForwardJettingPct() { return *cast(float*)(cast(size_t)cast(void*)this + 756); }
			float m_FIJumpZ() { return *cast(float*)(cast(size_t)cast(void*)this + 1728); }
			float m_fFIAirAccelCapSpeedThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 1732); }
			float m_fFIAirAccelSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1736); }
			float m_fFISkiAccelCapSpeedThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 1740); }
			float m_fFISkiAccelPct() { return *cast(float*)(cast(size_t)cast(void*)this + 1744); }
			ScriptName m_nmHeadBone() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 584); }
			float m_fHeadHeightOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 580); }
			float m_fHeadRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 576); }
			float r_fMaxPowerPool() { return *cast(float*)(cast(size_t)cast(void*)this + 536); }
			float m_nMaxHealthPool() { return *cast(float*)(cast(size_t)cast(void*)this + 560); }
			float m_fPowerPoolRechargeRate() { return *cast(float*)(cast(size_t)cast(void*)this + 540); }
			float m_fSecondsBeforeAutoHeal() { return *cast(float*)(cast(size_t)cast(void*)this + 548); }
			float m_fHealthPoolRechargeRate() { return *cast(float*)(cast(size_t)cast(void*)this + 544); }
			UObject.Vector2D m_vAirControlReductionRange() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 452); }
			UObject.Vector2D m_vAirControlMultiplier() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 460); }
			float m_fFlightAcceleration() { return *cast(float*)(cast(size_t)cast(void*)this + 468); }
			float m_fMomentumDampingSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 712); }
			float m_fMomentumDampingPct() { return *cast(float*)(cast(size_t)cast(void*)this + 716); }
			SkeletalMesh m_GibMesh() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 604); }
			PhysicsAsset m_GibPhysicsAsset() { return *cast(PhysicsAsset*)(cast(size_t)cast(void*)this + 608); }
			ParticleSystem m_GibMeshParticleTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 612); }
			float m_fPassengerMeshScale() { return *cast(float*)(cast(size_t)cast(void*)this + 592); }
			float m_fVehicleSpeedInheritPercent() { return *cast(float*)(cast(size_t)cast(void*)this + 564); }
			SkeletalMesh m_FirstPersonHandsMesh() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 600); }
			ScriptArray!(ScriptName) m_nmFootstepEffectSockets() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 524); }
			ScriptArray!(ScriptName) m_nmSkiThrusterEffectSockets() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 512); }
			float m_fLowHealthThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 552); }
			float m_fJetpackInitTotalTime() { return *cast(float*)(cast(size_t)cast(void*)this + 476); }
			int InfoBit() { return *cast(int*)(cast(size_t)cast(void*)this + 640); }
			ScriptArray!(TrFamilyInfo.DeviceSelectionList) DevSelectionList() { return *cast(ScriptArray!(TrFamilyInfo.DeviceSelectionList)*)(cast(size_t)cast(void*)this + 412); }
			ScriptClass DefaultSkinClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 448); }
			ScriptArray!(ScriptClass) PassengerSelectionList() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 436); }
			ScriptArray!(ScriptName) m_nmJetpackThrustEffectSockets() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 500); }
			ScriptArray!(TrFamilyInfo.SkillNode) m_SkillGrid() { return *cast(ScriptArray!(TrFamilyInfo.SkillNode)*)(cast(size_t)cast(void*)this + 796); }
			TrObject.PaperDollInfo m_MainMenuPaperDollInfo() { return *cast(TrObject.PaperDollInfo*)(cast(size_t)cast(void*)this + 1748); }
			PhysicsAsset m_PaperDollSidekickPhysics() { return *cast(PhysicsAsset*)(cast(size_t)cast(void*)this + 1724); }
			AnimTree m_PaperDollSidekickAnimTree() { return *cast(AnimTree*)(cast(size_t)cast(void*)this + 1720); }
			AnimSet m_PaperDollSidekickAnimset() { return *cast(AnimSet*)(cast(size_t)cast(void*)this + 1716); }
			SkeletalMesh m_PaperDollSidekickMesh() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 1712); }
			float m_fPaperDollFOV() { return *cast(float*)(cast(size_t)cast(void*)this + 1708); }
			ScriptString m_SkillNodeShortDescriptions() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1408); }
			ScriptString m_SkillNodeDescriptions() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1108); }
			ScriptString m_SkillNodeNames() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 808); }
			int m_IconColor() { return *cast(int*)(cast(size_t)cast(void*)this + 788); }
			float Stat_Durability() { return *cast(float*)(cast(size_t)cast(void*)this + 700); }
			float Stat_Difficulty() { return *cast(float*)(cast(size_t)cast(void*)this + 696); }
			float Stat_AntiArmor() { return *cast(float*)(cast(size_t)cast(void*)this + 692); }
			float Stat_Mobility() { return *cast(float*)(cast(size_t)cast(void*)this + 688); }
			float Stat_Range() { return *cast(float*)(cast(size_t)cast(void*)this + 684); }
			ScriptString Abbreviation() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 672); }
			ScriptString ShortDesc() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 648); }
			MorphTargetSet m_OverlayMorphTarget() { return *cast(MorphTargetSet*)(cast(size_t)cast(void*)this + 616); }
			ParticleSystem m_fJetpackThrustTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 496); }
			ParticleSystem m_fJetpackRibbonTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 492); }
			float m_fJetpackInitialCost() { return *cast(float*)(cast(size_t)cast(void*)this + 488); }
			float m_fJetpackPowerPoolTickRate() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
			float m_fJetpackPowerPoolCost() { return *cast(float*)(cast(size_t)cast(void*)this + 480); }
			float m_fJetpackInitAccelMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 472); }
		}
		bool m_bMomentumDampingEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 708) & 0x1) != 0; }
		bool m_bMomentumDampingEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 708) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 708) &= ~0x1; } return val; }
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
