.class public interface abstract Lcom/instabug/library/internal/storage/operation/DiskOperation;
.super Ljava/lang/Object;
.source "DiskOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract execute(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract executeAsync(Ljava/lang/Object;Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;)V
    .param p2    # Lcom/instabug/library/internal/storage/operation/DiskOperationCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Lcom/instabug/library/internal/storage/operation/DiskOperationCallback<",
            "TT;>;)V"
        }
    .end annotation
.end method
