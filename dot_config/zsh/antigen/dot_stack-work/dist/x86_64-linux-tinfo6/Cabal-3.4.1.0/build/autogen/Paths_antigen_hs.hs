{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -Wno-missing-safe-haskell-mode #-}
module Paths_antigen_hs (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/loezix/.config/zsh/antigen/.stack-work/install/x86_64-linux-tinfo6/29d19703229c960fa8b32df45d30ffe915ed2f475942809955193df3ee4d2894/9.0.2/bin"
libdir     = "/home/loezix/.config/zsh/antigen/.stack-work/install/x86_64-linux-tinfo6/29d19703229c960fa8b32df45d30ffe915ed2f475942809955193df3ee4d2894/9.0.2/lib/x86_64-linux-ghc-9.0.2/antigen-hs-0.1.0.0-C2Pb9gAs8Cq6h5qaUPgnjc"
dynlibdir  = "/home/loezix/.config/zsh/antigen/.stack-work/install/x86_64-linux-tinfo6/29d19703229c960fa8b32df45d30ffe915ed2f475942809955193df3ee4d2894/9.0.2/lib/x86_64-linux-ghc-9.0.2"
datadir    = "/home/loezix/.config/zsh/antigen/.stack-work/install/x86_64-linux-tinfo6/29d19703229c960fa8b32df45d30ffe915ed2f475942809955193df3ee4d2894/9.0.2/share/x86_64-linux-ghc-9.0.2/antigen-hs-0.1.0.0"
libexecdir = "/home/loezix/.config/zsh/antigen/.stack-work/install/x86_64-linux-tinfo6/29d19703229c960fa8b32df45d30ffe915ed2f475942809955193df3ee4d2894/9.0.2/libexec/x86_64-linux-ghc-9.0.2/antigen-hs-0.1.0.0"
sysconfdir = "/home/loezix/.config/zsh/antigen/.stack-work/install/x86_64-linux-tinfo6/29d19703229c960fa8b32df45d30ffe915ed2f475942809955193df3ee4d2894/9.0.2/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "antigen_hs_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "antigen_hs_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "antigen_hs_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "antigen_hs_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "antigen_hs_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "antigen_hs_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
