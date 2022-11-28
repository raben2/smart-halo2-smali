.class public Lcom/instabug/chat/ui/d;
.super Lcom/instabug/library/core/ui/BasePresenter;
.source "ChatPresenter.java"

# interfaces
.implements Lcom/instabug/chat/ui/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/ui/BasePresenter<",
        "Lcom/instabug/chat/ui/c;",
        ">;",
        "Lcom/instabug/chat/ui/b;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/instabug/chat/ui/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/core/ui/BasePresenter;-><init>(Lcom/instabug/library/core/ui/BaseContract$View;)V

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/instabug/chat/e/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/chat/ui/c;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-direct {p0}, Lcom/instabug/chat/ui/d;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Lcom/instabug/chat/ui/c;->i()V

    :cond_1
    if-eqz v0, :cond_2

    .line 12
    invoke-interface {v0, p1, p2}, Lcom/instabug/chat/ui/c;->a(Ljava/lang/String;Lcom/instabug/chat/e/a;)V

    :cond_2
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/chat/ui/c;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-direct {p0}, Lcom/instabug/chat/ui/d;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Lcom/instabug/chat/ui/c;->i()V

    :cond_1
    if-eqz v0, :cond_2

    .line 11
    invoke-interface {v0, p1}, Lcom/instabug/chat/ui/c;->c(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private j()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/instabug/chat/ui/d;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/chat/ui/c;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/instabug/chat/ui/c;->i()V

    :cond_0
    return-void
.end method

.method private k()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/chat/cache/ChatsCacheManager;->getValidChats()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/instabug/chat/ui/d;->j()V

    goto :goto_0

    :cond_0
    const/16 v0, 0xa1

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/chat/ui/c;

    if-eqz p1, :cond_2

    .line 5
    invoke-interface {p1}, Lcom/instabug/chat/ui/c;->q()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {p1}, Lcom/instabug/chat/ui/c;->q()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/instabug/chat/ui/d;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xa4

    if-ne p1, v0, :cond_2

    .line 10
    iget-object p1, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/chat/ui/c;

    if-eqz p1, :cond_2

    .line 12
    invoke-interface {p1}, Lcom/instabug/chat/ui/c;->q()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/instabug/chat/ui/c;->m()Lcom/instabug/chat/e/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13
    invoke-interface {p1}, Lcom/instabug/chat/ui/c;->q()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-interface {p1}, Lcom/instabug/chat/ui/c;->m()Lcom/instabug/chat/e/a;

    move-result-object p1

    .line 15
    invoke-direct {p0, v0, p1}, Lcom/instabug/chat/ui/d;->b(Ljava/lang/String;Lcom/instabug/chat/e/a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/instabug/chat/ui/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/instabug/chat/settings/a;->e()Lcom/instabug/library/OnSdkDismissCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lcom/instabug/library/OnSdkDismissCallback$DismissType;->CANCEL:Lcom/instabug/library/OnSdkDismissCallback$DismissType;

    sget-object v2, Lcom/instabug/library/OnSdkDismissCallback$ReportType;->OTHER:Lcom/instabug/library/OnSdkDismissCallback$ReportType;

    invoke-interface {v0, v1, v2}, Lcom/instabug/library/OnSdkDismissCallback;->call(Lcom/instabug/library/OnSdkDismissCallback$DismissType;Lcom/instabug/library/OnSdkDismissCallback$ReportType;)V

    :cond_0
    return-void
.end method
