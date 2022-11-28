.class public final Lbike/smarthalo/app/permissions/storage/StoragePermissionPresenter;
.super Ljava/lang/Object;
.source "StoragePermissionPresenter.kt"

# interfaces
.implements Lbike/smarthalo/app/permissions/storage/StoragePermissionPresenterContract;
.implements Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0012H\u0016J\u0008\u0010\u0014\u001a\u00020\u0012H\u0016R\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0015"
    }
    d2 = {
        "Lbike/smarthalo/app/permissions/storage/StoragePermissionPresenter;",
        "Lbike/smarthalo/app/permissions/storage/StoragePermissionPresenterContract;",
        "Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;",
        "permissionsCoordinatorContract",
        "Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;",
        "permissionResultObservable",
        "Lio/reactivex/Flowable;",
        "Lbike/smarthalo/app/permissions/PermissionResult;",
        "(Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;Lio/reactivex/Flowable;)V",
        "getPermissionResultObservable",
        "()Lio/reactivex/Flowable;",
        "subscription",
        "Lio/reactivex/disposables/Disposable;",
        "getSubscription",
        "()Lio/reactivex/disposables/Disposable;",
        "setSubscription",
        "(Lio/reactivex/disposables/Disposable;)V",
        "onStart",
        "",
        "onStop",
        "requestPermission",
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
.field private final permissionResultObservable:Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/permissions/PermissionResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final permissionsCoordinatorContract:Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;

.field private subscription:Lio/reactivex/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;Lio/reactivex/Flowable;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/Flowable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/permissions/PermissionResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "permissionsCoordinatorContract"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionResultObservable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/permissions/storage/StoragePermissionPresenter;->permissionsCoordinatorContract:Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;

    iput-object p2, p0, Lbike/smarthalo/app/permissions/storage/StoragePermissionPresenter;->permissionResultObservable:Lio/reactivex/Flowable;

    return-void
.end method

.method public static final synthetic access$getPermissionsCoordinatorContract$p(Lbike/smarthalo/app/permissions/storage/StoragePermissionPresenter;)Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;
    .locals 0

    .line 14
    iget-object p0, p0, Lbike/smarthalo/app/permissions/storage/StoragePermissionPresenter;->permissionsCoordinatorContract:Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;

    return-object p0
.end method


# virtual methods
.method public final getPermissionResultObservable()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/permissions/PermissionResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 16
    iget-object v0, p0, Lbike/smarthalo/app/permissions/storage/StoragePermissionPresenter;->permissionResultObservable:Lio/reactivex/Flowable;

    return-object v0
.end method

.method public final getSubscription()Lio/reactivex/disposables/Disposable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 18
    iget-object v0, p0, Lbike/smarthalo/app/permissions/storage/StoragePermissionPresenter;->subscription:Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method public onStart()V
    .locals 2

    .line 29
    iget-object v0, p0, Lbike/smarthalo/app/permissions/storage/StoragePermissionPresenter;->permissionsCoordinatorContract:Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;

    invoke-interface {v0}, Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;->hasAcceptedStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lbike/smarthalo/app/permissions/storage/StoragePermissionPresenter;->permissionsCoordinatorContract:Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;

    invoke-interface {v0}, Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;->showNext()V

    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/permissions/storage/StoragePermissionPresenter;->permissionResultObservable:Lio/reactivex/Flowable;

    new-instance v1, Lbike/smarthalo/app/permissions/storage/StoragePermissionPresenter$onStart$1;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/permissions/storage/StoragePermissionPresenter$onStart$1;-><init>(Lbike/smarthalo/app/permissions/storage/StoragePermissionPresenter;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/permissions/storage/StoragePermissionPresenter;->subscription:Lio/reactivex/disposables/Disposable;

    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 39
    iget-object v0, p0, Lbike/smarthalo/app/permissions/storage/StoragePermissionPresenter;->subscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    :cond_0
    return-void
.end method

.method public requestPermission()V
    .locals 1

    .line 21
    iget-object v0, p0, Lbike/smarthalo/app/permissions/storage/StoragePermissionPresenter;->permissionsCoordinatorContract:Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;

    invoke-interface {v0}, Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;->hasAcceptedStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lbike/smarthalo/app/permissions/storage/StoragePermissionPresenter;->permissionsCoordinatorContract:Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;

    invoke-interface {v0}, Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;->showNext()V

    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/permissions/storage/StoragePermissionPresenter;->permissionsCoordinatorContract:Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;

    invoke-interface {v0}, Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;->requestStoragePermission()V

    :goto_0
    return-void
.end method

.method public final setSubscription(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .param p1    # Lio/reactivex/disposables/Disposable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 18
    iput-object p1, p0, Lbike/smarthalo/app/permissions/storage/StoragePermissionPresenter;->subscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method
