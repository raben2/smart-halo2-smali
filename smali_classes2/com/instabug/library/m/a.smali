.class public interface abstract Lcom/instabug/library/m/a;
.super Ljava/lang/Object;
.source "SessionBatcher.java"


# virtual methods
.method public abstract a(Ljava/util/List;I)Ljava/util/List;
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/library/model/session/CoreSession;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/instabug/library/model/session/SessionsBatchDTO;",
            ">;"
        }
    .end annotation
.end method
