.class public interface abstract Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;
.super Ljava/lang/Object;
.source "ViewProgressListContract.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0003H&J\'\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\u0007H&\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0007H&J\u0008\u0010\r\u001a\u00020\u0003H&J\u001f\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\t\u001a\u0004\u0018\u00010\u0007H&\u00a2\u0006\u0002\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;",
        "",
        "decrement",
        "",
        "increment",
        "initialize",
        "size",
        "",
        "selectedIndex",
        "animation",
        "(IILjava/lang/Integer;)V",
        "selectItem",
        "index",
        "selectLast",
        "toggleVisibility",
        "isVisible",
        "",
        "(ZLjava/lang/Integer;)V",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# virtual methods
.method public abstract decrement()V
.end method

.method public abstract increment()V
.end method

.method public abstract initialize(IILjava/lang/Integer;)V
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract selectItem(I)V
.end method

.method public abstract selectLast()V
.end method

.method public abstract toggleVisibility(ZLjava/lang/Integer;)V
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
