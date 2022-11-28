.class public final Lcom/instabug/apm/f/d/e;
.super Ljava/lang/Object;
.source "SessionObserverHandler.java"


# direct methods
.method public static a(Lcom/instabug/apm/f/d/a;)V
    .locals 1
    .param p0    # Lcom/instabug/apm/f/d/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/instabug/apm/e/a;->F()Lcom/instabug/apm/f/d/f;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/instabug/apm/f/d/f;->a(Lcom/instabug/apm/f/d/a;)V

    return-void
.end method

.method static a(Lcom/instabug/library/model/common/Session;Lcom/instabug/library/model/common/Session;)V
    .locals 2
    .param p0    # Lcom/instabug/library/model/common/Session;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/instabug/library/model/common/Session;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-static {}, Lcom/instabug/apm/e/a;->F()Lcom/instabug/apm/f/d/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/instabug/apm/f/d/f;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/apm/f/d/a;

    .line 3
    invoke-interface {v1, p0, p1}, Lcom/instabug/apm/f/d/a;->a(Lcom/instabug/library/model/common/Session;Lcom/instabug/library/model/common/Session;)V

    goto :goto_0

    :cond_0
    return-void
.end method
