.class public final Lbike/smarthalo/app/onboarding/OnboardingCoordinator$permissionsCompletionContract$1;
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
        "bike/smarthalo/app/onboarding/OnboardingCoordinator$permissionsCompletionContract$1",
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
.field final synthetic $flowCompletionContract:Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;

.field final synthetic this$0:Lbike/smarthalo/app/onboarding/OnboardingCoordinator;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/onboarding/OnboardingCoordinator;Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;",
            ")V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lbike/smarthalo/app/onboarding/OnboardingCoordinator$permissionsCompletionContract$1;->this$0:Lbike/smarthalo/app/onboarding/OnboardingCoordinator;

    iput-object p2, p0, Lbike/smarthalo/app/onboarding/OnboardingCoordinator$permissionsCompletionContract$1;->$flowCompletionContract:Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackwardFinish()V
    .locals 1

    .line 77
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/OnboardingCoordinator$permissionsCompletionContract$1;->$flowCompletionContract:Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;

    invoke-interface {v0}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/FlowCompletionContract;->onBackwardFinish()V

    return-void
.end method

.method public onForwardFinish()V
    .locals 4

    .line 81
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/OnboardingCoordinator$permissionsCompletionContract$1;->this$0:Lbike/smarthalo/app/onboarding/OnboardingCoordinator;

    sget-object v1, Lbike/smarthalo/app/onboarding/fitness/OnboardingDoneView;->Companion:Lbike/smarthalo/app/onboarding/fitness/OnboardingDoneView$Companion;

    invoke-virtual {v1}, Lbike/smarthalo/app/onboarding/fitness/OnboardingDoneView$Companion;->getTAG()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;->navigateForward$default(Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/OnboardingCoordinator$permissionsCompletionContract$1;->this$0:Lbike/smarthalo/app/onboarding/OnboardingCoordinator;

    invoke-virtual {v0}, Lbike/smarthalo/app/onboarding/OnboardingCoordinator;->getViewProgressListContract()Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/navigationFlow/ViewProgressListContract;->selectLast()V

    return-void
.end method
