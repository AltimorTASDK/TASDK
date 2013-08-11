module UnrealScript.GFxUI.GFxClikWidget;

import ScriptClasses;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxClikWidget : GFxObject
{
public extern(D):
	struct EventData
	{
		private ubyte __buffer__[36];
	public extern(D):
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30228], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30231], params.ptr, cast(void*)0);
	}
	ScriptString GetEventStringFromTypename(ScriptName Typename)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = Typename;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30236], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30237], params.ptr, cast(void*)0);
	}
	void ASAddEventListener(ScriptString Type, GFxObject O, ScriptString func)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Type;
		*cast(GFxObject*)&params[12] = O;
		*cast(ScriptString*)&params[16] = func;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30238], params.ptr, cast(void*)0);
	}
	void RemoveAllEventListeners(ScriptString Event)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Event;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30239], params.ptr, cast(void*)0);
	}
	void ASRemoveAllEventListeners(ScriptString Event)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Event;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30241], params.ptr, cast(void*)0);
	}
}
