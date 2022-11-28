.class final Lbike/smarthalo/app/permissions/storage/StoragePermissionPresenter$onStart$1;
.super Ljava/lang/Object;
.source "StoragePermissionPresenter.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/permissions/storage/StoragePermissionPresenter;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lbike/smarthalo/app/permissions/PermissionResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "permissionResult",
        "Lbike/smarthalo/app/permissions/PermissionResult;",
        "kotlin.jvm.PlatformType",
        "accept"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/permissions/storage/StoragePermissionPresenter;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/permissions/storage/StoragePermissionPresenter;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/permissions/storage/StoragePermissionPresenter$onStart$1;->this$0:Lbike/smarthalo/app/permissions/storage/StoragePermissionPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lbike/smarthalo/app/permissions/PermissionResult;)V
    .locals 0

    .line 33
    iget-object p1, p0, Lbike/smarthalo/app/permissions/storage/StoragePermissionPresenter$onStart$1;->this$0:Lbike/smarthalo/app/permissions/storage/StoragePermissionPresenter;

    invoke-static {p1}, Lbike/smarthalo/app/permissions/storage/StoragePermissionPresenter;->access$getPermissionsCoordinatorContract$p(Lbike/smarthalo/app/permissions/storage/StoragePermissionPresenter;)Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;

    move-result-object p1

    invoke-interface {p1}, Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;->showNext()V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lbike/smarthalo/app/permissions/PermissionResult;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/permissions/storage/StoragePermissionPresenter$onStart$1;->accept(Lbike/smarthalo/app/permissions/PermissionResult;)V

    return-void
.end method
