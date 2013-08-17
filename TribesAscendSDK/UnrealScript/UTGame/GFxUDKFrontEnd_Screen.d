module UnrealScript.UTGame.GFxUDKFrontEnd_Screen;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.GFxUDKFrontEnd_View;
import UnrealScript.GFxUI.GFxObject;
import UnrealScript.GFxUI.GFxClikWidget;

extern(C++) interface GFxUDKFrontEnd_Screen : GFxUDKFrontEnd_View
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.GFxUDKFrontEnd_Screen")()); }
	private static __gshared GFxUDKFrontEnd_Screen mDefaultProperties;
	@property final static GFxUDKFrontEnd_Screen DefaultProperties() { mixin(MGDPC!(GFxUDKFrontEnd_Screen, "GFxUDKFrontEnd_Screen UTGame.Default__GFxUDKFrontEnd_Screen")()); }
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
			ScriptFunction FocusIn_BackButton() { mixin(MGF!("mFocusIn_BackButton", "Function UTGame.GFxUDKFrontEnd_Screen.FocusIn_BackButton")()); }
			ScriptFunction UpdateHelpButtonImages() { mixin(MGF!("mUpdateHelpButtonImages", "Function UTGame.GFxUDKFrontEnd_Screen.UpdateHelpButtonImages")()); }
			ScriptFunction WidgetInitialized() { mixin(MGF!("mWidgetInitialized", "Function UTGame.GFxUDKFrontEnd_Screen.WidgetInitialized")()); }
		}
	}
	@property final auto ref
	{
		ScriptString CancelButtonImage() { mixin(MGPC!(ScriptString, 208)()); }
		ScriptString AcceptButtonImage() { mixin(MGPC!(ScriptString, 196)()); }
		ScriptString CancelButtonHelpText() { mixin(MGPC!(ScriptString, 184)()); }
		ScriptString AcceptButtonHelpText() { mixin(MGPC!(ScriptString, 172)()); }
		GFxObject InfoTxt() { mixin(MGPC!(GFxObject, 168)()); }
		GFxObject HelpTxt() { mixin(MGPC!(GFxObject, 164)()); }
		GFxObject LogoMC() { mixin(MGPC!(GFxObject, 160)()); }
		GFxObject FooterMC() { mixin(MGPC!(GFxObject, 156)()); }
		GFxObject TitleMC() { mixin(MGPC!(GFxObject, 152)()); }
		GFxClikWidget BackBtn() { mixin(MGPC!(GFxClikWidget, 148)()); }
		ScriptString ViewTitle() { mixin(MGPC!(ScriptString, 136)()); }
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
