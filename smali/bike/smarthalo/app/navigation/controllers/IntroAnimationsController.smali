.class public final Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController;
.super Ljava/lang/Object;
.source "IntroAnimationsController.kt"

# interfaces
.implements Lbike/smarthalo/app/navigation/controllers/IntroAnimationContract;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIntroAnimationsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntroAnimationsController.kt\nbike/smarthalo/app/navigation/controllers/IntroAnimationsController\n*L\n1#1,52:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0014H\u0016J\u0010\u0010\u0016\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0006\u0010\u0017\u001a\u00020\u0014R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0019"
    }
    d2 = {
        "Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController;",
        "Lbike/smarthalo/app/navigation/controllers/IntroAnimationContract;",
        "centralServiceController",
        "Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;",
        "(Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;)V",
        "getCentralServiceController",
        "()Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;",
        "connectionStateSubscription",
        "Lio/reactivex/disposables/Disposable;",
        "getConnectionStateSubscription",
        "()Lio/reactivex/disposables/Disposable;",
        "setConnectionStateSubscription",
        "(Lio/reactivex/disposables/Disposable;)V",
        "destinationName",
        "",
        "getDestinationName",
        "()Ljava/lang/String;",
        "setDestinationName",
        "(Ljava/lang/String;)V",
        "onDispose",
        "",
        "onStart",
        "showIntroAnimation",
        "showIntroOnfirstConnection",
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
.field public static final Companion:Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController$Companion;

# The value of this static final field might be set in the static constructor
.field private static final INTRO_ANIMATION_DELAY:J = 0xbb8L


# instance fields
.field private final centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private connectionStateSubscription:Lio/reactivex/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private destinationName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController;->Companion:Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController$Companion;

    const-wide/16 v0, 0xbb8

    .line 19
    sput-wide v0, Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController;->INTRO_ANIMATION_DELAY:J

    return-void
.end method

.method public constructor <init>(Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "centralServiceController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    return-void
.end method

.method public static final synthetic access$getINTRO_ANIMATION_DELAY$cp()J
    .locals 2

    .line 12
    sget-wide v0, Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController;->INTRO_ANIMATION_DELAY:J

    return-wide v0
.end method


# virtual methods
.method public final getCentralServiceController()Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 12
    iget-object v0, p0, Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    return-object v0
.end method

.method public final getConnectionStateSubscription()Lio/reactivex/disposables/Disposable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 15
    iget-object v0, p0, Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController;->connectionStateSubscription:Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method public final getDestinationName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 16
    iget-object v0, p0, Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController;->destinationName:Ljava/lang/String;

    return-object v0
.end method

.method public onDispose()V
    .locals 1

    .line 50
    iget-object v0, p0, Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController;->connectionStateSubscription:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public final setConnectionStateSubscription(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .param p1    # Lio/reactivex/disposables/Disposable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 15
    iput-object p1, p0, Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController;->connectionStateSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final setDestinationName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 16
    iput-object p1, p0, Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController;->destinationName:Ljava/lang/String;

    return-void
.end method

.method public showIntroAnimation(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "destinationName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;->getCentralService()Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {v0}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->getIsConnected()Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "centralService.isConnected"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {v0, p1}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->showTurnByTurnIntro(Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_0
    iput-object p1, p0, Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController;->destinationName:Ljava/lang/String;

    .line 28
    invoke-virtual {p0}, Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController;->showIntroOnfirstConnection()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final showIntroOnfirstConnection()V
    .locals 4

    .line 37
    iget-object v0, p0, Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController;->connectionStateSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 39
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;->getCentralService()Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {v0}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->observeFirstMovement()Lio/reactivex/Flowable;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 41
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Flowable;->take(J)Lio/reactivex/Flowable;

    move-result-object v0

    .line 42
    sget-wide v1, Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController;->INTRO_ANIMATION_DELAY:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/Flowable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 43
    new-instance v1, Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController$showIntroOnfirstConnection$$inlined$let$lambda$1;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController$showIntroOnfirstConnection$$inlined$let$lambda$1;-><init>(Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method
