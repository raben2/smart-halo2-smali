.class public final Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;
.super Ljava/lang/Object;
.source "BottomDrawerCoordinator.kt"

# interfaces
.implements Lbike/smarthalo/app/controllers/SHDisposable;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u001b\u001a\u00020\u001cH\u0002J\u0008\u0010\u001d\u001a\u00020\u001cH\u0016J\u0008\u0010\u001e\u001a\u00020\u001cH\u0016J\u0010\u0010\u001f\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020!H\u0002R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0015R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0015R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;",
        "Lbike/smarthalo/app/controllers/SHDisposable;",
        "navigationCoordinator",
        "Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;",
        "myHaloCoordinator",
        "fitnessCoordinator",
        "bottomNavigationCoordinator",
        "Lbike/smarthalo/app/designRefresh/BottomNavigationContract;",
        "bottomSheetView",
        "Landroid/widget/FrameLayout;",
        "(Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;Lbike/smarthalo/app/designRefresh/BottomNavigationContract;Landroid/widget/FrameLayout;)V",
        "getBottomNavigationCoordinator",
        "()Lbike/smarthalo/app/designRefresh/BottomNavigationContract;",
        "bottomSheetBehavior",
        "Lcom/google/android/material/bottomsheet/BottomSheetBehavior;",
        "getBottomSheetView",
        "()Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "currentCard",
        "getFitnessCoordinator",
        "()Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;",
        "getMyHaloCoordinator",
        "getNavigationCoordinator",
        "selectedTabSubscription",
        "Lio/reactivex/disposables/Disposable;",
        "viewDelayTimer",
        "observeSelectedTab",
        "",
        "onDispose",
        "onStart",
        "onTabSelected",
        "cardType",
        "Lbike/smarthalo/app/designRefresh/CardType;",
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
.field private final bottomNavigationCoordinator:Lbike/smarthalo/app/designRefresh/BottomNavigationContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private final bottomSheetView:Landroid/widget/FrameLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private currentCard:Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;

.field private final fitnessCoordinator:Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final myHaloCoordinator:Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final navigationCoordinator:Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private selectedTabSubscription:Lio/reactivex/disposables/Disposable;

.field private viewDelayTimer:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;Lbike/smarthalo/app/designRefresh/BottomNavigationContract;Landroid/widget/FrameLayout;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lbike/smarthalo/app/designRefresh/BottomNavigationContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/FrameLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "navigationCoordinator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "myHaloCoordinator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fitnessCoordinator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bottomNavigationCoordinator"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bottomSheetView"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->navigationCoordinator:Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;

    iput-object p2, p0, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->myHaloCoordinator:Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;

    iput-object p3, p0, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->fitnessCoordinator:Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;

    iput-object p4, p0, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->bottomNavigationCoordinator:Lbike/smarthalo/app/designRefresh/BottomNavigationContract;

    iput-object p5, p0, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->bottomSheetView:Landroid/widget/FrameLayout;

    .line 29
    iget-object p1, p0, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->bottomSheetView:Landroid/widget/FrameLayout;

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    const-string p2, "BottomSheetBehavior.from(bottomSheetView)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 30
    iget-object p1, p0, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->bottomSheetView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "bottomSheetView.context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->context:Landroid/content/Context;

    .line 31
    iget-object p1, p0, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->navigationCoordinator:Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;

    iput-object p1, p0, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->currentCard:Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;

    return-void
.end method

