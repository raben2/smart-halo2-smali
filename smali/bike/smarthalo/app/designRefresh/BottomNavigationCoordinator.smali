.class public final Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;
.super Ljava/lang/Object;
.source "BottomNavigationCoordinator.kt"

# interfaces
.implements Lbike/smarthalo/app/designRefresh/BottomNavigationContract;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBottomNavigationCoordinator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BottomNavigationCoordinator.kt\nbike/smarthalo/app/designRefresh/BottomNavigationCoordinator\n*L\n1#1,68:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0011\u001a\u00020\u0006H\u0016J\u000e\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0013H\u0016J\u001a\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0002R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001b"
    }
    d2 = {
        "Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;",
        "Lbike/smarthalo/app/designRefresh/BottomNavigationContract;",
        "tabView",
        "Lcom/google/android/material/tabs/TabLayout;",
        "(Lcom/google/android/material/tabs/TabLayout;)V",
        "selectedTab",
        "Lbike/smarthalo/app/designRefresh/CardType;",
        "getSelectedTab",
        "()Lbike/smarthalo/app/designRefresh/CardType;",
        "setSelectedTab",
        "(Lbike/smarthalo/app/designRefresh/CardType;)V",
        "selectedTabSource",
        "Lio/reactivex/processors/FlowableProcessor;",
        "getSelectedTabSource",
        "()Lio/reactivex/processors/FlowableProcessor;",
        "getTabView",
        "()Lcom/google/android/material/tabs/TabLayout;",
        "getSelectedItem",
        "observeSelectedItem",
        "Lio/reactivex/Flowable;",
        "setTab",
        "",
        "tab",
        "Lcom/google/android/material/tabs/TabLayout$Tab;",
        "isSelected",
        "",
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
.field public static final Companion:Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator$Companion;

# The value of this static final field might be set in the static constructor
.field private static final FITNESS_TAB_INDEX:I = 0x1

# The value of this static final field might be set in the static constructor
.field private static final MY_HALO_TAB_INDEX:I = 0x2

.field private static final NAVIGATION_TAB_INDEX:I


# instance fields
.field private selectedTab:Lbike/smarthalo/app/designRefresh/CardType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final selectedTabSource:Lio/reactivex/processors/FlowableProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/FlowableProcessor<",
            "Lbike/smarthalo/app/designRefresh/CardType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tabView:Lcom/google/android/material/tabs/TabLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;->Companion:Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator$Companion;

    const/4 v0, 0x1

    .line 19
    sput v0, Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;->FITNESS_TAB_INDEX:I

    const/4 v0, 0x2

    .line 20
    sput v0, Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;->MY_HALO_TAB_INDEX:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;)V
    .locals 1
    .param p1    # Lcom/google/android/material/tabs/TabLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "tabView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;->tabView:Lcom/google/android/material/tabs/TabLayout;

    .line 14
    invoke-static {}, Lio/reactivex/processors/PublishProcessor;->create()Lio/reactivex/processors/PublishProcessor;

    move-result-object p1

    const-string v0, "PublishProcessor.create()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lio/reactivex/processors/FlowableProcessor;

    iput-object p1, p0, Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;->selectedTabSource:Lio/reactivex/processors/FlowableProcessor;

    .line 15
    sget-object p1, Lbike/smarthalo/app/designRefresh/CardType;->Navigation:Lbike/smarthalo/app/designRefresh/CardType;

    iput-object p1, p0, Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;->selectedTab:Lbike/smarthalo/app/designRefresh/CardType;

    .line 23
    iget-object p1, p0, Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;->tabView:Lcom/google/android/material/tabs/TabLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;->setTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    .line 24
    iget-object p1, p0, Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;->tabView:Lcom/google/android/material/tabs/TabLayout;

    new-instance v0, Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator$1;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator$1;-><init>(Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;)V

    check-cast v0, Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    return-void
.end method

.method public static final synthetic access$getFITNESS_TAB_INDEX$cp()I
    .locals 1

    .line 13
    sget v0, Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;->FITNESS_TAB_INDEX:I

    return v0
.end method

.method public static final synthetic access$getMY_HALO_TAB_INDEX$cp()I
    .locals 1

    .line 13
    sget v0, Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;->MY_HALO_TAB_INDEX:I

    return v0
.end method

