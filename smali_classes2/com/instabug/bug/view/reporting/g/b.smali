.class Lcom/instabug/bug/view/reporting/g/b;
.super Lcom/instabug/bug/view/reporting/c;
.source "AskQuestionPresenter.java"


# direct methods
.method constructor <init>(Lcom/instabug/bug/view/reporting/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/bug/view/reporting/c;-><init>(Lcom/instabug/bug/view/reporting/e;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_RETURN_NOT_NULLABLE"
        }
    .end annotation

    const-string v0, ""

    .line 1
    iget-object v1, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/bug/view/reporting/e;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Lcom/instabug/bug/view/reporting/e;->g()Ljava/lang/String;

    move-result-object v0

    .line 7
    :cond_0
    sget-object v1, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->COMMENT_FIELD_HINT_FOR_QUESTION:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    invoke-static {v1, v0}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_RETURN_NOT_NULLABLE"
        }
    .end annotation

    const-string v0, ""

    .line 1
    iget-object v1, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/bug/view/reporting/e;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Lcom/instabug/bug/view/reporting/e;->q()Ljava/lang/String;

    move-result-object v0

    .line 7
    :cond_0
    sget-object v1, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->QUESTION_REPORT_HEADER:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    sget-object v2, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->REPORT_QUESTION:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    .line 8
    invoke-static {v2, v0}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v1, v0}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
