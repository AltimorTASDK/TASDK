module UnrealScript.UTGame.GFxUDKFrontEnd_Screen;

import ScriptClasses;
import UnrealScript.UTGame.GFxUDKFrontEnd_View;
import UnrealScript.GFxUI.GFxObject;
import UnrealScript.GFxUI.GFxClikWidget;

extern(C++) interface GFxUDKFrontEnd_Screen : GFxUDKFrontEnd_View
{
public extern(D):
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38130], params.ptr, cast(void*)0);
	}
	void UpdateHelpButtonImages()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38132], cast(void*)0, cast(void*)0);
	}
	bool WidgetInitialized(ScriptName WidgetName, ScriptName WidgetPath, GFxObject Widget)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = WidgetName;
		*cast(ScriptName*)&params[8] = WidgetPath;
		*cast(GFxObject*)&params[16] = Widget;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38133], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
}