.method public static final synthetic access$getNAVIGATION_TAB_INDEX$cp()I
    .locals 1

    .line 13
    sget v0, Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;->NAVIGATION_TAB_INDEX:I

    return v0
.end method

.method public static final synthetic access$setTab(Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;Lcom/google/android/material/tabs/TabLayout$Tab;Z)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;->setTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    return-void
.end method

.method private final setTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V
    .locals 2

    if-eqz p1, :cond_6

    .line 40
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v0

    .line 41
    sget v1, Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;->NAVIGATION_TAB_INDEX:I

    if-ne v0, v1, :cond_1

    .line 42
    sget-object v0, Lbike/smarthalo/app/designRefresh/CardType;->Navigation:Lbike/smarthalo/app/designRefresh/CardType;

    iput-object v0, p0, Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;->selectedTab:Lbike/smarthalo/app/designRefresh/CardType;

    if-eqz p2, :cond_0

    const v0, 0x7f0801d3

    goto :goto_0

    :cond_0
    const v0, 0x7f0801d1

    .line 43
    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    const-string v0, "tab.setIcon(if (isSelect\u2026lse R.drawable.map_empty)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 45
    :cond_1
    sget v1, Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;->FITNESS_TAB_INDEX:I

    if-ne v0, v1, :cond_3

    .line 46
    sget-object v0, Lbike/smarthalo/app/designRefresh/CardType;->Fitness:Lbike/smarthalo/app/designRefresh/CardType;

    iput-object v0, p0, Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;->selectedTab:Lbike/smarthalo/app/designRefresh/CardType;

    if-eqz p2, :cond_2

    const v0, 0x7f0800f0

    goto :goto_1

    :cond_2
    const v0, 0x7f0800ee

    .line 47
    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    const-string v0, "tab.setIcon(if (isSelect\u2026R.drawable.fitness_empty)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 49
    :cond_3
    sget v1, Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;->MY_HALO_TAB_INDEX:I

    if-ne v0, v1, :cond_5

    .line 50
    sget-object v0, Lbike/smarthalo/app/designRefresh/CardType;->MyHalo:Lbike/smarthalo/app/designRefresh/CardType;

    iput-object v0, p0, Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;->selectedTab:Lbike/smarthalo/app/designRefresh/CardType;

    if-eqz p2, :cond_4

    const v0, 0x7f080082

    goto :goto_2

    :cond_4
    const v0, 0x7f080081

    .line 51
    :goto_2
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    const-string v0, "tab.setIcon(if (isSelect\u2026drawable.assistant_empty)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    :goto_3
    if-eqz p2, :cond_6

    .line 56
    iget-object p1, p0, Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;->selectedTabSource:Lio/reactivex/processors/FlowableProcessor;

    iget-object p2, p0, Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;->selectedTab:Lbike/smarthalo/app/designRefresh/CardType;

    invoke-virtual {p1, p2}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public getSelectedItem()Lbike/smarthalo/app/designRefresh/CardType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 66
    iget-object v0, p0, Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;->selectedTab:Lbike/smarthalo/app/designRefresh/CardType;

    return-object v0
.end method

.method public final getSelectedTab()Lbike/smarthalo/app/designRefresh/CardType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 15
    iget-object v0, p0, Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;->selectedTab:Lbike/smarthalo/app/designRefresh/CardType;

    return-object v0
.end method

.method public final getSelectedTabSource()Lio/reactivex/processors/FlowableProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/processors/FlowableProcessor<",
            "Lbike/smarthalo/app/designRefresh/CardType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 14
    iget-object v0, p0, Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;->selectedTabSource:Lio/reactivex/processors/FlowableProcessor;

    return-object v0
.end method

.method public final getTabView()Lcom/google/android/material/tabs/TabLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 13
    iget-object v0, p0, Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;->tabView:Lcom/google/android/material/tabs/TabLayout;

    return-object v0
.end method

.method public observeSelectedItem()Lio/reactivex/Flowable;
    .locals 1
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

    .line 62
    iget-object v0, p0, Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;->selectedTabSource:Lio/reactivex/processors/FlowableProcessor;

    check-cast v0, Lio/reactivex/Flowable;

    return-object v0
.end method

.method public final setSelectedTab(Lbike/smarthalo/app/designRefresh/CardType;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/designRefresh/CardType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;->selectedTab:Lbike/smarthalo/app/designRefresh/CardType;

    return-void
.end method
