#ifndef DIFF
#define DIFF

#include "grid.h"
#include "fields.h"
#include "mpiinterface.h"
#include "diff_g2.h"
#include "diff_g42.h"
#include "diff_g4.h"

class cdiff
{
  public:
    cdiff(cgrid *, cfields *, cmpi *);
    ~cdiff();

    int readinifile(cinput *);
    int setvalues();
    int exec();

    double getdn(double);

  private:
    cgrid   *grid;
    cfields *fields;
    cmpi    *mpi;

    int idiff;
    double dnmul;

    cdiff_g2  *diff_g2;
    cdiff_g42 *diff_g42;
    cdiff_g4  *diff_g4;
};
#endif
