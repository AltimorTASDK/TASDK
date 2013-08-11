module UnrealScript.TribesGame.TrCamera_SpectatorBookmark;

import ScriptClasses;
import UnrealScript.Engine.CameraActor;

extern(C++) interface TrCamera_SpectatorBookmark : CameraActor
{
	enum ESpectatorBookmark : ubyte
	{
		Bookmark_BEBase = 0,
		Bookmark_DSBase = 1,
		Bookmark_CTFBEGeneratorRoom = 2,
		Bookmark_CTFDSGeneratorRoom = 3,
		Bookmark_CTFBEMidfield = 4,
		Bookmark_CTFDSMidfield = 5,
		Bookmark_CTFMapOverhead = 6,
		Bookmark_CTFBEVehiclePad = 7,
		Bookmark_CTFDSVehiclePad = 8,
		Bookmark_CTFBESpawn = 9,
		Bookmark_CTFDSSpawn = 10,
		Bookmark_CTFBESensor = 11,
		Bookmark_CTFDSSensor = 12,
		Bookmark_CTFBETurretA = 13,
		Bookmark_CTFBETurretB = 14,
		Bookmark_CTFBETurretC = 15,
		Bookmark_CTFDSTurretA = 16,
		Bookmark_CTFDSTurretB = 17,
		Bookmark_CTFDSTurretC = 18,
		Bookmark_CTFBEBackRoute = 19,
		Bookmark_CTFDSBackRoute = 20,
		Bookmark_TDMEast = 21,
		Bookmark_TDMWest = 22,
		Bookmark_TDMNorth = 23,
		Bookmark_TDMSouth = 24,
		Bookmark_TDMCenter = 25,
		Bookmark_TDMMapOverhead = 26,
		Bookmark_DdDryHigh = 27,
		Bookmark_DdDryLow = 28,
		Bookmark_DdBEWide = 29,
		Bookmark_DdDSWide = 30,
		Bookmark_DdDockHigh = 31,
		Bookmark_DdDockLow = 32,
		Bookmark_DdBEBunker = 33,
		Bookmark_DdDSBunker = 34,
		Bookmark_DdBEBackEntrance = 35,
		Bookmark_DdDSBackEntrance = 36,
		Bookmark_DNFish = 37,
		Bookmark_XFBSW = 38,
		Bookmark_XFRSW = 39,
		Bookmark_XFBERed = 40,
		Bookmark_XFDSRed = 41,
		Bookmark_XFBEBlue = 42,
		Bookmark_XFDSBlue = 43,
		Bookmark_XFBEBackstop = 44,
		Bookmark_XFDSBackstop = 45,
		Bookmark_XFBECRoom = 46,
		Bookmark_XFDSCRoom = 47,
		Bookmark_NKTower = 48,
		Bookmark_NKTunnel = 49,
		Bookmark_NKWhalebones = 50,
		Bookmark_NKMountainView = 51,
		Bookmark_NKMountainSide = 52,
		Bookmark_BTBase = 53,
		Bookmark_BTBaseInterior = 54,
		Bookmark_BTTunnelEast = 55,
		Bookmark_BTTunnelWest = 56,
		Bookmark_GenericCamera = 57,
		Bookmark_MAX = 58,
	}
	public @property final auto ref TrCamera_SpectatorBookmark.ESpectatorBookmark m_BookmarkDescription() { return *cast(TrCamera_SpectatorBookmark.ESpectatorBookmark*)(cast(size_t)cast(void*)this + 1416); }
	public @property final auto ref ScriptString BEBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 720); }
	public @property final auto ref ScriptString GenericCamera() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1404); }
	public @property final auto ref ScriptString BTTunnelWest() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1392); }
	public @property final auto ref ScriptString BTTunnelEast() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1380); }
	public @property final auto ref ScriptString BTBaseInterior() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1368); }
	public @property final auto ref ScriptString BTBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1356); }
	public @property final auto ref ScriptString NKMountainSide() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1344); }
	public @property final auto ref ScriptString NKMountainView() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1332); }
	public @property final auto ref ScriptString NKWhalebones() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1320); }
	public @property final auto ref ScriptString NKTunnel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1308); }
	public @property final auto ref ScriptString NKTower() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1296); }
	public @property final auto ref ScriptString XFDSCRoom() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1284); }
	public @property final auto ref ScriptString XFBECRoom() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1272); }
	public @property final auto ref ScriptString XFDSBackstop() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1260); }
	public @property final auto ref ScriptString XFBEBackstop() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1248); }
	public @property final auto ref ScriptString XFDSBlue() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1236); }
	public @property final auto ref ScriptString XFBEBlue() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1224); }
	public @property final auto ref ScriptString XFDSRed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1212); }
	public @property final auto ref ScriptString XFBERed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1200); }
	public @property final auto ref ScriptString XFRSW() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1188); }
	public @property final auto ref ScriptString XFBSW() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1176); }
	public @property final auto ref ScriptString DNFish() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1164); }
	public @property final auto ref ScriptString DdDSBackEntrance() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1152); }
	public @property final auto ref ScriptString DdBEBackEntrance() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1140); }
	public @property final auto ref ScriptString DdDSBunker() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1128); }
	public @property final auto ref ScriptString DdBEBunker() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1116); }
	public @property final auto ref ScriptString DdDockLow() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1104); }
	public @property final auto ref ScriptString DdDockHigh() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1092); }
	public @property final auto ref ScriptString DdDSWide() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1080); }
	public @property final auto ref ScriptString DdBEWide() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1068); }
	public @property final auto ref ScriptString DdDryLow() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1056); }
	public @property final auto ref ScriptString DdDryHigh() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1044); }
	public @property final auto ref ScriptString TDMMapOverhead() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1032); }
	public @property final auto ref ScriptString TDMCenter() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1020); }
	public @property final auto ref ScriptString TDMSouth() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1008); }
	public @property final auto ref ScriptString TDMNorth() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 996); }
	public @property final auto ref ScriptString TDMWest() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 984); }
	public @property final auto ref ScriptString TDMEast() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 972); }
	public @property final auto ref ScriptString CTFDSBackRoute() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 960); }
	public @property final auto ref ScriptString CTFBEBackRoute() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 948); }
	public @property final auto ref ScriptString CTFDSTurretC() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 936); }
	public @property final auto ref ScriptString CTFDSTurretB() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 924); }
	public @property final auto ref ScriptString CTFDSTurretA() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 912); }
	public @property final auto ref ScriptString CTFBETurretC() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 900); }
	public @property final auto ref ScriptString CTFBETurretB() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 888); }
	public @property final auto ref ScriptString CTFBETurretA() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 876); }
	public @property final auto ref ScriptString CTFDSSensor() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 864); }
	public @property final auto ref ScriptString CTFBESensor() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 852); }
	public @property final auto ref ScriptString CTFDSSpawn() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 840); }
	public @property final auto ref ScriptString CTFBESpawn() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 828); }
	public @property final auto ref ScriptString CTFDSVehiclePad() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 816); }
	public @property final auto ref ScriptString CTFBEVehiclePad() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 804); }
	public @property final auto ref ScriptString CTFDSMidfield() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 792); }
	public @property final auto ref ScriptString CTFBEMidfield() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 780); }
	public @property final auto ref ScriptString CTFMapOverhead() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 768); }
	public @property final auto ref ScriptString CTFDSGeneratorRoom() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 756); }
	public @property final auto ref ScriptString CTFBEGeneratorRoom() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 744); }
	public @property final auto ref ScriptString DSBase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 732); }
	final ScriptString GetDescription()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74224], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final ScriptString GetSpectatorName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74226], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
