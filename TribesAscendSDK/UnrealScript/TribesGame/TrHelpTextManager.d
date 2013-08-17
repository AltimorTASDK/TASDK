module UnrealScript.TribesGame.TrHelpTextManager;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;

extern(C++) interface TrHelpTextManager : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrHelpTextManager")); }
	private static __gshared TrHelpTextManager mDefaultProperties;
	@property final static TrHelpTextManager DefaultProperties() { mixin(MGDPC("TrHelpTextManager", "TrHelpTextManager TribesGame.Default__TrHelpTextManager")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mRequestHelpText;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mInitHelpTextManager;
			ScriptFunction mLevelLoadCompleted;
			ScriptFunction mTick;
			ScriptFunction mCheckDestroy;
			ScriptFunction mIsSuppressed;
			ScriptFunction mRemoveHelpText;
			ScriptFunction mSuppressHelpText;
			ScriptFunction mUpdateHUD;
			ScriptFunction mFormatText;
			ScriptFunction mHelpTextQueueSort;
			ScriptFunction mUnsuppressedHelpTextsExist;
			ScriptFunction mOffhandReminderTimer;
			ScriptFunction mClearOffhandReminderTimer;
			ScriptFunction mSpotTargetReminderTimer;
			ScriptFunction mClearSpotTargetReminderTimer;
			ScriptFunction mUpdateTypesToRemoveOnTimers;
			ScriptFunction mResetConfig;
			ScriptFunction mEnableHelpText;
		}
		public @property static final
		{
			ScriptFunction RequestHelpText() { mixin(MGF("mRequestHelpText", "Function TribesGame.TrHelpTextManager.RequestHelpText")); }
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function TribesGame.TrHelpTextManager.PostBeginPlay")); }
			ScriptFunction InitHelpTextManager() { mixin(MGF("mInitHelpTextManager", "Function TribesGame.TrHelpTextManager.InitHelpTextManager")); }
			ScriptFunction LevelLoadCompleted() { mixin(MGF("mLevelLoadCompleted", "Function TribesGame.TrHelpTextManager.LevelLoadCompleted")); }
			ScriptFunction Tick() { mixin(MGF("mTick", "Function TribesGame.TrHelpTextManager.Tick")); }
			ScriptFunction CheckDestroy() { mixin(MGF("mCheckDestroy", "Function TribesGame.TrHelpTextManager.CheckDestroy")); }
			ScriptFunction IsSuppressed() { mixin(MGF("mIsSuppressed", "Function TribesGame.TrHelpTextManager.IsSuppressed")); }
			ScriptFunction RemoveHelpText() { mixin(MGF("mRemoveHelpText", "Function TribesGame.TrHelpTextManager.RemoveHelpText")); }
			ScriptFunction SuppressHelpText() { mixin(MGF("mSuppressHelpText", "Function TribesGame.TrHelpTextManager.SuppressHelpText")); }
			ScriptFunction UpdateHUD() { mixin(MGF("mUpdateHUD", "Function TribesGame.TrHelpTextManager.UpdateHUD")); }
			ScriptFunction FormatText() { mixin(MGF("mFormatText", "Function TribesGame.TrHelpTextManager.FormatText")); }
			ScriptFunction HelpTextQueueSort() { mixin(MGF("mHelpTextQueueSort", "Function TribesGame.TrHelpTextManager.HelpTextQueueSort")); }
			ScriptFunction UnsuppressedHelpTextsExist() { mixin(MGF("mUnsuppressedHelpTextsExist", "Function TribesGame.TrHelpTextManager.UnsuppressedHelpTextsExist")); }
			ScriptFunction OffhandReminderTimer() { mixin(MGF("mOffhandReminderTimer", "Function TribesGame.TrHelpTextManager.OffhandReminderTimer")); }
			ScriptFunction ClearOffhandReminderTimer() { mixin(MGF("mClearOffhandReminderTimer", "Function TribesGame.TrHelpTextManager.ClearOffhandReminderTimer")); }
			ScriptFunction SpotTargetReminderTimer() { mixin(MGF("mSpotTargetReminderTimer", "Function TribesGame.TrHelpTextManager.SpotTargetReminderTimer")); }
			ScriptFunction ClearSpotTargetReminderTimer() { mixin(MGF("mClearSpotTargetReminderTimer", "Function TribesGame.TrHelpTextManager.ClearSpotTargetReminderTimer")); }
			ScriptFunction UpdateTypesToRemoveOnTimers() { mixin(MGF("mUpdateTypesToRemoveOnTimers", "Function TribesGame.TrHelpTextManager.UpdateTypesToRemoveOnTimers")); }
			ScriptFunction ResetConfig() { mixin(MGF("mResetConfig", "Function TribesGame.TrHelpTextManager.ResetConfig")); }
			ScriptFunction EnableHelpText() { mixin(MGF("mEnableHelpText", "Function TribesGame.TrHelpTextManager.EnableHelpText")); }
		}
	}
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
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct TribesGame.TrHelpTextManager.HelpTextInfo")); }
		@property final
		{
			auto ref
			{
				int Priority() { mixin(MGPS("int", 4)); }
				TrHelpTextManager.EHelpTextType HelpTextType() { mixin(MGPS("TrHelpTextManager.EHelpTextType", 0)); }
			}
			bool bSelfSuppress() { mixin(MGBPS(8, 0x1)); }
			bool bSelfSuppress(bool val) { mixin(MSBPS(8, 0x1)); }
		}
	}
	struct HelpTextTypeRemovalTimerInfo
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct TribesGame.TrHelpTextManager.HelpTextTypeRemovalTimerInfo")); }
		@property final
		{
			auto ref
			{
				float RemainingTime() { mixin(MGPS("float", 4)); }
				TrHelpTextManager.EHelpTextType HelpTextTypeToRemove() { mixin(MGPS("TrHelpTextManager.EHelpTextType", 0)); }
			}
			bool bSuppress() { mixin(MGBPS(8, 0x1)); }
			bool bSuppress(bool val) { mixin(MSBPS(8, 0x1)); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(TrHelpTextManager.EHelpTextType) m_HelpTextQueue() { mixin(MGPC("ScriptArray!(TrHelpTextManager.EHelpTextType)", 1240)); }
			ScriptArray!(TrHelpTextManager.HelpTextTypeRemovalTimerInfo) m_HelpTextTypesToRemoveOnTimers() { mixin(MGPC("ScriptArray!(TrHelpTextManager.HelpTextTypeRemovalTimerInfo)", 1252)); }
			ScriptArray!(TrHelpTextManager.HelpTextInfo) m_HelpTextConfig() { mixin(MGPC("ScriptArray!(TrHelpTextManager.HelpTextInfo)", 1228)); }
			ScriptString m_HelpTextSkiingHowTo() { mixin(MGPC("ScriptString", 480)); }
			ScriptString m_HelpTextSkiingHowToMenuTitle() { mixin(MGPC("ScriptString", 840)); }
			ScriptString m_HelpTextGeneratorDescriptionLevel1() { mixin(MGPC("ScriptString", 492)); }
			ScriptString m_HelpTextGeneratorDescriptionMenuTitleLevel1() { mixin(MGPC("ScriptString", 852)); }
			ScriptString m_HelpTextGeneratorDescriptionLevel2() { mixin(MGPC("ScriptString", 504)); }
			ScriptString m_HelpTextGeneratorDescriptionMenuTitleLevel2() { mixin(MGPC("ScriptString", 864)); }
			ScriptString m_HelpTextGeneratorDescriptionLevel3() { mixin(MGPC("ScriptString", 516)); }
			ScriptString m_HelpTextGeneratorDescriptionMenuTitleLevel3() { mixin(MGPC("ScriptString", 876)); }
			ScriptString m_HelpTextGeneratorDescriptionLevel4() { mixin(MGPC("ScriptString", 528)); }
			ScriptString m_HelpTextGeneratorDescriptionMenuTitleLevel4() { mixin(MGPC("ScriptString", 888)); }
			ScriptString m_HelpTextJetpackHowTo() { mixin(MGPC("ScriptString", 540)); }
			ScriptString m_HelpTextJetpackHowToMenuTitle() { mixin(MGPC("ScriptString", 900)); }
			ScriptString m_HelpTextOutOfAmmoNotifier() { mixin(MGPC("ScriptString", 552)); }
			ScriptString m_HelpTextOutOfAmmoNotifierMenuTitle() { mixin(MGPC("ScriptString", 912)); }
			ScriptString m_HelpTextOffhandReminder() { mixin(MGPC("ScriptString", 564)); }
			ScriptString m_HelpTextOffhandReminderMenuTitle() { mixin(MGPC("ScriptString", 924)); }
			ScriptString m_HelpTextCTFFlagDescription() { mixin(MGPC("ScriptString", 576)); }
			ScriptString m_HelpTextCTFFlagDescriptionMenuTitle() { mixin(MGPC("ScriptString", 936)); }
			ScriptString m_HelpTextHoldingEnemyFlagDescription() { mixin(MGPC("ScriptString", 588)); }
			ScriptString m_HelpTextHoldingEnemyFlagDescriptionMenuTitle() { mixin(MGPC("ScriptString", 948)); }
			ScriptString m_HelpTextRabbitFlagDescription() { mixin(MGPC("ScriptString", 600)); }
			ScriptString m_HelpTextRabbitFlagDescriptionMenuTitle() { mixin(MGPC("ScriptString", 960)); }
			ScriptString m_HelpTextHoldingRabbitFlagDescription() { mixin(MGPC("ScriptString", 612)); }
			ScriptString m_HelpTextHoldingRabbitFlagDescriptionMenuTitle() { mixin(MGPC("ScriptString", 972)); }
			ScriptString m_HelpTextInventoryStationDescription() { mixin(MGPC("ScriptString", 624)); }
			ScriptString m_HelpTextInventoryStationDescriptionMenuTitle() { mixin(MGPC("ScriptString", 984)); }
			ScriptString m_HelpTextVehicleStationDescription() { mixin(MGPC("ScriptString", 636)); }
			ScriptString m_HelpTextVehicleStationDescriptionMenuTitle() { mixin(MGPC("ScriptString", 996)); }
			ScriptString m_HelpTextBaseTurretDescriptionLevel1() { mixin(MGPC("ScriptString", 648)); }
			ScriptString m_HelpTextBaseTurretDescriptionMenuTitleLevel1() { mixin(MGPC("ScriptString", 1008)); }
			ScriptString m_HelpTextBaseTurretDescriptionLevel2() { mixin(MGPC("ScriptString", 660)); }
			ScriptString m_HelpTextBaseTurretDescriptionMenuTitleLevel2() { mixin(MGPC("ScriptString", 1020)); }
			ScriptString m_HelpTextBaseTurretDescriptionLevel3() { mixin(MGPC("ScriptString", 672)); }
			ScriptString m_HelpTextBaseTurretDescriptionMenuTitleLevel3() { mixin(MGPC("ScriptString", 1032)); }
			ScriptString m_HelpTextBaseTurretDescriptionLevel4() { mixin(MGPC("ScriptString", 684)); }
			ScriptString m_HelpTextBaseTurretDescriptionMenuTitleLevel4() { mixin(MGPC("ScriptString", 1044)); }
			ScriptString m_HelpTextRadarSensorDescriptionLevel1() { mixin(MGPC("ScriptString", 696)); }
			ScriptString m_HelpTextRadarSensorDescriptionMenuTitleLevel1() { mixin(MGPC("ScriptString", 1056)); }
			ScriptString m_HelpTextRadarSensorDescriptionLevel2() { mixin(MGPC("ScriptString", 708)); }
			ScriptString m_HelpTextRadarSensorDescriptionMenuTitleLevel2() { mixin(MGPC("ScriptString", 1068)); }
			ScriptString m_HelpTextRadarSensorDescriptionLevel3() { mixin(MGPC("ScriptString", 720)); }
			ScriptString m_HelpTextRadarSensorDescriptionMenuTitleLevel3() { mixin(MGPC("ScriptString", 1080)); }
			ScriptString m_HelpTextRadarSensorDescriptionLevel4() { mixin(MGPC("ScriptString", 732)); }
			ScriptString m_HelpTextRadarSensorDescriptionMenuTitleLevel4() { mixin(MGPC("ScriptString", 1092)); }
			ScriptString m_HelpTextRepairStationDescription() { mixin(MGPC("ScriptString", 744)); }
			ScriptString m_HelpTextRepairStationDescriptionMenuTitle() { mixin(MGPC("ScriptString", 1104)); }
			ScriptString m_HelpTextArmoredTargetDescription() { mixin(MGPC("ScriptString", 756)); }
			ScriptString m_HelpTextArmoredTargetDescriptionMenuTitle() { mixin(MGPC("ScriptString", 1116)); }
			ScriptString m_HelpTextCreditsDescription() { mixin(MGPC("ScriptString", 768)); }
			ScriptString m_HelpTextCreditsDescriptionMenuTitle() { mixin(MGPC("ScriptString", 1128)); }
			ScriptString m_HelpTextYouCanPickupPassengerReminder() { mixin(MGPC("ScriptString", 780)); }
			ScriptString m_HelpTextYouCanPickupPassengerReminderMenuTitle() { mixin(MGPC("ScriptString", 1140)); }
			ScriptString m_HelpTextConduitDescription() { mixin(MGPC("ScriptString", 792)); }
			ScriptString m_HelpTextConduitDescriptionMenuTitle() { mixin(MGPC("ScriptString", 1152)); }
			ScriptString m_HelpTextSpotTargetReminder() { mixin(MGPC("ScriptString", 804)); }
			ScriptString m_HelpTextSpotTargetReminderMenuTitle() { mixin(MGPC("ScriptString", 1164)); }
			ScriptString m_HelpTextChangingClassDescription() { mixin(MGPC("ScriptString", 816)); }
			ScriptString m_HelpTextChangingClassDescriptionMenuTitle() { mixin(MGPC("ScriptString", 1176)); }
			ScriptString m_HelpTextChangingClassHowTo() { mixin(MGPC("ScriptString", 828)); }
			ScriptString m_HelpTextChangingClassHowToMenuTitle() { mixin(MGPC("ScriptString", 1188)); }
			ScriptString m_LocalizedSuppressString() { mixin(MGPC("ScriptString", 1200)); }
			float m_OffhandReminderRecursiveTime() { mixin(MGPC("float", 1216)); }
			float m_SpotTargetReminderRecursiveTime() { mixin(MGPC("float", 1224)); }
			float m_OffhandReminderInitialTime() { mixin(MGPC("float", 1212)); }
			float m_SpotTargetReminderInitialTime() { mixin(MGPC("float", 1220)); }
		}
		bool m_bShowHelpTexts() { mixin(MGBPC(476, 0x1)); }
		bool m_bShowHelpTexts(bool val) { mixin(MSBPC(476, 0x1)); }
		bool m_bSuppressOffhandReminder() { mixin(MGBPC(476, 0x100)); }
		bool m_bSuppressOffhandReminder(bool val) { mixin(MSBPC(476, 0x100)); }
		bool m_bSuppressSpotTargetReminder() { mixin(MGBPC(476, 0x10000000)); }
		bool m_bSuppressSpotTargetReminder(bool val) { mixin(MSBPC(476, 0x10000000)); }
		bool m_bSuppressGeneratorDescriptionLevel1() { mixin(MGBPC(476, 0x4)); }
		bool m_bSuppressGeneratorDescriptionLevel1(bool val) { mixin(MSBPC(476, 0x4)); }
		bool m_bSuppressGeneratorDescriptionLevel2() { mixin(MGBPC(476, 0x8)); }
		bool m_bSuppressGeneratorDescriptionLevel2(bool val) { mixin(MSBPC(476, 0x8)); }
		bool m_bSuppressGeneratorDescriptionLevel3() { mixin(MGBPC(476, 0x10)); }
		bool m_bSuppressGeneratorDescriptionLevel3(bool val) { mixin(MSBPC(476, 0x10)); }
		bool m_bSuppressGeneratorDescriptionLevel4() { mixin(MGBPC(476, 0x20)); }
		bool m_bSuppressGeneratorDescriptionLevel4(bool val) { mixin(MSBPC(476, 0x20)); }
		bool m_bSuppressCTFFlagDescription() { mixin(MGBPC(476, 0x200)); }
		bool m_bSuppressCTFFlagDescription(bool val) { mixin(MSBPC(476, 0x200)); }
		bool m_bSuppressRabbitFlagDescription() { mixin(MGBPC(476, 0x800)); }
		bool m_bSuppressRabbitFlagDescription(bool val) { mixin(MSBPC(476, 0x800)); }
		bool m_bSuppressInventoryStationDescription() { mixin(MGBPC(476, 0x2000)); }
		bool m_bSuppressInventoryStationDescription(bool val) { mixin(MSBPC(476, 0x2000)); }
		bool m_bSuppressVehicleStationDescription() { mixin(MGBPC(476, 0x4000)); }
		bool m_bSuppressVehicleStationDescription(bool val) { mixin(MSBPC(476, 0x4000)); }
		bool m_bSuppressBaseTurretDescriptionLevel1() { mixin(MGBPC(476, 0x8000)); }
		bool m_bSuppressBaseTurretDescriptionLevel1(bool val) { mixin(MSBPC(476, 0x8000)); }
		bool m_bSuppressBaseTurretDescriptionLevel2() { mixin(MGBPC(476, 0x10000)); }
		bool m_bSuppressBaseTurretDescriptionLevel2(bool val) { mixin(MSBPC(476, 0x10000)); }
		bool m_bSuppressBaseTurretDescriptionLevel3() { mixin(MGBPC(476, 0x20000)); }
		bool m_bSuppressBaseTurretDescriptionLevel3(bool val) { mixin(MSBPC(476, 0x20000)); }
		bool m_bSuppressBaseTurretDescriptionLevel4() { mixin(MGBPC(476, 0x40000)); }
		bool m_bSuppressBaseTurretDescriptionLevel4(bool val) { mixin(MSBPC(476, 0x40000)); }
		bool m_bSuppressRadarSensorDescriptionLevel1() { mixin(MGBPC(476, 0x80000)); }
		bool m_bSuppressRadarSensorDescriptionLevel1(bool val) { mixin(MSBPC(476, 0x80000)); }
		bool m_bSuppressRadarSensorDescriptionLevel2() { mixin(MGBPC(476, 0x100000)); }
		bool m_bSuppressRadarSensorDescriptionLevel2(bool val) { mixin(MSBPC(476, 0x100000)); }
		bool m_bSuppressRadarSensorDescriptionLevel3() { mixin(MGBPC(476, 0x200000)); }
		bool m_bSuppressRadarSensorDescriptionLevel3(bool val) { mixin(MSBPC(476, 0x200000)); }
		bool m_bSuppressRadarSensorDescriptionLevel4() { mixin(MGBPC(476, 0x400000)); }
		bool m_bSuppressRadarSensorDescriptionLevel4(bool val) { mixin(MSBPC(476, 0x400000)); }
		bool m_bSuppressRepairStationDescription() { mixin(MGBPC(476, 0x800000)); }
		bool m_bSuppressRepairStationDescription(bool val) { mixin(MSBPC(476, 0x800000)); }
		bool m_bSuppressSkiingHowTo() { mixin(MGBPC(476, 0x2)); }
		bool m_bSuppressSkiingHowTo(bool val) { mixin(MSBPC(476, 0x2)); }
		bool m_bSuppressJetpackHowTo() { mixin(MGBPC(476, 0x40)); }
		bool m_bSuppressJetpackHowTo(bool val) { mixin(MSBPC(476, 0x40)); }
		bool m_bSuppressOutOfAmmoNotifier() { mixin(MGBPC(476, 0x80)); }
		bool m_bSuppressOutOfAmmoNotifier(bool val) { mixin(MSBPC(476, 0x80)); }
		bool m_bSuppressHoldingEnemyFlagDescription() { mixin(MGBPC(476, 0x400)); }
		bool m_bSuppressHoldingEnemyFlagDescription(bool val) { mixin(MSBPC(476, 0x400)); }
		bool m_bSuppressHoldingRabbitFlagDescription() { mixin(MGBPC(476, 0x1000)); }
		bool m_bSuppressHoldingRabbitFlagDescription(bool val) { mixin(MSBPC(476, 0x1000)); }
		bool m_bSuppressArmoredTargetDescription() { mixin(MGBPC(476, 0x1000000)); }
		bool m_bSuppressArmoredTargetDescription(bool val) { mixin(MSBPC(476, 0x1000000)); }
		bool m_bSuppressCreditsDescription() { mixin(MGBPC(476, 0x2000000)); }
		bool m_bSuppressCreditsDescription(bool val) { mixin(MSBPC(476, 0x2000000)); }
		bool m_bSuppressYouCanPickupPassengerReminder() { mixin(MGBPC(476, 0x4000000)); }
		bool m_bSuppressYouCanPickupPassengerReminder(bool val) { mixin(MSBPC(476, 0x4000000)); }
		bool m_bSuppressConduitDescription() { mixin(MGBPC(476, 0x8000000)); }
		bool m_bSuppressConduitDescription(bool val) { mixin(MSBPC(476, 0x8000000)); }
		bool m_bSuppressChangingClassDescription() { mixin(MGBPC(476, 0x20000000)); }
		bool m_bSuppressChangingClassDescription(bool val) { mixin(MSBPC(476, 0x20000000)); }
		bool m_bSuppressChangingClassHowTo() { mixin(MGBPC(476, 0x40000000)); }
		bool m_bSuppressChangingClassHowTo(bool val) { mixin(MSBPC(476, 0x40000000)); }
	}
