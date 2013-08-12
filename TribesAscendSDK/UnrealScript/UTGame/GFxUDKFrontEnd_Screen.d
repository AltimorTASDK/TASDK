module UnrealScript.UTGame.GFxUDKFrontEnd_Screen;

import ScriptClasses;
import UnrealScript.UTGame.GFxUDKFrontEnd_View;
import UnrealScript.GFxUI.GFxObject;
import UnrealScript.GFxUI.GFxClikWidget;

extern(C++) interface GFxUDKFrontEnd_Screen : GFxUDKFrontEnd_View
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.GFxUDKFrontEnd_Screen")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mFocusIn_BackButton;
			ScriptFunction mUpdateHelpButtonImages;
			ScriptFunction mWidgetInitialized;
		}
		public @property static final
		{
			ScriptFunction FocusIn_BackButton() { return mFocusIn_BackButton ? mFocusIn_BackButton : (mFocusIn_BackButton = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_Screen.FocusIn_BackButton")); }
			ScriptFunction UpdateHelpButtonImages() { return mUpdateHelpButtonImages ? mUpdateHelpButtonImages : (mUpdateHelpButtonImages = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_Screen.UpdateHelpButtonImages")); }
			ScriptFunction WidgetInitialized() { return mWidgetInitialized ? mWidgetInitialized : (mWidgetInitialized = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_Screen.WidgetInitialized")); }
		}
	}
	@property final auto ref
	{
		ScriptString CancelButtonImage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 208); }
		ScriptString AcceptButtonImage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 196); }
		ScriptString CancelButtonHelpText() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 184); }
		ScriptString AcceptButtonHelpText() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 172); }
		GFxObject InfoTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 168); }
		GFxObject HelpTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 164); }
		GFxObject LogoMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 160); }
		GFxObject FooterMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 156); }
		GFxObject TitleMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 152); }
		GFxClikWidget BackBtn() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 148); }
		ScriptString ViewTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 136); }
	}
final:
	void FocusIn_BackButton(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(Functions.FocusIn_BackButton, params.ptr, cast(void*)0);
	}
	void UpdateHelpButtonImages()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateHelpButtonImages, cast(void*)0, cast(void*)0);
	}
	bool WidgetInitialized(ScriptName WidgetName, ScriptName WidgetPath, GFxObject Widget)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = WidgetName;
		*cast(ScriptName*)&params[8] = WidgetPath;
		*cast(GFxObject*)&params[16] = Widget;
		(cast(ScriptObject)this).ProcessEvent(Functions.WidgetInitialized, params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
}
