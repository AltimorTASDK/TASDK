module UnrealScript.Engine.LightmassPrimitiveSettingsObject;

import UnrealScript.Core.UObject;
import UnrealScript.Engine.EngineTypes;

extern(C++) interface LightmassPrimitiveSettingsObject : UObject
{
public extern(D):
	@property final auto ref EngineTypes.LightmassPrimitiveSettings LightmassSettings() { return *cast(EngineTypes.LightmassPrimitiveSettings*)(cast(size_t)cast(void*)this + 60); }
}
