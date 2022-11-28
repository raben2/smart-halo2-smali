.class public Lcom/instabug/survey/d/e/a/b/d;
.super Lcom/instabug/library/core/ui/BasePresenter;
.source "UpdateMessagePresenter.java"

# interfaces
.implements Lcom/instabug/survey/d/e/a/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/ui/BasePresenter<",
        "Lcom/instabug/survey/d/e/a/b/b;",
        ">;",
        "Lcom/instabug/survey/d/e/a/b/a;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/instabug/survey/d/e/a/b/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/core/ui/BasePresenter;-><init>(Lcom/instabug/library/core/ui/BaseContract$View;)V

    return-void
.end method

.method private a(Lcom/instabug/survey/d/c/a;)V
    .locals 3

    .line 27
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 28
    :cond_0
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/a;->c()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/d/c/c;

    .line 29
    invoke-virtual {v0}, Lcom/instabug/survey/d/c/c;->f()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 30
    invoke-virtual {v0}, Lcom/instabug/survey/d/c/c;->f()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instabug/survey/d/c/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/survey/d/c/c;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/c;->g()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/c;->c()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/c;->f()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/instabug/survey/d/c/c;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/c;->f()Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/survey/d/e/a/b/b;

    if-eqz v2, :cond_0

    .line 8
    invoke-interface {v2, v0, v1, p1}, Lcom/instabug/survey/d/e/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/instabug/survey/d/c/c;Lcom/instabug/survey/d/c/a;)V
    .locals 2

    .line 9
    invoke-virtual {p0, p1}, Lcom/instabug/survey/d/e/a/b/d;->c(Lcom/instabug/survey/d/c/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/d/e/a/b/b;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/c;->a()Lcom/instabug/survey/d/c/b;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/c;->a()Lcom/instabug/survey/d/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/survey/d/c/b;->a()Lcom/instabug/survey/d/c/d;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/c;->a()Lcom/instabug/survey/d/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/survey/d/c/b;->a()Lcom/instabug/survey/d/c/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/survey/d/c/d;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 15
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/c;->a()Lcom/instabug/survey/d/c/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/survey/d/c/b;->a()Lcom/instabug/survey/d/c/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/survey/d/c/d;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/instabug/survey/d/e/a/b/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    .line 20
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/survey/d/e/a/b/b;

    if-eqz p1, :cond_1

    .line 22
    invoke-interface {p1}, Lcom/instabug/survey/d/e/a/b/b;->d()V

    .line 26
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/instabug/survey/d/e/a/b/d;->a(Lcom/instabug/survey/d/c/a;)V

    return-void
.end method

.method public b(Lcom/instabug/survey/d/c/c;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/c;->g()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/c;->c()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/c;->f()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/instabug/survey/d/c/c;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/c;->f()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/c;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 6
    iget-object v3, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/instabug/survey/d/e/a/b/b;

    if-eqz v3, :cond_0

    .line 9
    invoke-interface {v3, v0, v1, v2, p1}, Lcom/instabug/survey/d/e/a/b/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method c(Lcom/instabug/survey/d/c/c;)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/c;->a()Lcom/instabug/survey/d/c/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/c;->a()Lcom/instabug/survey/d/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/d/c/b;->a()Lcom/instabug/survey/d/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/c;->a()Lcom/instabug/survey/d/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/d/c/b;->a()Lcom/instabug/survey/d/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/d/c/d;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/c;->a()Lcom/instabug/survey/d/c/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/survey/d/c/b;->a()Lcom/instabug/survey/d/c/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/survey/d/c/d;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d(Lcom/instabug/survey/d/c/c;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/c;->f()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/c;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lcom/instabug/survey/d/e/a/b/d;->a(Lcom/instabug/survey/d/c/c;)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Lcom/instabug/survey/d/e/a/b/d;->b(Lcom/instabug/survey/d/c/c;)V

    :cond_2
    :goto_1
    return-void
.end method
