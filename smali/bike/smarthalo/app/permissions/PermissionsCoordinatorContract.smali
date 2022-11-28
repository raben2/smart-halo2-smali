.class public interface abstract Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;
.super Ljava/lang/Object;
.source "PermissionsCoordinatorContract.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0003H&J\u0008\u0010\u0005\u001a\u00020\u0003H&J\u0008\u0010\u0006\u001a\u00020\u0003H&J\u0008\u0010\u0007\u001a\u00020\u0003H&J\u0008\u0010\u0008\u001a\u00020\u0003H&J\u0008\u0010\t\u001a\u00020\nH&J\u0008\u0010\u000b\u001a\u00020\nH&J\u0008\u0010\u000c\u001a\u00020\nH&J\u0008\u0010\r\u001a\u00020\nH&J\u0008\u0010\u000e\u001a\u00020\nH&J>\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00112\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00152\u000e\u0008\u0002\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0015H&J\u0008\u0010\u0017\u001a\u00020\nH&J\u0008\u0010\u0018\u001a\u00020\nH&\u00a8\u0006\u0019"
    }
    d2 = {
        "Lbike/smarthalo/app/permissions/PermissionsCoordinatorContract;",
        "",
        "hasAcceptedBackgroundLocationPermissions",
        "",
        "hasAcceptedLocationPermission",
        "hasAcceptedNotificationPermission",
        "hasAcceptedPhonePermission",
        "hasAcceptedStoragePermission",
        "hasCompletedLocationIntro",
        "requestBackgroundLocationPermission",
        "",
        "requestLocationPermission",
        "requestNotificationPermission",
        "requestPhonePermission",
        "requestStoragePermission",
        "showConfirmation",
        "description",
        "",
        "affirmative",
        "negative",
        "onConfirm",
        "Lkotlin/Function0;",
        "onCancel",
        "showNext",
        "showSystemAppSettings",
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
.method public abstract hasAcceptedBackgroundLocationPermissions()Z
.end method

.method public abstract hasAcceptedLocationPermission()Z
.end method

.method public abstract hasAcceptedNotificationPermission()Z
.end method

.method public abstract hasAcceptedPhonePermission()Z
.end method

.method public abstract hasAcceptedStoragePermission()Z
.end method

.method public abstract hasCompletedLocationIntro()Z
.end method

.method public abstract requestBackgroundLocationPermission()V
.end method

.method public abstract requestLocationPermission()V
.end method

.method public abstract requestNotificationPermission()V
.end method

.method public abstract requestPhonePermission()V
.end method

.method public abstract requestStoragePermission()V
.end method

.method public abstract showConfirmation(IIILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .param p4    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showNext()V
.end method

.method public abstract showSystemAppSettings()V
.end method
