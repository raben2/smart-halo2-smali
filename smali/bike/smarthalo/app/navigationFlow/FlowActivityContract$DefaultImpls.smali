.class public final Lbike/smarthalo/app/navigationFlow/FlowActivityContract$DefaultImpls;
.super Ljava/lang/Object;
.source "FlowActivityContract.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/navigationFlow/FlowActivityContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static synthetic toggleBackButtonVisibility$default(Lbike/smarthalo/app/navigationFlow/FlowActivityContract;ZLjava/lang/Integer;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 13
    check-cast p2, Ljava/lang/Integer;

    :cond_0
    invoke-interface {p0, p1, p2}, Lbike/smarthalo/app/navigationFlow/FlowActivityContract;->toggleBackButtonVisibility(ZLjava/lang/Integer;)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: toggleBackButtonVisibility"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
