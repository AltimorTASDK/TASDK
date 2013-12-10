module UnrealScript.TribesGame.GFxTrPage_Main;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_Main : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.GFxTrPage_Main")); }
	private static __gshared GFxTrPage_Main mDefaultProperties;
	@property final static GFxTrPage_Main DefaultProperties() { mixin(MGDPC("GFxTrPage_Main", "GFxTrPage_Main TribesGame.Default__GFxTrPage_Main")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mSpecialAction;
			ScriptFunction mTakeFocus;
			ScriptFunction mCheckPricing;
			ScriptFunction mFillPricing;
			ScriptFunction mModifyAction;
			ScriptFunction mTakeAction;
			ScriptFunction mFillData;
			ScriptFunction mCheckFeatures;
			ScriptFunction mFillFeature;
			ScriptFunction mFormatDealTime;
			ScriptFunction mFillOption;
			ScriptFunction mShowModel;
			ScriptFunction mUpdateQueueTimer;
			ScriptFunction mStartDealTimer;
			ScriptFunction mUpdateDealTimer;
			ScriptFunction mCheckGoldDeal;
			ScriptFunction mNeedFeatureUpdate;
			ScriptFunction mGetEquipTypeName;
		}
		public @property static final
		{
			ScriptFunction Initialize() { mixin(MGF("mInitialize", "Function TribesGame.GFxTrPage_Main.Initialize")); }
			ScriptFunction SpecialAction() { mixin(MGF("mSpecialAction", "Function TribesGame.GFxTrPage_Main.SpecialAction")); }
			ScriptFunction TakeFocus() { mixin(MGF("mTakeFocus", "Function TribesGame.GFxTrPage_Main.TakeFocus")); }
			ScriptFunction CheckPricing() { mixin(MGF("mCheckPricing", "Function TribesGame.GFxTrPage_Main.CheckPricing")); }
			ScriptFunction FillPricing() { mixin(MGF("mFillPricing", "Function TribesGame.GFxTrPage_Main.FillPricing")); }
			ScriptFunction ModifyAction() { mixin(MGF("mModifyAction", "Function TribesGame.GFxTrPage_Main.ModifyAction")); }
			ScriptFunction TakeAction() { mixin(MGF("mTakeAction", "Function TribesGame.GFxTrPage_Main.TakeAction")); }
			ScriptFunction FillData() { mixin(MGF("mFillData", "Function TribesGame.GFxTrPage_Main.FillData")); }
			ScriptFunction CheckFeatures() { mixin(MGF("mCheckFeatures", "Function TribesGame.GFxTrPage_Main.CheckFeatures")); }
			ScriptFunction FillFeature() { mixin(MGF("mFillFeature", "Function TribesGame.GFxTrPage_Main.FillFeature")); }
			ScriptFunction FormatDealTime() { mixin(MGF("mFormatDealTime", "Function TribesGame.GFxTrPage_Main.FormatDealTime")); }
			ScriptFunction FillOption() { mixin(MGF("mFillOption", "Function TribesGame.GFxTrPage_Main.FillOption")); }
			ScriptFunction ShowModel() { mixin(MGF("mShowModel", "Function TribesGame.GFxTrPage_Main.ShowModel")); }
			ScriptFunction UpdateQueueTimer() { mixin(MGF("mUpdateQueueTimer", "Function TribesGame.GFxTrPage_Main.UpdateQueueTimer")); }
			ScriptFunction StartDealTimer() { mixin(MGF("mStartDealTimer", "Function TribesGame.GFxTrPage_Main.StartDealTimer")); }
			ScriptFunction UpdateDealTimer() { mixin(MGF("mUpdateDealTimer", "Function TribesGame.GFxTrPage_Main.UpdateDealTimer")); }
			ScriptFunction CheckGoldDeal() { mixin(MGF("mCheckGoldDeal", "Function TribesGame.GFxTrPage_Main.CheckGoldDeal")); }
			ScriptFunction NeedFeatureUpdate() { mixin(MGF("mNeedFeatureUpdate", "Function TribesGame.GFxTrPage_Main.NeedFeatureUpdate")); }
			ScriptFunction GetEquipTypeName() { mixin(MGF("mGetEquipTypeName", "Function TribesGame.GFxTrPage_Main.GetEquipTypeName")); }
		}
	}
	enum EFEATURES : ubyte
	{
		FEA_GOLD = 0,
		FEA_DOTD = 1,
		FEA_BUNDLEA = 2,
		FEA_BUNDLEB = 3,
		FEA_BUNDLEC = 4,
		FEA_MAX = 5,
	}
	struct BundleData
	{
		private ubyte __buffer__[5];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct TribesGame.GFxTrPage_Main.BundleData")); }
		@property final auto ref
		{
			TrObject.EContentDataType ModelVar() { mixin(MGPS("TrObject.EContentDataType", 4)); }
			int LootId() { mixin(MGPS("int", 0)); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(GFxTrPage_Main.BundleData) ActiveBundles() { mixin(MGPC("ScriptArray!(GFxTrPage_Main.BundleData)", 404)); }
			ScriptString TabOffset() { mixin(MGPC("ScriptString", 392)); }
			ScriptString QueueTimer() { mixin(MGPC("ScriptString", 380)); }
			int FeatureSwapTime() { mixin(MGPC("int", 372)); }
			int FeatureShowTime() { mixin(MGPC("int", 368)); }
			int ActiveFeature() { mixin(MGPC("int", 364)); }
			int GoldDealId() { mixin(MGPC("int", 360)); }
			int NumQuit() { mixin(MGPC("int", 356)); }
		}
		bool bSwingingCamera() { mixin(MGBPC(376, 0x1)); }
		bool bSwingingCamera(bool val) { mixin(MSBPC(376, 0x1)); }
		bool bAnimInit() { mixin(MGBPC(376, 0x2)); }
		bool bAnimInit(bool val) { mixin(MSBPC(376, 0x2)); }
	}
final:
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
	void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpecialAction, params.ptr, cast(void*)0);
	}
	int TakeFocus(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeFocus, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	bool CheckPricing(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckPricing, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	GFxObject FillPricing(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillPricing, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	int ModifyAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.ModifyAction, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	int TakeAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeAction, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillData, params.ptr, cast(void*)0);
	}
	void CheckFeatures(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckFeatures, params.ptr, cast(void*)0);
	}
	GFxObject FillFeature()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillFeature, params.ptr, cast(void*)0);
		return *cast(GFxObject*)params.ptr;
	}
	ScriptString FormatDealTime()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.FormatDealTime, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillOption, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	void ShowModel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowModel, cast(void*)0, cast(void*)0);
	}
	void UpdateQueueTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateQueueTimer, cast(void*)0, cast(void*)0);
	}
	void StartDealTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartDealTimer, cast(void*)0, cast(void*)0);
	}
	void UpdateDealTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateDealTimer, cast(void*)0, cast(void*)0);
	}
	void CheckGoldDeal()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckGoldDeal, cast(void*)0, cast(void*)0);
	}
	bool NeedFeatureUpdate()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.NeedFeatureUpdate, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	ScriptString GetEquipTypeName(int Type)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Type;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetEquipTypeName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
}
