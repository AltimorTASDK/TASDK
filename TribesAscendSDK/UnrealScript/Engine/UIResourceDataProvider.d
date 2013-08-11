module UnrealScript.Engine.UIResourceDataProvider;

import ScriptClasses;
import UnrealScript.Engine.UIPropertyDataProvider;
import UnrealScript.Core.UObject;

extern(C++) interface UIResourceDataProvider : UIPropertyDataProvider
{
	public @property final bool bSkipDuringEnumeration() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x2) != 0; }
	public @property final bool bSkipDuringEnumeration(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x2; } return val; }
	public @property final bool bDataBindingPropertiesOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x1) != 0; }
	public @property final bool bDataBindingPropertiesOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x1; } return val; }
	public @property final auto ref UObject.Pointer VfTable_IUIListElementCellProvider() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref UObject.Pointer VfTable_IUIListElementProvider() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 112); }
	final void InitializeProvider(bool bIsEditor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIsEditor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22607], params.ptr, cast(void*)0);
	}
}
