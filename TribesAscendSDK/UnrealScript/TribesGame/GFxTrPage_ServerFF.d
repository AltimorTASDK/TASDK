module UnrealScript.TribesGame.GFxTrPage_ServerFF;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_ServerFF : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrPage_ServerFF")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mSpecialAction;
			ScriptFunction mPopupData;
			ScriptFunction mPopupComplete;
			ScriptFunction mShowBoundsError;
			ScriptFunction mFillData;
			ScriptFunction mFillOption;
			ScriptFunction mSetSubTitle;
			ScriptFunction mCheckDescription;
			ScriptFunction mFillDescription;
			ScriptFunction mShowModel;
		}
		public @property static final
		{
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ServerFF.Initialize")); }
			ScriptFunction SpecialAction() { return mSpecialAction ? mSpecialAction : (mSpecialAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ServerFF.SpecialAction")); }
			ScriptFunction PopupData() { return mPopupData ? mPopupData : (mPopupData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ServerFF.PopupData")); }
			ScriptFunction PopupComplete() { return mPopupComplete ? mPopupComplete : (mPopupComplete = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ServerFF.PopupComplete")); }
			ScriptFunction ShowBoundsError() { return mShowBoundsError ? mShowBoundsError : (mShowBoundsError = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ServerFF.ShowBoundsError")); }
			ScriptFunction FillData() { return mFillData ? mFillData : (mFillData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ServerFF.FillData")); }
			ScriptFunction FillOption() { return mFillOption ? mFillOption : (mFillOption = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ServerFF.FillOption")); }
			ScriptFunction SetSubTitle() { return mSetSubTitle ? mSetSubTitle : (mSetSubTitle = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ServerFF.SetSubTitle")); }
			ScriptFunction CheckDescription() { return mCheckDescription ? mCheckDescription : (mCheckDescription = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ServerFF.CheckDescription")); }
			ScriptFunction FillDescription() { return mFillDescription ? mFillDescription : (mFillDescription = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ServerFF.FillDescription")); }
			ScriptFunction ShowModel() { return mShowModel ? mShowModel : (mShowModel = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_ServerFF.ShowModel")); }
		}
	}
	@property final
	{
		auto ref
		{
			float MaxBOunds() { return *cast(float*)(cast(size_t)cast(void*)this + 368); }
			float MinBounds() { return *cast(float*)(cast(size_t)cast(void*)this + 364); }
			int PopupNum() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
		}
		bool bBoundsPopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 360) & 0x1) != 0; }
		bool bBoundsPopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 360) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 360) &= ~0x1; } return val; }
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
	void PopupData(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(Functions.PopupData, params.ptr, cast(void*)0);
	}
	void PopupComplete(int Action, ScriptString TextInput)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Action;
		*cast(ScriptString*)&params[4] = TextInput;
		(cast(ScriptObject)this).ProcessEvent(Functions.PopupComplete, params.ptr, cast(void*)0);
	}
	void ShowBoundsError(int PropId, int PropType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PropId;
		*cast(int*)&params[4] = PropType;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowBoundsError, params.ptr, cast(void*)0);
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
