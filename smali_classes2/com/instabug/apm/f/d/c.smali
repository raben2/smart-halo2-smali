.class public interface abstract Lcom/instabug/apm/f/d/c;
.super Ljava/lang/Object;
.source "SessionHandler.java"


# virtual methods
.method public abstract a(Ljava/lang/String;)Lcom/instabug/apm/b/b/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract a()Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/apm/b/b/d;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(I)V
.end method

.method public abstract a(Lcom/instabug/library/model/common/Session;)V
    .param p1    # Lcom/instabug/library/model/common/Session;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract a(Ljava/util/List;I)V
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract b()V
.end method

.method public abstract b(I)V
.end method

.method public abstract c()Lcom/instabug/library/model/common/Session;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
