.class public final Lbike/smarthalo/app/permissions/PermissionResult;
.super Ljava/lang/Object;
.source "PermissionResult.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lbike/smarthalo/app/permissions/PermissionResult;",
        "",
        "permissionRequestCode",
        "",
        "permissionSuccess",
        "",
        "(IZ)V",
        "getPermissionRequestCode",
        "()I",
        "getPermissionSuccess",
        "()Z",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final permissionRequestCode:I

.field private final permissionSuccess:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v0, v1, v2}, Lbike/smarthalo/app/permissions/PermissionResult;-><init>(IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lbike/smarthalo/app/permissions/PermissionResult;->permissionRequestCode:I

    iput-boolean p2, p0, Lbike/smarthalo/app/permissions/PermissionResult;->permissionSuccess:Z

    return-void
.end method

.method public synthetic constructor <init>(IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 7
    :cond_1
    invoke-direct {p0, p1, p2}, Lbike/smarthalo/app/permissions/PermissionResult;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public final getPermissionRequestCode()I
    .locals 1

    .line 7
    iget v0, p0, Lbike/smarthalo/app/permissions/PermissionResult;->permissionRequestCode:I

    return v0
.end method

.method public final getPermissionSuccess()Z
    .locals 1

    .line 7
    iget-boolean v0, p0, Lbike/smarthalo/app/permissions/PermissionResult;->permissionSuccess:Z

    return v0
.end method
