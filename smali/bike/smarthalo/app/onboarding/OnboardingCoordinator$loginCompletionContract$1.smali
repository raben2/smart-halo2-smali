.class public final Lbike/smarthalo/app/onboarding/OnboardingCoordinator$loginCompletionContract$1;
.super Ljava/lang/Object;
.source "OnboardingCoordinator.kt"

# interfaces
.implements Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/onboarding/OnboardingCoordinator;-><init>(Landroid/content/Context;Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;Lbike/smarthalo/app/navigationFlow/FlowActivityContract;Landroidx/lifecycle/Lifecycle;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "bike/smarthalo/app/onboarding/OnboardingCoordinator$loginCompletionContract$1",
        "Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;",
        "onBackwardFinish",
        "",
        "onForwardFinish",
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
.field final synthetic this$0:Lbike/smarthalo/app/onboarding/OnboardingCoordinator;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/onboarding/OnboardingCoordinator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/OnboardingCoordinator$loginCompletionContract$1;->this$0:Lbike/smarthalo/app/onboarding/OnboardingCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackwardFinish()V
    .locals 3

    .line 54
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/OnboardingCoordinator$loginCompletionContract$1;->this$0:Lbike/smarthalo/app/onboarding/OnboardingCoordinator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;->navigateBack$default(Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/OnboardingCoordinator$loginCompletionContract$1;->this$0:Lbike/smarthalo/app/onboarding/OnboardingCoordinator;

    invoke-virtual {v0}, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->getFlowActivityContract()Lbike/smarthalo/app/navigationFlow/FlowActivityContract;

    move-result-object v0

    const v1, 0x7f010046

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lbike/smarthalo/app/navigationFlow/FlowActivityContract;->toggleBackButtonVisibility(ZLjava/lang/Integer;)V

    return-void
.end method

.method public onForwardFinish()V
    .locals 1

    .line 59
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/OnboardingCoordinator$loginCompletionContract$1;->this$0:Lbike/smarthalo/app/onboarding/OnboardingCoordinator;

    invoke-static {v0}, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->access$onLoginCompleted(Lbike/smarthalo/app/onboarding/OnboardingCoordinator;)V

    return-void
.end method
