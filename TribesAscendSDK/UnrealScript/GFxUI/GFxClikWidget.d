module UnrealScript.GFxUI.GFxClikWidget;

import ScriptClasses;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxClikWidget : GFxObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GFxUI.GFxClikWidget")); }
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
			ScriptFunction EventListener() { return mEventListener ? mEventListener : (mEventListener = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxClikWidget.EventListener")); }
			ScriptFunction AddEventListener() { return mAddEventListener ? mAddEventListener : (mAddEventListener = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxClikWidget.AddEventListener")); }
			ScriptFunction GetEventStringFromTypename() { return mGetEventStringFromTypename ? mGetEventStringFromTypename : (mGetEventStringFromTypename = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxClikWidget.GetEventStringFromTypename")); }
			ScriptFunction SetListener() { return mSetListener ? mSetListener : (mSetListener = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxClikWidget.SetListener")); }
			ScriptFunction ASAddEventListener() { return mASAddEventListener ? mASAddEventListener : (mASAddEventListener = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxClikWidget.ASAddEventListener")); }
			ScriptFunction RemoveAllEventListeners() { return mRemoveAllEventListeners ? mRemoveAllEventListeners : (mRemoveAllEventListeners = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxClikWidget.RemoveAllEventListeners")); }
			ScriptFunction ASRemoveAllEventListeners() { return mASRemoveAllEventListeners ? mASRemoveAllEventListeners : (mASRemoveAllEventListeners = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxClikWidget.ASRemoveAllEventListeners")); }
		}
	}
	struct EventData
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct GFxUI.GFxClikWidget.EventData")); }
		@property final auto ref
		{
			int lastIndex() { return *cast(int*)(cast(size_t)&this + 32); }
			int Index() { return *cast(int*)(cast(size_t)&this + 28); }
			int Button() { return *cast(int*)(cast(size_t)&this + 24); }
			int mouseIndex() { return *cast(int*)(cast(size_t)&this + 20); }
			int Data() { return *cast(int*)(cast(size_t)&this + 16); }
			ScriptString Type() { return *cast(ScriptString*)(cast(size_t)&this + 4); }
			GFxObject Target() { return *cast(GFxObject*)(cast(size_t)&this + 0); }
		}
	}
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
