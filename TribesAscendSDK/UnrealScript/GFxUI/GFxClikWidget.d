module UnrealScript.GFxUI.GFxClikWidget;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxClikWidget : GFxObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class GFxUI.GFxClikWidget")); }
	private static __gshared GFxClikWidget mDefaultProperties;
	@property final static GFxClikWidget DefaultProperties() { mixin(MGDPC("GFxClikWidget", "GFxClikWidget GFxUI.Default__GFxClikWidget")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mEventListener;
			ScriptFunction mAddEventListener;
			ScriptFunction mGetEventStringFromTypename;
			ScriptFunction mSetListener;
			ScriptFunction mASAddEventListener;
			ScriptFunction mRemoveAllEventListeners;
			ScriptFunction mASRemoveAllEventListeners;
		}
		public @property static final
		{
			ScriptFunction EventListener() { mixin(MGF("mEventListener", "Function GFxUI.GFxClikWidget.EventListener")); }
			ScriptFunction AddEventListener() { mixin(MGF("mAddEventListener", "Function GFxUI.GFxClikWidget.AddEventListener")); }
			ScriptFunction GetEventStringFromTypename() { mixin(MGF("mGetEventStringFromTypename", "Function GFxUI.GFxClikWidget.GetEventStringFromTypename")); }
			ScriptFunction SetListener() { mixin(MGF("mSetListener", "Function GFxUI.GFxClikWidget.SetListener")); }
			ScriptFunction ASAddEventListener() { mixin(MGF("mASAddEventListener", "Function GFxUI.GFxClikWidget.ASAddEventListener")); }
			ScriptFunction RemoveAllEventListeners() { mixin(MGF("mRemoveAllEventListeners", "Function GFxUI.GFxClikWidget.RemoveAllEventListeners")); }
			ScriptFunction ASRemoveAllEventListeners() { mixin(MGF("mASRemoveAllEventListeners", "Function GFxUI.GFxClikWidget.ASRemoveAllEventListeners")); }
		}
	}
	struct EventData
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct GFxUI.GFxClikWidget.EventData")); }
		@property final auto ref
		{
			int lastIndex() { mixin(MGPS("int", 32)); }
			int Index() { mixin(MGPS("int", 28)); }
			int Button() { mixin(MGPS("int", 24)); }
			int mouseIndex() { mixin(MGPS("int", 20)); }
			int Data() { mixin(MGPS("int", 16)); }
			ScriptString Type() { mixin(MGPS("ScriptString", 4)); }
			GFxObject Target() { mixin(MGPS("GFxObject", 0)); }
		}
	}
	// ERROR: Unsupported object class 'DelegateProperty' for the property named '__EventListener__Delegate'!
final:
	void EventListener(GFxClikWidget.EventData Data)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = Data;
		(cast(ScriptObject)this).ProcessEvent(Functions.EventListener, params.ptr, cast(void*)0);
	}
	void AddEventListener(ScriptName Type, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* pListener)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = Type;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[8] = pListener;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddEventListener, params.ptr, cast(void*)0);
	}
	ScriptString GetEventStringFromTypename(ScriptName Typename)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = Typename;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetEventStringFromTypename, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[8];
	}
	void SetListener(GFxObject O, ScriptString Member, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* pListener)
	{
		ubyte params[28];
		params[] = 0;
		*cast(GFxObject*)params.ptr = O;
		*cast(ScriptString*)&params[4] = Member;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[16] = pListener;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetListener, params.ptr, cast(void*)0);
	}
	void ASAddEventListener(ScriptString Type, GFxObject O, ScriptString func)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Type;
		*cast(GFxObject*)&params[12] = O;
		*cast(ScriptString*)&params[16] = func;
		(cast(ScriptObject)this).ProcessEvent(Functions.ASAddEventListener, params.ptr, cast(void*)0);
	}
	void RemoveAllEventListeners(ScriptString Event)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Event;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveAllEventListeners, params.ptr, cast(void*)0);
	}
	void ASRemoveAllEventListeners(ScriptString Event)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Event;
		(cast(ScriptObject)this).ProcessEvent(Functions.ASRemoveAllEventListeners, params.ptr, cast(void*)0);
	}
}
