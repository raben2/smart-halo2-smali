.class public interface abstract Lbike/smarthalo/app/designRefresh/BottomNavigationContract;
.super Ljava/lang/Object;
.source "BottomNavigationContract.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005H&\u00a8\u0006\u0006"
    }
    d2 = {
        "Lbike/smarthalo/app/designRefresh/BottomNavigationContract;",
        "",
        "getSelectedItem",
        "Lbike/smarthalo/app/designRefresh/CardType;",
        "observeSelectedItem",
        "Lio/reactivex/Flowable;",
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
.method public abstract getSelectedItem()Lbike/smarthalo/app/designRefresh/CardType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract observeSelectedItem()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/designRefresh/CardType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
