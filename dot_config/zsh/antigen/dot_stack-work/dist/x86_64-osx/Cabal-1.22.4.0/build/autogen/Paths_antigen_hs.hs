module Paths_antigen_hs (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/loezix/.config/zsh/antigen/.stack-work/install/x86_64-osx/8746965840893886b75ea459185bb1c4e429bed6decb4e7556b4412d68ee5805/7.10.2/bin"
libdir     = "/Users/loezix/.config/zsh/antigen/.stack-work/install/x86_64-osx/8746965840893886b75ea459185bb1c4e429bed6decb4e7556b4412d68ee5805/7.10.2/lib/x86_64-osx-ghc-7.10.2/antigen-hs-0.1.0.0-FKne2pE40rQDS0REMcNHjS"
datadir    = "/Users/loezix/.config/zsh/antigen/.stack-work/install/x86_64-osx/8746965840893886b75ea459185bb1c4e429bed6decb4e7556b4412d68ee5805/7.10.2/share/x86_64-osx-ghc-7.10.2/antigen-hs-0.1.0.0"
libexecdir = "/Users/loezix/.config/zsh/antigen/.stack-work/install/x86_64-osx/8746965840893886b75ea459185bb1c4e429bed6decb4e7556b4412d68ee5805/7.10.2/libexec"
sysconfdir = "/Users/loezix/.config/zsh/antigen/.stack-work/install/x86_64-osx/8746965840893886b75ea459185bb1c4e429bed6decb4e7556b4412d68ee5805/7.10.2/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "antigen_hs_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "antigen_hs_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "antigen_hs_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "antigen_hs_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "antigen_hs_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
