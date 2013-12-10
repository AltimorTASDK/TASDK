module UnrealScript.Engine.AnimNodeSequenceBlendBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.AnimSequence;

extern(C++) interface AnimNodeSequenceBlendBase : AnimNodeSequence
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.AnimNodeSequenceBlendBase")); }
	private static __gshared AnimNodeSequenceBlendBase mDefaultProperties;
	@property final static AnimNodeSequenceBlendBase DefaultProperties() { mixin(MGDPC("AnimNodeSequenceBlendBase", "AnimNodeSequenceBlendBase Engine.Default__AnimNodeSequenceBlendBase")); }
	struct AnimBlendInfo
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.AnimNodeSequenceBlendBase.AnimBlendInfo")); }
		@property final auto ref
		{
			float Weight() { mixin(MGPS("float", 24)); }
			AnimNodeSequenceBlendBase.AnimInfo AnimInfoVar() { mixin(MGPS("AnimNodeSequenceBlendBase.AnimInfo", 8)); }
			ScriptName AnimName() { mixin(MGPS("ScriptName", 0)); }
		}
	}
	struct AnimInfo
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.AnimNodeSequenceBlendBase.AnimInfo")); }
		@property final auto ref
		{
			int AnimLinkupIndex() { mixin(MGPS("int", 12)); }
			AnimSequence AnimSeq() { mixin(MGPS("AnimSequence", 8)); }
			ScriptName AnimSeqName() { mixin(MGPS("ScriptName", 0)); }
		}
	}
	@property final auto ref ScriptArray!(AnimNodeSequenceBlendBase.AnimBlendInfo) Anims() { mixin(MGPC("ScriptArray!(AnimNodeSequenceBlendBase.AnimBlendInfo)", 320)); }
}
