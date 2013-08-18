module UnrealScript.Engine.AnimNodeBlendByProperty;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeBlendList;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.UObject;

extern(C++) interface AnimNodeBlendByProperty : AnimNodeBlendList
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.AnimNodeBlendByProperty")); }
	private static __gshared AnimNodeBlendByProperty mDefaultProperties;
	@property final static AnimNodeBlendByProperty DefaultProperties() { mixin(MGDPC("AnimNodeBlendByProperty", "AnimNodeBlendByProperty Engine.Default__AnimNodeBlendByProperty")); }
	@property final
	{
		auto ref
		{
			float BlendToChild2Time() { mixin(MGPC("float", 328)); }
			float BlendToChild1Time() { mixin(MGPC("float", 324)); }
			float FloatPropMax() { mixin(MGPC("float", 320)); }
			float FloatPropMin() { mixin(MGPC("float", 316)); }
			float BlendTime() { mixin(MGPC("float", 312)); }
			Actor CachedOwner() { mixin(MGPC("Actor", 308)); }
			Pointer CachedByteProperty() { mixin(MGPC("Pointer", 304)); }
			Pointer CachedBoolProperty() { mixin(MGPC("Pointer", 300)); }
			Pointer CachedFloatProperty() { mixin(MGPC("Pointer", 296)); }
			ScriptName CachedPropertyName() { mixin(MGPC("ScriptName", 288)); }
			ScriptName PropertyName() { mixin(MGPC("ScriptName", 276)); }
		}
		bool bSynchronizeNodesInEditor() { mixin(MGBPC(284, 0x8)); }
		bool bSynchronizeNodesInEditor(bool val) { mixin(MSBPC(284, 0x8)); }
		bool bUseSpecificBlendTimes() { mixin(MGBPC(284, 0x4)); }
		bool bUseSpecificBlendTimes(bool val) { mixin(MSBPC(284, 0x4)); }
		bool bForceUpdate() { mixin(MGBPC(284, 0x2)); }
		bool bForceUpdate(bool val) { mixin(MSBPC(284, 0x2)); }
		bool bUseOwnersBase() { mixin(MGBPC(284, 0x1)); }
		bool bUseOwnersBase(bool val) { mixin(MSBPC(284, 0x1)); }
	}
}
