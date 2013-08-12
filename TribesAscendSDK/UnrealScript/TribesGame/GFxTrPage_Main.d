module UnrealScript.TribesGame.GFxTrPage_Main;

import ScriptClasses;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_Main : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrPage_Main")); }
	private static __gshared GFxTrPage_Main mDefaultProperties;
	@property final static GFxTrPage_Main DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxTrPage_Main)("GFxTrPage_Main TribesGame.Default__GFxTrPage_Main")); }
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
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Main.Initialize")); }
			ScriptFunction SpecialAction() { return mSpecialAction ? mSpecialAction : (mSpecialAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Main.SpecialAction")); }
			ScriptFunction TakeFocus() { return mTakeFocus ? mTakeFocus : (mTakeFocus = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Main.TakeFocus")); }
			ScriptFunction CheckPricing() { return mCheckPricing ? mCheckPricing : (mCheckPricing = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Main.CheckPricing")); }
			ScriptFunction FillPricing() { return mFillPricing ? mFillPricing : (mFillPricing = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Main.FillPricing")); }
			ScriptFunction ModifyAction() { return mModifyAction ? mModifyAction : (mModifyAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Main.ModifyAction")); }
			ScriptFunction TakeAction() { return mTakeAction ? mTakeAction : (mTakeAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Main.TakeAction")); }
			ScriptFunction FillData() { return mFillData ? mFillData : (mFillData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Main.FillData")); }
			ScriptFunction CheckFeatures() { return mCheckFeatures ? mCheckFeatures : (mCheckFeatures = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Main.CheckFeatures")); }
			ScriptFunction FillFeature() { return mFillFeature ? mFillFeature : (mFillFeature = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Main.FillFeature")); }
			ScriptFunction FormatDealTime() { return mFormatDealTime ? mFormatDealTime : (mFormatDealTime = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Main.FormatDealTime")); }
			ScriptFunction FillOption() { return mFillOption ? mFillOption : (mFillOption = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Main.FillOption")); }
			ScriptFunction ShowModel() { return mShowModel ? mShowModel : (mShowModel = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Main.ShowModel")); }
			ScriptFunction UpdateQueueTimer() { return mUpdateQueueTimer ? mUpdateQueueTimer : (mUpdateQueueTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Main.UpdateQueueTimer")); }
			ScriptFunction StartDealTimer() { return mStartDealTimer ? mStartDealTimer : (mStartDealTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Main.StartDealTimer")); }
			ScriptFunction UpdateDealTimer() { return mUpdateDealTimer ? mUpdateDealTimer : (mUpdateDealTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Main.UpdateDealTimer")); }
			ScriptFunction CheckGoldDeal() { return mCheckGoldDeal ? mCheckGoldDeal : (mCheckGoldDeal = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Main.CheckGoldDeal")); }
			ScriptFunction NeedFeatureUpdate() { return mNeedFeatureUpdate ? mNeedFeatureUpdate : (mNeedFeatureUpdate = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Main.NeedFeatureUpdate")); }
			ScriptFunction GetEquipTypeName() { return mGetEquipTypeName ? mGetEquipTypeName : (mGetEquipTypeName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Main.GetEquipTypeName")); }
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
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.GFxTrPage_Main.BundleData")); }
		@property final auto ref
		{
			// WARNING: Property 'Model' has the same name as a defined type!
			int LootId() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(GFxTrPage_Main.BundleData) ActiveBundles() { return *cast(ScriptArray!(GFxTrPage_Main.BundleData)*)(cast(size_t)cast(void*)this + 404); }
			ScriptString TabOffset() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 392); }
			ScriptString QueueTimer() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 380); }
			int FeatureSwapTime() { return *cast(int*)(cast(size_t)cast(void*)this + 372); }
			int FeatureShowTime() { return *cast(int*)(cast(size_t)cast(void*)this + 368); }
			int ActiveFeature() { return *cast(int*)(cast(size_t)cast(void*)this + 364); }
			int GoldDealId() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
			int NumQuit() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
		}
		bool bSwingingCamera() { return (*cast(uint*)(cast(size_t)cast(void*)this + 376) & 0x1) != 0; }
		bool bSwingingCamera(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 376) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 376) &= ~0x1; } return val; }
		bool bAnimInit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 376) & 0x2) != 0; }
		bool bAnimInit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 376) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 376) &= ~0x2; } return val; }
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
