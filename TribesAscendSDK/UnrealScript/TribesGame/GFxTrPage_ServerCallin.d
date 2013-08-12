module UnrealScript.TribesGame.GFxTrPage_ServerCallin;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_ServerCallin : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrPage_ServerCallin")); }
	private static __gshared GFxTrPage_ServerCallin mDefaultProperties;
	@property final static GFxTrPage_ServerCallin DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxTrPage_ServerCallin)("GFxTrPage_ServerCallin TribesGame.Default__GFxTrPage_ServerCallin")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mSpecialAction;
			ScriptFunction mFillData;
			ScriptFunction mFillOption;
			ScriptFunction mSetSubTitle;
			ScriptFunction mCheckDescription;
			ScriptFunction mFillDescription;
			ScriptFunction mShowModel;
		}
		public @property static final
		{
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ServerCallin.Initialize")); }
			ScriptFunction SpecialAction() { return mSpecialAction ? mSpecialAction : (mSpecialAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ServerCallin.SpecialAction")); }
			ScriptFunction FillData() { return mFillData ? mFillData : (mFillData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ServerCallin.FillData")); }
			ScriptFunction FillOption() { return mFillOption ? mFillOption : (mFillOption = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ServerCallin.FillOption")); }
			ScriptFunction SetSubTitle() { return mSetSubTitle ? mSetSubTitle : (mSetSubTitle = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ServerCallin.SetSubTitle")); }
			ScriptFunction CheckDescription() { return mCheckDescription ? mCheckDescription : (mCheckDescription = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ServerCallin.CheckDescription")); }
			ScriptFunction FillDescription() { return mFillDescription ? mFillDescription : (mFillDescription = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ServerCallin.FillDescription")); }
			ScriptFunction ShowModel() { return mShowModel ? mShowModel : (mShowModel = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ServerCallin.ShowModel")); }
		}
	}
	@property final auto ref
	{
		int ORBNumber() { return *cast(int*)(cast(size_t)cast(void*)this + 364); }
		int SUPNumber() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
		int TACNumber() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
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
	void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillData, params.ptr, cast(void*)0);
	}
	GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillOption, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	void SetSubTitle(float val, GFxObject Obj)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = val;
		*cast(GFxObject*)&params[4] = Obj;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSubTitle, params.ptr, cast(void*)0);
	}
	void CheckDescription(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckDescription, params.ptr, cast(void*)0);
	}
	GFxObject FillDescription(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillDescription, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	void ShowModel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowModel, cast(void*)0, cast(void*)0);
	}
}
