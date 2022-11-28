.class public final Lbike/smarthalo/app/onboarding/intro/OnboardingIntroView;
.super Lbike/smarthalo/app/navigationFlow/NavigationFlowView;
.source "OnboardingIntroView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/onboarding/intro/OnboardingIntroView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0010H\u0016R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0013"
    }
    d2 = {
        "Lbike/smarthalo/app/onboarding/intro/OnboardingIntroView;",
        "Lbike/smarthalo/app/navigationFlow/NavigationFlowView;",
        "presenterContract",
        "Lbike/smarthalo/app/onboarding/intro/OnboardingIntroPresenterContract;",
        "innerView",
        "Landroid/view/View;",
        "analyticsManager",
        "Lbike/smarthalo/app/analytics/AnalyticsContract;",
        "(Lbike/smarthalo/app/onboarding/intro/OnboardingIntroPresenterContract;Landroid/view/View;Lbike/smarthalo/app/analytics/AnalyticsContract;)V",
        "getAnalyticsManager",
        "()Lbike/smarthalo/app/analytics/AnalyticsContract;",
        "getPresenterContract",
        "()Lbike/smarthalo/app/onboarding/intro/OnboardingIntroPresenterContract;",
        "setPresenterContract",
        "(Lbike/smarthalo/app/onboarding/intro/OnboardingIntroPresenterContract;)V",
        "onHidden",
        "",
        "onShown",
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
.field public static final Companion:Lbike/smarthalo/app/onboarding/intro/OnboardingIntroView$Companion;

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private presenterContract:Lbike/smarthalo/app/onboarding/intro/OnboardingIntroPresenterContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbike/smarthalo/app/onboarding/intro/OnboardingIntroView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbike/smarthalo/app/onboarding/intro/OnboardingIntroView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbike/smarthalo/app/onboarding/intro/OnboardingIntroView;->Companion:Lbike/smarthalo/app/onboarding/intro/OnboardingIntroView$Companion;

    .line 20
    const-class v0, Lbike/smarthalo/app/onboarding/intro/OnboardingIntroView;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    sput-object v0, Lbike/smarthalo/app/onboarding/intro/OnboardingIntroView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lbike/smarthalo/app/onboarding/intro/OnboardingIntroPresenterContract;Landroid/view/View;Lbike/smarthalo/app/analytics/AnalyticsContract;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/onboarding/intro/OnboardingIntroPresenterContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lbike/smarthalo/app/analytics/AnalyticsContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "presenterContract"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "innerView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v0, Lbike/smarthalo/app/onboarding/intro/OnboardingIntroView;->TAG:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lbike/smarthalo/app/navigationFlow/NavigationFlowView;-><init>(Landroid/view/View;Ljava/lang/String;)V

    iput-object p1, p0, Lbike/smarthalo/app/onboarding/intro/OnboardingIntroView;->presenterContract:Lbike/smarthalo/app/onboarding/intro/OnboardingIntroPresenterContract;

    iput-object p3, p0, Lbike/smarthalo/app/onboarding/intro/OnboardingIntroView;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    .line 24
    sget p1, Lbike/smarthalo/app/R$id;->introCreateAccount:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance p3, Lbike/smarthalo/app/onboarding/intro/OnboardingIntroView$1;

    invoke-direct {p3, p0}, Lbike/smarthalo/app/onboarding/intro/OnboardingIntroView$1;-><init>(Lbike/smarthalo/app/onboarding/intro/OnboardingIntroView;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    sget p1, Lbike/smarthalo/app/R$id;->introLogin:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance p2, Lbike/smarthalo/app/onboarding/intro/OnboardingIntroView$2;

    invoke-direct {p2, p0}, Lbike/smarthalo/app/onboarding/intro/OnboardingIntroView$2;-><init>(Lbike/smarthalo/app/onboarding/intro/OnboardingIntroView;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 13
    sget-object v0, Lbike/smarthalo/app/onboarding/intro/OnboardingIntroView;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final getAnalyticsManager()Lbike/smarthalo/app/analytics/AnalyticsContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 16
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/intro/OnboardingIntroView;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    return-object v0
.end method

.method public final getPresenterContract()Lbike/smarthalo/app/onboarding/intro/OnboardingIntroPresenterContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 14
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/intro/OnboardingIntroView;->presenterContract:Lbike/smarthalo/app/onboarding/intro/OnboardingIntroPresenterContract;

    return-object v0
.end method

.method public onHidden()V
    .locals 0

    return-void
.end method

.method public onShown()V
    .locals 2

    .line 29
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/intro/OnboardingIntroView;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    sget-object v1, Lbike/smarthalo/app/analytics/AnalyticsScreenViews;->USER_TITLE:Ljava/lang/String;

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendScreenViewEvent(Ljava/lang/String;)V

    return-void
.end method

.method public final setPresenterContract(Lbike/smarthalo/app/onboarding/intro/OnboardingIntroPresenterContract;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/onboarding/intro/OnboardingIntroPresenterContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/intro/OnboardingIntroView;->presenterContract:Lbike/smarthalo/app/onboarding/intro/OnboardingIntroPresenterContract;

    return-void
.end method