final:
	bool RequestHelpText(TrHelpTextManager.EHelpTextType RequestedType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrHelpTextManager.EHelpTextType*)params.ptr = RequestedType;
		(cast(ScriptObject)this).ProcessEvent(Functions.RequestHelpText, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void InitHelpTextManager()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitHelpTextManager, cast(void*)0, cast(void*)0);
	}
	void LevelLoadCompleted()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.LevelLoadCompleted, cast(void*)0, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
	bool CheckDestroy()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckDestroy, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsSuppressed(TrHelpTextManager.EHelpTextType RequestedType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrHelpTextManager.EHelpTextType*)params.ptr = RequestedType;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsSuppressed, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void RemoveHelpText(TrHelpTextManager.EHelpTextType TypeToRemove, float* Time = null, bool* bDoNotSuppress = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(TrHelpTextManager.EHelpTextType*)params.ptr = TypeToRemove;
		if (Time !is null)
			*cast(float*)&params[4] = *Time;
		if (bDoNotSuppress !is null)
			*cast(bool*)&params[8] = *bDoNotSuppress;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveHelpText, params.ptr, cast(void*)0);
	}
	void SuppressHelpText(TrHelpTextManager.EHelpTextType TypeToSuppress)
	{
		ubyte params[1];
		params[] = 0;
		*cast(TrHelpTextManager.EHelpTextType*)params.ptr = TypeToSuppress;
		(cast(ScriptObject)this).ProcessEvent(Functions.SuppressHelpText, params.ptr, cast(void*)0);
	}
	void UpdateHUD()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateHUD, cast(void*)0, cast(void*)0);
	}
	ScriptString FormatText(ScriptString InString)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InString;
		(cast(ScriptObject)this).ProcessEvent(Functions.FormatText, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	int HelpTextQueueSort(TrHelpTextManager.EHelpTextType A, TrHelpTextManager.EHelpTextType B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrHelpTextManager.EHelpTextType*)params.ptr = A;
		*cast(TrHelpTextManager.EHelpTextType*)&params[1] = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.HelpTextQueueSort, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	bool UnsuppressedHelpTextsExist()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.UnsuppressedHelpTextsExist, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void OffhandReminderTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OffhandReminderTimer, cast(void*)0, cast(void*)0);
	}
	void ClearOffhandReminderTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearOffhandReminderTimer, cast(void*)0, cast(void*)0);
	}
	void SpotTargetReminderTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpotTargetReminderTimer, cast(void*)0, cast(void*)0);
	}
	void ClearSpotTargetReminderTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearSpotTargetReminderTimer, cast(void*)0, cast(void*)0);
	}
	void UpdateTypesToRemoveOnTimers(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateTypesToRemoveOnTimers, params.ptr, cast(void*)0);
	}
	void ResetConfig()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetConfig, cast(void*)0, cast(void*)0);
	}
	void EnableHelpText(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableHelpText, params.ptr, cast(void*)0);
	}
}