.method public static final synthetic access$onTabSelected(Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;Lbike/smarthalo/app/designRefresh/CardType;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->onTabSelected(Lbike/smarthalo/app/designRefresh/CardType;)V

    return-void
.end method

.method private final observeSelectedTab()V
    .locals 2

    .line 46
    iget-object v0, p0, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->bottomNavigationCoordinator:Lbike/smarthalo/app/designRefresh/BottomNavigationContract;

    .line 47
    invoke-interface {v0}, Lbike/smarthalo/app/designRefresh/BottomNavigationContract;->observeSelectedItem()Lio/reactivex/Flowable;

    move-result-object v0

    .line 48
    new-instance v1, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator$observeSelectedTab$1;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator$observeSelectedTab$1;-><init>(Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->selectedTabSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private final onTabSelected(Lbike/smarthalo/app/designRefresh/CardType;)V
    .locals 3

    .line 52
    iget-object v0, p0, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 53
    iget-object v0, p0, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->currentCard:Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;

    invoke-virtual {v0}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;->getView()Lbike/smarthalo/app/navigationFlow/NavigationFlowView;

    move-result-object v0

    invoke-virtual {v0}, Lbike/smarthalo/app/navigationFlow/NavigationFlowView;->getInnerView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->currentCard:Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;

    invoke-virtual {v0}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;->onStop()V

    .line 56
    sget-object v0, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lbike/smarthalo/app/designRefresh/CardType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0x50

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 66
    :pswitch_0
    iget-object p1, p0, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->fitnessCoordinator:Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;

    iput-object p1, p0, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->currentCard:Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;

    .line 67
    iget-object p1, p0, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v2, p0, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->context:Landroid/content/Context;

    invoke-static {v2, v0}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->getPxFromDp(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(IZ)V

    goto :goto_0

    .line 62
    :pswitch_1
    iget-object p1, p0, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->myHaloCoordinator:Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;

    iput-object p1, p0, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->currentCard:Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;

    .line 63
    iget-object p1, p0, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v2, p0, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->context:Landroid/content/Context;

    invoke-static {v2, v0}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->getPxFromDp(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(IZ)V

    goto :goto_0

    .line 58
    :pswitch_2
    iget-object p1, p0, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->navigationCoordinator:Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;

    iput-object p1, p0, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->currentCard:Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;

    .line 59
    iget-object p1, p0, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v0, p0, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->context:Landroid/content/Context;

    const/16 v2, 0x78

    invoke-static {v0, v2}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->getPxFromDp(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(IZ)V

    .line 70
    :goto_0
    iget-object p1, p0, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->currentCard:Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;

    invoke-virtual {p1}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;->getView()Lbike/smarthalo/app/navigationFlow/NavigationFlowView;

    move-result-object p1

    invoke-virtual {p1}, Lbike/smarthalo/app/navigationFlow/NavigationFlowView;->getInnerView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object p1, p0, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->currentCard:Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;

    invoke-virtual {p1}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;->onStart()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getBottomNavigationCoordinator()Lbike/smarthalo/app/designRefresh/BottomNavigationContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 23
    iget-object v0, p0, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->bottomNavigationCoordinator:Lbike/smarthalo/app/designRefresh/BottomNavigationContract;

    return-object v0
.end method

.method public final getBottomSheetView()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 24
    iget-object v0, p0, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->bottomSheetView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getFitnessCoordinator()Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 22
    iget-object v0, p0, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->fitnessCoordinator:Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;

    return-object v0
.end method

.method public final getMyHaloCoordinator()Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 21
    iget-object v0, p0, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->myHaloCoordinator:Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;

    return-object v0
.end method

.method public final getNavigationCoordinator()Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 20
    iget-object v0, p0, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->navigationCoordinator:Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;

    return-object v0
.end method

.method public onDispose()V
    .locals 1

    .line 40
    iget-object v0, p0, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->selectedTabSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 41
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->viewDelayTimer:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 42
    :cond_1
    iget-object v0, p0, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->currentCard:Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;

    invoke-virtual {v0}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;->onStop()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->observeSelectedTab()V

    .line 35
    iget-object v0, p0, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->currentCard:Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;

    invoke-virtual {v0}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/SingleCoordinator;->onStart()V

    .line 36
    iget-object v0, p0, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->bottomNavigationCoordinator:Lbike/smarthalo/app/designRefresh/BottomNavigationContract;

    invoke-interface {v0}, Lbike/smarthalo/app/designRefresh/BottomNavigationContract;->getSelectedItem()Lbike/smarthalo/app/designRefresh/CardType;

    move-result-object v0

    invoke-direct {p0, v0}, Lbike/smarthalo/app/designRefresh/BottomDrawerCoordinator;->onTabSelected(Lbike/smarthalo/app/designRefresh/CardType;)V

    return-void
.end method
