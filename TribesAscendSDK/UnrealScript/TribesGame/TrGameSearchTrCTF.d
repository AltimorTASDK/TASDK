module UnrealScript.TribesGame.TrGameSearchTrCTF;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrGameSearchCommon;

extern(C++) interface TrGameSearchTrCTF : TrGameSearchCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrGameSearchTrCTF")); }
	private static __gshared TrGameSearchTrCTF mDefaultProperties;
	@property final static TrGameSearchTrCTF DefaultProperties() { mixin(MGDPC("TrGameSearchTrCTF", "TrGameSearchTrCTF TribesGame.Default__TrGameSearchTrCTF")); }
}
