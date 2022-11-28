.class public final Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract$DefaultImpls;
.super Ljava/lang/Object;
.source "PermissionsCoordinatorContract.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;
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
.method public static synthetic showConfirmation$default(Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;IIILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 6

    if-nez p7, :cond_1

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    .line 21
    sget-object p5, Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract$showConfirmation$1;->INSTANCE:Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract$showConfirmation$1;

    check-cast p5, Lkotlin/jvm/functions/Function0;

    move-object v5, p5

    goto :goto_0

    :cond_0
    move-object v5, p5

    :goto_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;->showConfirmation(IIILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: showConfirmation"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
