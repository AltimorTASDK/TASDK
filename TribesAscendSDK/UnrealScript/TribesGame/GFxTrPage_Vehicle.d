module UnrealScript.TribesGame.GFxTrPage_Vehicle;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_Vehicle : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrPage_Vehicle")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mSpecialAction;
			ScriptFunction mClearActions;
			ScriptFunction mTakeAction;
			ScriptFunction mAddOption;
			ScriptFunction mFillData;
			ScriptFunction mFillOptions;
			ScriptFunction mFillOption;
			ScriptFunction mShowModel;
		}
		public @property static final
		{
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Vehicle.Initialize")); }
			ScriptFunction SpecialAction() { return mSpecialAction ? mSpecialAction : (mSpecialAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Vehicle.SpecialAction")); }
			ScriptFunction ClearActions() { return mClearActions ? mClearActions : (mClearActions = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Vehicle.ClearActions")); }
			ScriptFunction TakeAction() { return mTakeAction ? mTakeAction : (mTakeAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Vehicle.TakeAction")); }
			ScriptFunction AddOption() { return mAddOption ? mAddOption : (mAddOption = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Vehicle.AddOption")); }
			ScriptFunction FillData() { return mFillData ? mFillData : (mFillData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Vehicle.FillData")); }
			ScriptFunction FillOptions() { return mFillOptions ? mFillOptions : (mFillOptions = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Vehicle.FillOptions")); }
			ScriptFunction FillOption() { return mFillOption ? mFillOption : (mFillOption = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Vehicle.FillOption")); }
			ScriptFunction ShowModel() { return mShowModel ? mShowModel : (mShowModel = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Vehicle.ShowModel")); }
		}
	}
	struct VehicleOption
	{
		private ubyte __buffer__[40];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.GFxTrPage_Vehicle.VehicleOption")); }
		@property final auto ref
		{
			ScriptString DisplayName() { return *cast(ScriptString*)(cast(size_t)&this + 28); }
			ScriptString ClassName() { return *cast(ScriptString*)(cast(size_t)&this + 16); }
			int MaxCount() { return *cast(int*)(cast(size_t)&this + 12); }
			int Count() { return *cast(int*)(cast(size_t)&this + 8); }
			int Icon() { return *cast(int*)(cast(size_t)&this + 4); }
			int Cost() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		int PlayerCredits() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
		ScriptArray!(GFxTrPage_Vehicle.VehicleOption) VehicleOptions() { return *cast(ScriptArray!(GFxTrPage_Vehicle.VehicleOption)*)(cast(size_t)cast(void*)this + 360); }
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
	void ClearActions()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearActions, cast(void*)0, cast(void*)0);
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
	void AddOption(ScriptString ClassName, ScriptString DisplayName, int Cost, int Icon, int Count, int MaxCount)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ClassName;
		*cast(ScriptString*)&params[12] = DisplayName;
		*cast(int*)&params[24] = Cost;
		*cast(int*)&params[28] = Icon;
		*cast(int*)&params[32] = Count;
		*cast(int*)&params[36] = MaxCount;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddOption, params.ptr, cast(void*)0);
	}
	void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillData, params.ptr, cast(void*)0);
	}
	GFxObject FillOptions(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillOptions, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
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
}
