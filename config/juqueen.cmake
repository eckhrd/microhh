# JUQUEEN
if(USEMPI)
  set(ENV{CC} mpixlc)
  set(ENV{CXX} mpixlcxx)
else()
  set(ENV{CC} bgxlc)
  set(ENV{CXX} bgxlC)
endif()

set(USER_CXX_FLAGS "")
set(USER_CXX_FLAGS_RELEASE "-DNDEBUG -O3 -qarch=qp -qtune=qp -qhot")
set(USER_CXX_FLAGS_DEBUG "-O0 -g")

set(FFTW_INCLUDE_DIR   "/bgsys/local/fftw3/3.3.2/fftw/include")
set(FFTW_LIB           "/bgsys/local/fftw3/3.3.2/fftw/lib/libfftw3.a")
set(NETCDF_INCLUDE_DIR "/bgsys/local/netcdf/include")
set(NETCDF_LIB_C       "/bgsys/local/netcdf/lib/libnetcdf.a")
set(NETCDF_LIB_CPP     "/bgsys/local/netcdf/lib/libnetcdf_c++.a")
set(HDF5_LIB_1         "/bgsys/local/hdf5/lib/libhdf5.a")
set(HDF5_LIB_2         "/bgsys/local/hdf5/lib/libhdf5_hl.a")
set(SZIP_LIB           "")
set(LIBS ${FFTW_LIB} ${NETCDF_LIB_CPP} ${NETCDF_LIB_C} ${HDF5_LIB_2} ${HDF5_LIB_1} ${SZIP_LIB} m)

add_definitions(-DRESTRICTKEYWORD=__restrict__)
