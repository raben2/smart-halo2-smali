.class public final Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionView;
.super Lbike/smarthalo/app/navigationFlow/NavigationFlowView;
.source "NotificationPermissionView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionView;",
        "Lbike/smarthalo/app/navigationFlow/NavigationFlowView;",
        "notificationPresenter",
        "Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionPresenterContract;",
        "innerView",
        "Landroid/view/View;",
        "(Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionPresenterContract;Landroid/view/View;)V",
        "getNotificationPresenter",
        "()Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionPresenterContract;",
        "setNotificationPresenter",
        "(Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionPresenterContract;)V",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionView$Companion;

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private notificationPresenter:Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionPresenterContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionView;->Companion:Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionView$Companion;

    .line 19
    const-class v0, Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionView;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    sput-object v0, Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionPresenterContract;Landroid/view/View;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionPresenterContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "notificationPresenter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "innerView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionView;->TAG:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lbike/smarthalo/app/navigationFlow/NavigationFlowView;-><init>(Landroid/view/View;Ljava/lang/String;)V

    iput-object p1, p0, Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionView;->notificationPresenter:Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionPresenterContract;

    .line 23
    sget p1, Lbike/smarthalo/app/R$id;->permissionButton:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionView$1;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionView$1;-><init>(Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionView;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    sget p1, Lbike/smarthalo/app/R$id;->skipButton:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    new-instance p2, Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionView$2;

    invoke-direct {p2, p0}, Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionView$2;-><init>(Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionView;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionView;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final getNotificationPresenter()Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionPresenterContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 15
    iget-object v0, p0, Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionView;->notificationPresenter:Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionPresenterContract;

    return-object v0
.end method

.method public final setNotificationPresenter(Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionPresenterContract;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionPresenterContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionView;->notificationPresenter:Lbike/smarthalo/app/permissions/locationPermission/NotificationPermissionPresenterContract;

    return-void
.end method
