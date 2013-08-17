module UnrealScript.TribesGame.TrGameSearchTrCaH;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrGameSearchCommon;

extern(C++) interface TrGameSearchTrCaH : TrGameSearchCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrGameSearchTrCaH")()); }
	private static __gshared TrGameSearchTrCaH mDefaultProperties;
	@property final static TrGameSearchTrCaH DefaultProperties() { mixin(MGDPC!(TrGameSearchTrCaH, "TrGameSearchTrCaH TribesGame.Default__TrGameSearchTrCaH")()); }
}
