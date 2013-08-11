module UnrealScript.UDKBase.UDKUIDataProvider_SimpleElementProvider;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIDataProvider;

extern(C++) interface UDKUIDataProvider_SimpleElementProvider : UIDataProvider
{
public extern(D):
	@property final auto ref UObject.Pointer VfTable_IUIListElementCellProvider() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 88); }
	final int GetElementCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35585], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
