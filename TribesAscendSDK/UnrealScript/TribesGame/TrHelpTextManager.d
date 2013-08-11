module UnrealScript.TribesGame.TrHelpTextManager;

import ScriptClasses;
import UnrealScript.Engine.Actor;

extern(C++) interface TrHelpTextManager : Actor
{
	enum EHelpTextType : ubyte
	{
		HelpText_SkiingHowTo = 0,
		HelpText_GeneratorDescriptionLevel1 = 1,
		HelpText_GeneratorDescriptionLevel2 = 2,
		HelpText_GeneratorDescriptionLevel3 = 3,
		HelpText_GeneratorDescriptionLevel4 = 4,
		HelpText_JetpackHowTo = 5,
		HelpText_OutOfAmmoNotifier = 6,
		HelpText_OffhandReminder = 7,
		HelpText_CTFFlagDescription = 8,
		HelpText_HoldingEnemyFlagDescription = 9,
		HelpText_RabbitFlagDescription = 10,
		HelpText_HoldingRabbitFlagDescription = 11,
		HelpText_InventoryStationDescription = 12,
		HelpText_VehicleStationDescription = 13,
		HelpText_BaseTurretDescriptionLevel1 = 14,
		HelpText_BaseTurretDescriptionLevel2 = 15,
		HelpText_BaseTurretDescriptionLevel3 = 16,
		HelpText_BaseTurretDescriptionLevel4 = 17,
		HelpText_RadarSensorDescriptionLevel1 = 18,
		HelpText_RadarSensorDescriptionLevel2 = 19,
		HelpText_RadarSensorDescriptionLevel3 = 20,
		HelpText_RadarSensorDescriptionLevel4 = 21,
		HelpText_RepairStationDescription = 22,
		HelpText_ArmoredTargetDescription = 23,
		HelpText_CreditsDescription = 24,
		HelpText_YouCanPickupPassengerReminder = 25,
		HelpText_ConduitDescription = 26,
		HelpText_SpotTargetReminder = 27,
		HelpText_ChangingClassDescription = 28,
		HelpText_ChangingClassHowTo = 29,
		HelpText_MAX = 30,
	}
	struct HelpTextInfo
	{
		public @property final bool bSelfSuppress() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x1) != 0; }
		public @property final bool bSelfSuppress(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x1; } return val; }
		private ubyte __bSelfSuppress[4];
		public @property final auto ref int Priority() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __Priority[4];
		public @property final auto ref TrHelpTextManager.EHelpTextType HelpTextType() { return *cast(TrHelpTextManager.EHelpTextType*)(cast(size_t)&this + 0); }
		private ubyte __HelpTextType[1];
	}
	struct HelpTextTypeRemovalTimerInfo
	{
		public @property final bool bSuppress() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x1) != 0; }
		public @property final bool bSuppress(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x1; } return val; }
		private ubyte __bSuppress[4];
		public @property final auto ref float RemainingTime() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __RemainingTime[4];
		public @property final auto ref TrHelpTextManager.EHelpTextType HelpTextTypeToRemove() { return *cast(TrHelpTextManager.EHelpTextType*)(cast(size_t)&this + 0); }
		private ubyte __HelpTextTypeToRemove[1];
	}
	public @property final bool m_bShowHelpTexts() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x1) != 0; }
	public @property final bool m_bShowHelpTexts(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x1; } return val; }
	public @property final bool m_bSuppressOffhandReminder() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x100) != 0; }
	public @property final bool m_bSuppressOffhandReminder(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x100; } return val; }
	public @property final bool m_bSuppressSpotTargetReminder() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x10000000) != 0; }
	public @property final bool m_bSuppressSpotTargetReminder(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x10000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x10000000; } return val; }
	public @property final bool m_bSuppressGeneratorDescriptionLevel1() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x4) != 0; }
	public @property final bool m_bSuppressGeneratorDescriptionLevel1(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x4; } return val; }
	public @property final bool m_bSuppressGeneratorDescriptionLevel2() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x8) != 0; }
	public @property final bool m_bSuppressGeneratorDescriptionLevel2(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x8; } return val; }
	public @property final bool m_bSuppressGeneratorDescriptionLevel3() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x10) != 0; }
	public @property final bool m_bSuppressGeneratorDescriptionLevel3(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x10; } return val; }
	public @property final bool m_bSuppressGeneratorDescriptionLevel4() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x20) != 0; }
	public @property final bool m_bSuppressGeneratorDescriptionLevel4(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x20; } return val; }
	public @property final bool m_bSuppressCTFFlagDescription() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x200) != 0; }
	public @property final bool m_bSuppressCTFFlagDescription(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x200; } return val; }
	public @property final bool m_bSuppressRabbitFlagDescription() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x800) != 0; }
	public @property final bool m_bSuppressRabbitFlagDescription(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x800; } return val; }
	public @property final bool m_bSuppressInventoryStationDescription() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x2000) != 0; }
	public @property final bool m_bSuppressInventoryStationDescription(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x2000; } return val; }
	public @property final bool m_bSuppressVehicleStationDescription() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x4000) != 0; }
	public @property final bool m_bSuppressVehicleStationDescription(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x4000; } return val; }
	public @property final bool m_bSuppressBaseTurretDescriptionLevel1() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x8000) != 0; }
	public @property final bool m_bSuppressBaseTurretDescriptionLevel1(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x8000; } return val; }
	public @property final bool m_bSuppressBaseTurretDescriptionLevel2() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x10000) != 0; }
	public @property final bool m_bSuppressBaseTurretDescriptionLevel2(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x10000; } return val; }
	public @property final bool m_bSuppressBaseTurretDescriptionLevel3() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x20000) != 0; }
	public @property final bool m_bSuppressBaseTurretDescriptionLevel3(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x20000; } return val; }
	public @property final bool m_bSuppressBaseTurretDescriptionLevel4() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x40000) != 0; }
	public @property final bool m_bSuppressBaseTurretDescriptionLevel4(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x40000; } return val; }
	public @property final bool m_bSuppressRadarSensorDescriptionLevel1() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x80000) != 0; }
	public @property final bool m_bSuppressRadarSensorDescriptionLevel1(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x80000; } return val; }
	public @property final bool m_bSuppressRadarSensorDescriptionLevel2() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x100000) != 0; }
	public @property final bool m_bSuppressRadarSensorDescriptionLevel2(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x100000; } return val; }
	public @property final bool m_bSuppressRadarSensorDescriptionLevel3() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x200000) != 0; }
	public @property final bool m_bSuppressRadarSensorDescriptionLevel3(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x200000; } return val; }
	public @property final bool m_bSuppressRadarSensorDescriptionLevel4() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x400000) != 0; }
	public @property final bool m_bSuppressRadarSensorDescriptionLevel4(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x400000; } return val; }
	public @property final bool m_bSuppressRepairStationDescription() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x800000) != 0; }
	public @property final bool m_bSuppressRepairStationDescription(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x800000; } return val; }
	public @property final bool m_bSuppressSkiingHowTo() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x2) != 0; }
	public @property final bool m_bSuppressSkiingHowTo(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x2; } return val; }
	public @property final bool m_bSuppressJetpackHowTo() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x40) != 0; }
	public @property final bool m_bSuppressJetpackHowTo(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x40; } return val; }
	public @property final bool m_bSuppressOutOfAmmoNotifier() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x80) != 0; }
	public @property final bool m_bSuppressOutOfAmmoNotifier(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x80; } return val; }
	public @property final bool m_bSuppressHoldingEnemyFlagDescription() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x400) != 0; }
	public @property final bool m_bSuppressHoldingEnemyFlagDescription(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x400; } return val; }
	public @property final bool m_bSuppressHoldingRabbitFlagDescription() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x1000) != 0; }
	public @property final bool m_bSuppressHoldingRabbitFlagDescription(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x1000; } return val; }
	public @property final bool m_bSuppressArmoredTargetDescription() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x1000000) != 0; }
	public @property final bool m_bSuppressArmoredTargetDescription(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x1000000; } return val; }
	public @property final bool m_bSuppressCreditsDescription() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x2000000) != 0; }
	public @property final bool m_bSuppressCreditsDescription(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x2000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x2000000; } return val; }
	public @property final bool m_bSuppressYouCanPickupPassengerReminder() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x4000000) != 0; }
	public @property final bool m_bSuppressYouCanPickupPassengerReminder(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x4000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x4000000; } return val; }
	public @property final bool m_bSuppressConduitDescription() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x8000000) != 0; }
	public @property final bool m_bSuppressConduitDescription(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x8000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x8000000; } return val; }
	public @property final bool m_bSuppressChangingClassDescription() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x20000000) != 0; }
	public @property final bool m_bSuppressChangingClassDescription(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x20000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x20000000; } return val; }
	public @property final bool m_bSuppressChangingClassHowTo() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x40000000) != 0; }
	public @property final bool m_bSuppressChangingClassHowTo(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x40000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x40000000; } return val; }
	public @property final auto ref ScriptArray!(TrHelpTextManager.EHelpTextType) m_HelpTextQueue() { return *cast(ScriptArray!(TrHelpTextManager.EHelpTextType)*)(cast(size_t)cast(void*)this + 1240); }
	public @property final auto ref ScriptArray!(TrHelpTextManager.HelpTextTypeRemovalTimerInfo) m_HelpTextTypesToRemoveOnTimers() { return *cast(ScriptArray!(TrHelpTextManager.HelpTextTypeRemovalTimerInfo)*)(cast(size_t)cast(void*)this + 1252); }
	public @property final auto ref ScriptArray!(TrHelpTextManager.HelpTextInfo) m_HelpTextConfig() { return *cast(ScriptArray!(TrHelpTextManager.HelpTextInfo)*)(cast(size_t)cast(void*)this + 1228); }
	public @property final auto ref ScriptString m_HelpTextSkiingHowTo() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 480); }
	public @property final auto ref ScriptString m_HelpTextSkiingHowToMenuTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 840); }
	public @property final auto ref ScriptString m_HelpTextGeneratorDescriptionLevel1() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 492); }
	public @property final auto ref ScriptString m_HelpTextGeneratorDescriptionMenuTitleLevel1() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 852); }
	public @property final auto ref ScriptString m_HelpTextGeneratorDescriptionLevel2() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 504); }
	public @property final auto ref ScriptString m_HelpTextGeneratorDescriptionMenuTitleLevel2() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 864); }
	public @property final auto ref ScriptString m_HelpTextGeneratorDescriptionLevel3() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 516); }
	public @property final auto ref ScriptString m_HelpTextGeneratorDescriptionMenuTitleLevel3() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 876); }
	public @property final auto ref ScriptString m_HelpTextGeneratorDescriptionLevel4() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 528); }
	public @property final auto ref ScriptString m_HelpTextGeneratorDescriptionMenuTitleLevel4() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 888); }
	public @property final auto ref ScriptString m_HelpTextJetpackHowTo() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 540); }
	public @property final auto ref ScriptString m_HelpTextJetpackHowToMenuTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 900); }
	public @property final auto ref ScriptString m_HelpTextOutOfAmmoNotifier() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 552); }
	public @property final auto ref ScriptString m_HelpTextOutOfAmmoNotifierMenuTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 912); }
	public @property final auto ref ScriptString m_HelpTextOffhandReminder() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 564); }
	public @property final auto ref ScriptString m_HelpTextOffhandReminderMenuTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 924); }
	public @property final auto ref ScriptString m_HelpTextCTFFlagDescription() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 576); }
	public @property final auto ref ScriptString m_HelpTextCTFFlagDescriptionMenuTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 936); }
	public @property final auto ref ScriptString m_HelpTextHoldingEnemyFlagDescription() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 588); }
	public @property final auto ref ScriptString m_HelpTextHoldingEnemyFlagDescriptionMenuTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 948); }
	public @property final auto ref ScriptString m_HelpTextRabbitFlagDescription() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 600); }
	public @property final auto ref ScriptString m_HelpTextRabbitFlagDescriptionMenuTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 960); }
	public @property final auto ref ScriptString m_HelpTextHoldingRabbitFlagDescription() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 612); }
	public @property final auto ref ScriptString m_HelpTextHoldingRabbitFlagDescriptionMenuTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 972); }
	public @property final auto ref ScriptString m_HelpTextInventoryStationDescription() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 624); }
	public @property final auto ref ScriptString m_HelpTextInventoryStationDescriptionMenuTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 984); }
	public @property final auto ref ScriptString m_HelpTextVehicleStationDescription() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 636); }
	public @property final auto ref ScriptString m_HelpTextVehicleStationDescriptionMenuTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 996); }
	public @property final auto ref ScriptString m_HelpTextBaseTurretDescriptionLevel1() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 648); }
	public @property final auto ref ScriptString m_HelpTextBaseTurretDescriptionMenuTitleLevel1() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1008); }
	public @property final auto ref ScriptString m_HelpTextBaseTurretDescriptionLevel2() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 660); }
	public @property final auto ref ScriptString m_HelpTextBaseTurretDescriptionMenuTitleLevel2() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1020); }
	public @property final auto ref ScriptString m_HelpTextBaseTurretDescriptionLevel3() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 672); }
	public @property final auto ref ScriptString m_HelpTextBaseTurretDescriptionMenuTitleLevel3() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1032); }
	public @property final auto ref ScriptString m_HelpTextBaseTurretDescriptionLevel4() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 684); }
	public @property final auto ref ScriptString m_HelpTextBaseTurretDescriptionMenuTitleLevel4() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1044); }
	public @property final auto ref ScriptString m_HelpTextRadarSensorDescriptionLevel1() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 696); }
	public @property final auto ref ScriptString m_HelpTextRadarSensorDescriptionMenuTitleLevel1() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1056); }
	public @property final auto ref ScriptString m_HelpTextRadarSensorDescriptionLevel2() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 708); }
	public @property final auto ref ScriptString m_HelpTextRadarSensorDescriptionMenuTitleLevel2() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1068); }
	public @property final auto ref ScriptString m_HelpTextRadarSensorDescriptionLevel3() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 720); }
	public @property final auto ref ScriptString m_HelpTextRadarSensorDescriptionMenuTitleLevel3() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1080); }
	public @property final auto ref ScriptString m_HelpTextRadarSensorDescriptionLevel4() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 732); }
	public @property final auto ref ScriptString m_HelpTextRadarSensorDescriptionMenuTitleLevel4() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1092); }
	public @property final auto ref ScriptString m_HelpTextRepairStationDescription() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 744); }
	public @property final auto ref ScriptString m_HelpTextRepairStationDescriptionMenuTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1104); }
	public @property final auto ref ScriptString m_HelpTextArmoredTargetDescription() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 756); }
	public @property final auto ref ScriptString m_HelpTextArmoredTargetDescriptionMenuTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1116); }
	public @property final auto ref ScriptString m_HelpTextCreditsDescription() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 768); }
	public @property final auto ref ScriptString m_HelpTextCreditsDescriptionMenuTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1128); }
	public @property final auto ref ScriptString m_HelpTextYouCanPickupPassengerReminder() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 780); }
	public @property final auto ref ScriptString m_HelpTextYouCanPickupPassengerReminderMenuTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1140); }
	public @property final auto ref ScriptString m_HelpTextConduitDescription() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 792); }
	public @property final auto ref ScriptString m_HelpTextConduitDescriptionMenuTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1152); }
	public @property final auto ref ScriptString m_HelpTextSpotTargetReminder() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 804); }
	public @property final auto ref ScriptString m_HelpTextSpotTargetReminderMenuTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1164); }
	public @property final auto ref ScriptString m_HelpTextChangingClassDescription() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 816); }
	public @property final auto ref ScriptString m_HelpTextChangingClassDescriptionMenuTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1176); }
	public @property final auto ref ScriptString m_HelpTextChangingClassHowTo() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 828); }
	public @property final auto ref ScriptString m_HelpTextChangingClassHowToMenuTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1188); }
	public @property final auto ref ScriptString m_LocalizedSuppressString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1200); }
	public @property final auto ref float m_OffhandReminderRecursiveTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1216); }
	public @property final auto ref float m_SpotTargetReminderRecursiveTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1224); }
	public @property final auto ref float m_OffhandReminderInitialTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1212); }
	public @property final auto ref float m_SpotTargetReminderInitialTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1220); }
	final bool RequestHelpText(TrHelpTextManager.EHelpTextType RequestedType)
	{
		ubyte params[5];
		params[] = 0;
		*cast(TrHelpTextManager.EHelpTextType*)params.ptr = RequestedType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[67677], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[69822], cast(void*)0, cast(void*)0);
	}
	final void InitHelpTextManager()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[69823], cast(void*)0, cast(void*)0);
	}
	final void LevelLoadCompleted()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[69826], cast(void*)0, cast(void*)0);
	}
	final void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[69856], params.ptr, cast(void*)0);
	}
	final bool CheckDestroy()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[69858], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool IsSuppressed(TrHelpTextManager.EHelpTextType RequestedType)
	{
		ubyte params[5];
		params[] = 0;
		*cast(TrHelpTextManager.EHelpTextType*)params.ptr = RequestedType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[69861], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void RemoveHelpText(TrHelpTextManager.EHelpTextType TypeToRemove, float Time, bool bDoNotSuppress)
	{
		ubyte params[9];
		params[] = 0;
		*cast(TrHelpTextManager.EHelpTextType*)params.ptr = TypeToRemove;
		*cast(float*)&params[4] = Time;
		*cast(bool*)&params[8] = bDoNotSuppress;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[69880], params.ptr, cast(void*)0);
	}
	final void SuppressHelpText(TrHelpTextManager.EHelpTextType TypeToSuppress)
	{
		ubyte params[1];
		params[] = 0;
		*cast(TrHelpTextManager.EHelpTextType*)params.ptr = TypeToSuppress;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[69887], params.ptr, cast(void*)0);
	}
	final void UpdateHUD()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[69889], cast(void*)0, cast(void*)0);
	}
	final ScriptString FormatText(ScriptString InString)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InString;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[69959], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	final int HelpTextQueueSort(TrHelpTextManager.EHelpTextType A, TrHelpTextManager.EHelpTextType B)
	{
		ubyte params[6];
		params[] = 0;
		*cast(TrHelpTextManager.EHelpTextType*)params.ptr = A;
		*cast(TrHelpTextManager.EHelpTextType*)&params[1] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[69969], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final bool UnsuppressedHelpTextsExist()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[69973], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void OffhandReminderTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[69975], cast(void*)0, cast(void*)0);
	}
	final void ClearOffhandReminderTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[69978], cast(void*)0, cast(void*)0);
	}
	final void SpotTargetReminderTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[69979], cast(void*)0, cast(void*)0);
	}
	final void ClearSpotTargetReminderTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[69984], cast(void*)0, cast(void*)0);
	}
	final void UpdateTypesToRemoveOnTimers(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[69985], params.ptr, cast(void*)0);
	}
	final void ResetConfig()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[69988], cast(void*)0, cast(void*)0);
	}
	final void EnableHelpText(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[69989], params.ptr, cast(void*)0);
	}
}
