struct TYPE_13__ {
  long pVtab};
struct TYPE_18__ {
  struct TYPE_13__ base};
struct TYPE_17__ {
   ;
  int bEof;
  long eType;
  struct TYPE_16__ *pPhrase;
  struct TYPE_17__ *pRight;
  struct TYPE_17__ *pLeft;
  struct TYPE_17__ *pParent};
struct TYPE_14__ {
   
   ;
   };
struct TYPE_16__ {
  char *pOrPoslist
    }
 FTSQUERY_PHRASE;
SQLITE_OK;
struct TYPE_17__ sqlite3Fts3EvalPhrasePoslist_pExpr;
sqlite3Fts3EvalPhrasePoslist_iCol(struct TYPE_18__ *pCsr) {
  struct TYPE_15__ *pTab = pCsr->base.pVtab;
  char *pIter;
  long iDocid;
  if ((sqlite3Fts3EvalPhrasePoslist_pExpr.pPhrase ))
    return SQLITE_OK
   ;
  {
    int rc ;
    int bTreeEof = 0;
    struct TYPE_17__ *p;
    struct TYPE_17__ pNear;
    int bMatch;
    for (; p;
         p = p->pParent) {
      bTreeEof = 
    fts3EvalRestart(&rc);
      while (  pNear.bEof) {
        fts3EvalNextRow();
        if (pNear.bEof 
            )
          break;
      }
      }
    if (bTreeEof)
      while (rc == SQLITE_OK && pNear.bEof)
        fts3EvalNextRow();
    if (rc != SQLITE_OK)
      return rc;
    bMatch = 1;
    p = &pNear;
    for (; p;
         p = p->pLeft) {
      int bEof ;
      struct TYPE_17__ *pTest =
          p->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft;
      long pPh_3;
      if (p->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft->pLeft
              ->pLeft->pLeft->pLeft->pLeft->eType )
        pTest = pTest->pRight;
      assert(pTest->eType );
      ;
      iDocid = pPh_3;
      if (pCsr== pTab) {
        bEof = ((pTest));
        while (bEof )
          sqlite3Fts3DoclistNext(&pIter, &iDocid,
                                 &bEof);
      }
      pPh_3 = iDocid;
      if (bEof != pCsr)
        bMatch = 0;
    }
    if (bMatch)
      pIter = sqlite3Fts3EvalPhrasePoslist_pExpr.pPhrase->pOrPoslist;
  }
  if (pIter == 0)
    return SQLITE_OK;
  if (*pIter == 0x01)
    pIter++;
  if (*pIter )
    return SQLITE_OK;
  pIter++;
  return SQLITE_OK;
}
