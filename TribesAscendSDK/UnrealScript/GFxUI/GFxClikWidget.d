module UnrealScript.GFxUI.GFxClikWidget;

import ScriptClasses;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxClikWidget : GFxObject
{
	struct EventData
	{
		public @property final auto ref int lastIndex() { return *cast(int*)(cast(size_t)&this + 32); }
		private ubyte __lastIndex[4];
		public @property final auto ref int Index() { return *cast(int*)(cast(size_t)&this + 28); }
		private ubyte __Index[4];
		public @property final auto ref int Button() { return *cast(int*)(cast(size_t)&this + 24); }
		private ubyte __Button[4];
		public @property final auto ref int mouseIndex() { return *cast(int*)(cast(size_t)&this + 20); }
		private ubyte __mouseIndex[4];
		public @property final auto ref int Data() { return *cast(int*)(cast(size_t)&this + 16); }
		private ubyte __Data[4];
		public @property final auto ref ScriptString Type() { return *cast(ScriptString*)(cast(size_t)&this + 4); }
		private ubyte __Type[12];
		public @property final auto ref GFxObject Target() { return *cast(GFxObject*)(cast(size_t)&this + 0); }
		private ubyte __Target[4];
	}
	final void EventListener(GFxClikWidget.EventData Data)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = Data;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30228], params.ptr, cast(void*)0);
	}
	final void AddEventListener(ScriptName Type, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* Listener)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = Type;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)&params[8] = Listener;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30231], params.ptr, cast(void*)0);
	}
	final ScriptString GetEventStringFromTypename(ScriptName Typename)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = Typename;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30236], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[8];
	}
	final void SetListener(GFxObject O, ScriptString Member, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* Listener)
	{
		ubyte params[28];
		params[] = 0;
		*cast(GFxObject*)params.ptr = O;
		*cast(ScriptString*)&params[4] = Member;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)&params[16] = Listener;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30237], params.ptr, cast(void*)0);
	}
	final void ASAddEventListener(ScriptString Type, GFxObject O, ScriptString func)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Type;
		*cast(GFxObject*)&params[12] = O;
		*cast(ScriptString*)&params[16] = func;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30238], params.ptr, cast(void*)0);
	}
	final void RemoveAllEventListeners(ScriptString Event)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Event;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30239], params.ptr, cast(void*)0);
	}
	final void ASRemoveAllEventListeners(ScriptString Event)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Event;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30241], params.ptr, cast(void*)0);
	}
}
