module UnrealScript.Engine.InterpGroup;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.AnimSet;
import UnrealScript.Engine.InterpTrack;

extern(C++) interface InterpGroup : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.InterpGroup")); }
	private static __gshared InterpGroup mDefaultProperties;
	@property final static InterpGroup DefaultProperties() { mixin(MGDPC("InterpGroup", "InterpGroup Engine.Default__InterpGroup")); }
	struct InterpEdSelKey
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.InterpGroup.InterpEdSelKey")); }
		@property final auto ref
		{
			float UnsnappedPosition() { mixin(MGPS("float", 12)); }
			int KeyIndex() { mixin(MGPS("int", 8)); }
			InterpTrack Track() { mixin(MGPS("InterpTrack", 4)); }
			InterpGroup Group() { mixin(MGPS("InterpGroup", 0)); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(InterpTrack) InterpTracks() { mixin(MGPC("ScriptArray!(InterpTrack)", 64)); }
			ScriptArray!(AnimSet) GroupAnimSets() { mixin(MGPC("ScriptArray!(AnimSet)", 88)); }
			UObject.Color GroupColor() { mixin(MGPC("UObject.Color", 84)); }
			ScriptName GroupName() { mixin(MGPC("ScriptName", 76)); }
			Pointer VfTable_FInterpEdInputInterface() { mixin(MGPC("Pointer", 60)); }
		}
		bool bIsSelected() { mixin(MGBPC(100, 0x10)); }
		bool bIsSelected(bool val) { mixin(MSBPC(100, 0x10)); }
		bool bIsParented() { mixin(MGBPC(100, 0x8)); }
		bool bIsParented(bool val) { mixin(MSBPC(100, 0x8)); }
		bool bIsFolder() { mixin(MGBPC(100, 0x4)); }
		bool bIsFolder(bool val) { mixin(MSBPC(100, 0x4)); }
		bool bVisible() { mixin(MGBPC(100, 0x2)); }
		bool bVisible(bool val) { mixin(MSBPC(100, 0x2)); }
		bool bCollapsed() { mixin(MGBPC(100, 0x1)); }
		bool bCollapsed(bool val) { mixin(MSBPC(100, 0x1)); }
	}
}
