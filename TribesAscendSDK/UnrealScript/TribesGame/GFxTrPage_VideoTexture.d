module UnrealScript.TribesGame.GFxTrPage_VideoTexture;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_VideoTexture : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrPage_VideoTexture")); }
	private static __gshared GFxTrPage_VideoTexture mDefaultProperties;
	@property final static GFxTrPage_VideoTexture DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxTrPage_VideoTexture)("GFxTrPage_VideoTexture TribesGame.Default__GFxTrPage_VideoTexture")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mFillData;
			ScriptFunction mSpecialAction;
			ScriptFunction mPerformChange;
			ScriptFunction mFillOption;
		}
		public @property static final
		{
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_VideoTexture.Initialize")); }
			ScriptFunction FillData() { return mFillData ? mFillData : (mFillData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_VideoTexture.FillData")); }
			ScriptFunction SpecialAction() { return mSpecialAction ? mSpecialAction : (mSpecialAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_VideoTexture.SpecialAction")); }
			ScriptFunction PerformChange() { return mPerformChange ? mPerformChange : (mPerformChange = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_VideoTexture.PerformChange")); }
			ScriptFunction FillOption() { return mFillOption ? mFillOption : (mFillOption = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_VideoTexture.FillOption")); }
		}
	}
	enum MENU_ACTION_VIDEOTEXTURE : ubyte
	{
		MAVT_MINIMAL = 0,
		MAVT_LOW = 1,
		MAVT_MEDIUM = 2,
		MAVT_HIGH = 3,
		MAVT_VERYHIGH = 4,
		MAVT_MAX = 5,
	}
	@property final auto ref
	{
		int CurrGraphics() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
		int SettingIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
	}
final:
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
	void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillData, params.ptr, cast(void*)0);
	}
	void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpecialAction, params.ptr, cast(void*)0);
	}
	void PerformChange()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PerformChange, cast(void*)0, cast(void*)0);
	}
	GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillOption, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
}
