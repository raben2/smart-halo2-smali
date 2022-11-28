.class public final Lbike/smarthalo/app/profile/ProfilePresenter;
.super Ljava/lang/Object;
.source "ProfilePresenter.kt"

# interfaces
.implements Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;
.implements Lbike/smarthalo/app/profile/ProfilePresenterContract;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0018\u00002\u00020\u00012\u00020\u0002B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u000e\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u0010\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0008\u0010\u001c\u001a\u00020\u0018H\u0016J\u0010\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0008\u0010 \u001a\u00020\u0018H\u0016J\u0010\u0010!\u001a\u00020\u00182\u0006\u0010\"\u001a\u00020\u001bH\u0016J\u0008\u0010#\u001a\u00020\u0018H\u0016J\u0008\u0010$\u001a\u00020\u0018H\u0016J\u0010\u0010%\u001a\u00020\u00182\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0008\u0010&\u001a\u00020\u0018H\u0002R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000c\u001a\u0010\u0012\u000c\u0012\n \u000e*\u0004\u0018\u00010\u000b0\u000b0\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\'"
    }
    d2 = {
        "Lbike/smarthalo/app/profile/ProfilePresenter;",
        "Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;",
        "Lbike/smarthalo/app/profile/ProfilePresenterContract;",
        "userStorageManager",
        "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;",
        "profileCoordinator",
        "Lbike/smarthalo/app/profile/ProfileCoordinatorContract;",
        "jobServiceCreator",
        "Lbike/smarthalo/app/services/JobServiceCreator;",
        "(Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/profile/ProfileCoordinatorContract;Lbike/smarthalo/app/services/JobServiceCreator;)V",
        "currentViewState",
        "Lbike/smarthalo/app/profile/ProfileViewState;",
        "currentViewStateSource",
        "Lio/reactivex/processors/FlowableProcessor;",
        "kotlin.jvm.PlatformType",
        "getJobServiceCreator",
        "()Lbike/smarthalo/app/services/JobServiceCreator;",
        "getProfileCoordinator",
        "()Lbike/smarthalo/app/profile/ProfileCoordinatorContract;",
        "getUserStorageManager",
        "()Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;",
        "getObservableViewState",
        "Lio/reactivex/Flowable;",
        "onBirthdateSelected",
        "",
        "onFirstNameTextChanged",
        "firstName",
        "",
        "onGenderSelected",
        "onHeightMetricChanged",
        "isMetric",
        "",
        "onHeightSelected",
        "onLastNameTextChanged",
        "lastName",
        "onSaveClicked",
        "onWeightSelected",
        "onWeightUnitChanged",
        "updateSaveState",
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
.field private currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

.field private currentViewStateSource:Lio/reactivex/processors/FlowableProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/FlowableProcessor<",
            "Lbike/smarthalo/app/profile/ProfileViewState;",
            ">;"
        }
    .end annotation
.end field

.field private final jobServiceCreator:Lbike/smarthalo/app/services/JobServiceCreator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final profileCoordinator:Lbike/smarthalo/app/profile/ProfileCoordinatorContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/profile/ProfileCoordinatorContract;Lbike/smarthalo/app/services/JobServiceCreator;)V
    .locals 2
    .param p1    # Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lbike/smarthalo/app/profile/ProfileCoordinatorContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lbike/smarthalo/app/services/JobServiceCreator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "userStorageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileCoordinator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jobServiceCreator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    iput-object p2, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->profileCoordinator:Lbike/smarthalo/app/profile/ProfileCoordinatorContract;

    iput-object p3, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->jobServiceCreator:Lbike/smarthalo/app/services/JobServiceCreator;

    .line 26
    new-instance p1, Lbike/smarthalo/app/profile/ProfileViewState;

    invoke-direct {p1}, Lbike/smarthalo/app/profile/ProfileViewState;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    const/4 p1, 0x1

    .line 27
    invoke-static {p1}, Lio/reactivex/processors/ReplayProcessor;->createWithSize(I)Lio/reactivex/processors/ReplayProcessor;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/processors/ReplayProcessor;->toSerialized()Lio/reactivex/processors/FlowableProcessor;

    move-result-object p1

    const-string p2, "ReplayProcessor.createWi\u2026wState>(1).toSerialized()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewStateSource:Lio/reactivex/processors/FlowableProcessor;

    .line 30
    iget-object p1, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {p1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 32
    iget-object p2, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHUser;->realmGet$firstName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "currentUser.firstName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lbike/smarthalo/app/profile/ProfileViewState;->setFirstName(Ljava/lang/String;)V

    .line 33
    iget-object p2, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHUser;->realmGet$lastName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "currentUser.lastName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lbike/smarthalo/app/profile/ProfileViewState;->setLastName(Ljava/lang/String;)V

    .line 34
    iget-object p2, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    sget-object p3, Lbike/smarthalo/app/models/userModels/Gender;->Companion:Lbike/smarthalo/app/models/userModels/Gender$Companion;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHUser;->realmGet$gender()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Lbike/smarthalo/app/models/userModels/Gender$Companion;->fromInt(Ljava/lang/Integer;)Lbike/smarthalo/app/models/userModels/Gender;

    move-result-object p3

    invoke-virtual {p2, p3}, Lbike/smarthalo/app/profile/ProfileViewState;->setGender(Lbike/smarthalo/app/models/userModels/Gender;)V

    .line 35
    iget-object p2, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHUser;->realmGet$dateOfBirth()Ljava/util/Date;

    move-result-object p3

    const-string v0, "currentUser.dateOfBirth"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lbike/smarthalo/app/profile/ProfileViewState;->setBirthDate(Ljava/util/Date;)V

    .line 36
    iget-object p2, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHUser;->realmGet$email()Ljava/lang/String;

    move-result-object p3

    const-string v0, "currentUser.email"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lbike/smarthalo/app/profile/ProfileViewState;->setEmail(Ljava/lang/String;)V

    .line 38
    iget-object p2, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHUser;->realmGet$height()Ljava/lang/Double;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-int p3, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p2, p3}, Lbike/smarthalo/app/profile/ProfileViewState;->setHeight(Ljava/lang/Integer;)V

    .line 39
    iget-object p2, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHUser;->realmGet$weight()Ljava/lang/Double;

    move-result-object p3

    invoke-virtual {p2, p3}, Lbike/smarthalo/app/profile/ProfileViewState;->setWeight(Ljava/lang/Double;)V

    .line 40
    iget-object p2, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHUser;->realmGet$weightMetric()Ljava/lang/Boolean;

    move-result-object p3

    const-string v0, "currentUser.weightMetric"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p2, p3}, Lbike/smarthalo/app/profile/ProfileViewState;->setHeightMetric(Z)V

    .line 41
    iget-object p2, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHUser;->realmGet$weightMetric()Ljava/lang/Boolean;

    move-result-object p1

    const-string p3, "currentUser.weightMetric"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p2, p1}, Lbike/smarthalo/app/profile/ProfileViewState;->setWeightMetric(Z)V

    .line 43
    :cond_1
    iget-object p1, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewStateSource:Lio/reactivex/processors/FlowableProcessor;

    iget-object p2, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    invoke-virtual {p1, p2}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getCurrentViewState$p(Lbike/smarthalo/app/profile/ProfilePresenter;)Lbike/smarthalo/app/profile/ProfileViewState;
    .locals 0

    .line 20
    iget-object p0, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    return-object p0
.end method

.method public static final synthetic access$setCurrentViewState$p(Lbike/smarthalo/app/profile/ProfilePresenter;Lbike/smarthalo/app/profile/ProfileViewState;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    return-void
.end method

.method public static final synthetic access$updateSaveState(Lbike/smarthalo/app/profile/ProfilePresenter;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lbike/smarthalo/app/profile/ProfilePresenter;->updateSaveState()V

    return-void
.end method

.method private final updateSaveState()V
    .locals 6

    .line 47
    iget-object v0, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    invoke-virtual {v1}, Lbike/smarthalo/app/profile/ProfileViewState;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$firstName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v3, 0x0

    if-nez v1, :cond_2

    iget-object v1, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    invoke-virtual {v1}, Lbike/smarthalo/app/profile/ProfileViewState;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$lastName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    if-nez v1, :cond_2

    iget-object v1, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    invoke-virtual {v1}, Lbike/smarthalo/app/profile/ProfileViewState;->getGender()Lbike/smarthalo/app/models/userModels/Gender;

    move-result-object v1

    .line 51
    sget-object v4, Lbike/smarthalo/app/models/userModels/Gender;->Companion:Lbike/smarthalo/app/models/userModels/Gender$Companion;

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$gender()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbike/smarthalo/app/models/userModels/Gender$Companion;->fromInt(Ljava/lang/Integer;)Lbike/smarthalo/app/models/userModels/Gender;

    move-result-object v4

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    invoke-virtual {v1}, Lbike/smarthalo/app/profile/ProfileViewState;->getBirthDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$dateOfBirth()Ljava/util/Date;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    if-nez v1, :cond_2

    iget-object v1, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    invoke-virtual {v1}, Lbike/smarthalo/app/profile/ProfileViewState;->getHeight()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$height()Ljava/lang/Double;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    double-to-int v4, v4

    .line 53
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    if-nez v1, :cond_2

    .line 54
    iget-object v1, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    invoke-virtual {v1}, Lbike/smarthalo/app/profile/ProfileViewState;->getWeight()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$weight()Ljava/lang/Double;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result v1

    xor-int/2addr v1, v2

    if-nez v1, :cond_2

    iget-object v1, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    invoke-virtual {v1}, Lbike/smarthalo/app/profile/ProfileViewState;->isHeightMetric()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$weightMetric()Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    if-nez v1, :cond_2

    iget-object v1, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    invoke-virtual {v1}, Lbike/smarthalo/app/profile/ProfileViewState;->isWeightMetric()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$weightMetric()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 60
    :goto_2
    iget-object v1, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    invoke-virtual {v1}, Lbike/smarthalo/app/profile/ProfileViewState;->getHasBirthdateError()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    invoke-virtual {v1}, Lbike/smarthalo/app/profile/ProfileViewState;->getHasFirstNameError()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    invoke-virtual {v1}, Lbike/smarthalo/app/profile/ProfileViewState;->getHasLastNameError()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v1, 0x1

    .line 62
    :goto_4
    iget-object v4, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    if-eqz v0, :cond_5

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v4, v2}, Lbike/smarthalo/app/profile/ProfileViewState;->setSaveVisible(Z)V

    .line 63
    iget-object v0, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewStateSource:Lio/reactivex/processors/FlowableProcessor;

    iget-object v1, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    invoke-virtual {v0, v1}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getJobServiceCreator()Lbike/smarthalo/app/services/JobServiceCreator;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 23
    iget-object v0, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->jobServiceCreator:Lbike/smarthalo/app/services/JobServiceCreator;

    return-object v0
.end method

.method public getObservableViewState()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/profile/ProfileViewState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 135
    iget-object v0, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewStateSource:Lio/reactivex/processors/FlowableProcessor;

    check-cast v0, Lio/reactivex/Flowable;

    return-object v0
.end method

.method public final getProfileCoordinator()Lbike/smarthalo/app/profile/ProfileCoordinatorContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 22
    iget-object v0, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->profileCoordinator:Lbike/smarthalo/app/profile/ProfileCoordinatorContract;

    return-object v0
.end method

.method public final getUserStorageManager()Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 21
    iget-object v0, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    return-object v0
.end method

.method public onBirthdateSelected()V
    .locals 3

    .line 112
    iget-object v0, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->profileCoordinator:Lbike/smarthalo/app/profile/ProfileCoordinatorContract;

    iget-object v1, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    invoke-virtual {v1}, Lbike/smarthalo/app/profile/ProfileViewState;->getBirthDate()Ljava/util/Date;

    move-result-object v1

    new-instance v2, Lbike/smarthalo/app/profile/ProfilePresenter$onBirthdateSelected$1;

    invoke-direct {v2, p0}, Lbike/smarthalo/app/profile/ProfilePresenter$onBirthdateSelected$1;-><init>(Lbike/smarthalo/app/profile/ProfilePresenter;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1, v2}, Lbike/smarthalo/app/profile/ProfileCoordinatorContract;->pickDate(Ljava/util/Date;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onFirstNameTextChanged(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "firstName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/profile/ProfileViewState;->setInitializing(Z)V

    .line 68
    iget-object v0, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    invoke-static {p1}, Lbike/smarthalo/app/extensions/StringExtensionsKt;->hasValue(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/profile/ProfileViewState;->setHasFirstNameError(Z)V

    .line 69
    iget-object v0, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    invoke-virtual {v0, p1}, Lbike/smarthalo/app/profile/ProfileViewState;->setFirstName(Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Lbike/smarthalo/app/profile/ProfilePresenter;->updateSaveState()V

    return-void
.end method

.method public onGenderSelected()V
    .locals 3

    .line 105
    iget-object v0, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->profileCoordinator:Lbike/smarthalo/app/profile/ProfileCoordinatorContract;

    iget-object v1, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    invoke-virtual {v1}, Lbike/smarthalo/app/profile/ProfileViewState;->getGender()Lbike/smarthalo/app/models/userModels/Gender;

    move-result-object v1

    new-instance v2, Lbike/smarthalo/app/profile/ProfilePresenter$onGenderSelected$1;

    invoke-direct {v2, p0}, Lbike/smarthalo/app/profile/ProfilePresenter$onGenderSelected$1;-><init>(Lbike/smarthalo/app/profile/ProfilePresenter;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1, v2}, Lbike/smarthalo/app/profile/ProfileCoordinatorContract;->pickGender(Lbike/smarthalo/app/models/userModels/Gender;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onHeightMetricChanged(Z)V
    .locals 1

    .line 86
    iget-object v0, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    invoke-virtual {v0, p1}, Lbike/smarthalo/app/profile/ProfileViewState;->setHeightMetric(Z)V

    .line 87
    invoke-direct {p0}, Lbike/smarthalo/app/profile/ProfilePresenter;->updateSaveState()V

    return-void
.end method

.method public onHeightSelected()V
    .locals 4

    .line 98
    iget-object v0, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->profileCoordinator:Lbike/smarthalo/app/profile/ProfileCoordinatorContract;

    iget-object v1, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    invoke-virtual {v1}, Lbike/smarthalo/app/profile/ProfileViewState;->getHeight()Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    invoke-virtual {v2}, Lbike/smarthalo/app/profile/ProfileViewState;->isHeightMetric()Z

    move-result v2

    new-instance v3, Lbike/smarthalo/app/profile/ProfilePresenter$onHeightSelected$1;

    invoke-direct {v3, p0}, Lbike/smarthalo/app/profile/ProfilePresenter$onHeightSelected$1;-><init>(Lbike/smarthalo/app/profile/ProfilePresenter;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1, v2, v3}, Lbike/smarthalo/app/profile/ProfileCoordinatorContract;->pickHeight(Ljava/lang/Integer;ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onLastNameTextChanged(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "lastName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/profile/ProfileViewState;->setInitializing(Z)V

    .line 75
    iget-object v0, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    invoke-static {p1}, Lbike/smarthalo/app/extensions/StringExtensionsKt;->hasValue(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/profile/ProfileViewState;->setHasLastNameError(Z)V

    .line 76
    iget-object v0, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    invoke-virtual {v0, p1}, Lbike/smarthalo/app/profile/ProfileViewState;->setLastName(Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lbike/smarthalo/app/profile/ProfilePresenter;->updateSaveState()V

    return-void
.end method

.method public onSaveClicked()V
    .locals 3

    .line 119
    iget-object v0, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    invoke-virtual {v1}, Lbike/smarthalo/app/profile/ProfileViewState;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHUser;->realmSet$firstName(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    invoke-virtual {v1}, Lbike/smarthalo/app/profile/ProfileViewState;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHUser;->realmSet$lastName(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    invoke-virtual {v1}, Lbike/smarthalo/app/profile/ProfileViewState;->getBirthDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHUser;->realmSet$dateOfBirth(Ljava/util/Date;)V

    .line 123
    iget-object v1, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    invoke-virtual {v1}, Lbike/smarthalo/app/profile/ProfileViewState;->getGender()Lbike/smarthalo/app/models/userModels/Gender;

    move-result-object v1

    invoke-virtual {v1}, Lbike/smarthalo/app/models/userModels/Gender;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHUser;->realmSet$gender(Ljava/lang/Integer;)V

    .line 124
    iget-object v1, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    invoke-virtual {v1}, Lbike/smarthalo/app/profile/ProfileViewState;->getWeight()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHUser;->realmSet$weight(Ljava/lang/Double;)V

    .line 125
    iget-object v1, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    invoke-virtual {v1}, Lbike/smarthalo/app/profile/ProfileViewState;->getHeight()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHUser;->realmSet$height(Ljava/lang/Double;)V

    .line 126
    iget-object v1, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    invoke-virtual {v1}, Lbike/smarthalo/app/profile/ProfileViewState;->isHeightMetric()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHUser;->realmSet$heightMetric(Ljava/lang/Boolean;)V

    .line 127
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$weightMetric()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHUser;->realmSet$weightMetric(Ljava/lang/Boolean;)V

    .line 129
    iget-object v1, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {v1, v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->saveUser(Lbike/smarthalo/app/models/SHUser;)V

    .line 130
    iget-object v0, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->jobServiceCreator:Lbike/smarthalo/app/services/JobServiceCreator;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/services/JobServiceCreator;->createJobService(I)V

    .line 131
    iget-object v0, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->profileCoordinator:Lbike/smarthalo/app/profile/ProfileCoordinatorContract;

    invoke-interface {v0}, Lbike/smarthalo/app/profile/ProfileCoordinatorContract;->showSaveConfirmation()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 20
    invoke-static {p0}, Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter$DefaultImpls;->onStart(Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 20
    invoke-static {p0}, Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter$DefaultImpls;->onStop(Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;)V

    return-void
.end method

.method public onWeightSelected()V
    .locals 4

    .line 91
    iget-object v0, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->profileCoordinator:Lbike/smarthalo/app/profile/ProfileCoordinatorContract;

    iget-object v1, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    invoke-virtual {v1}, Lbike/smarthalo/app/profile/ProfileViewState;->getWeight()Ljava/lang/Double;

    move-result-object v1

    iget-object v2, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    invoke-virtual {v2}, Lbike/smarthalo/app/profile/ProfileViewState;->isWeightMetric()Z

    move-result v2

    new-instance v3, Lbike/smarthalo/app/profile/ProfilePresenter$onWeightSelected$1;

    invoke-direct {v3, p0}, Lbike/smarthalo/app/profile/ProfilePresenter$onWeightSelected$1;-><init>(Lbike/smarthalo/app/profile/ProfilePresenter;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1, v2, v3}, Lbike/smarthalo/app/profile/ProfileCoordinatorContract;->pickWeight(Ljava/lang/Double;ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onWeightUnitChanged(Z)V
    .locals 1

    .line 81
    iget-object v0, p0, Lbike/smarthalo/app/profile/ProfilePresenter;->currentViewState:Lbike/smarthalo/app/profile/ProfileViewState;

    invoke-virtual {v0, p1}, Lbike/smarthalo/app/profile/ProfileViewState;->setWeightMetric(Z)V

    .line 82
    invoke-direct {p0}, Lbike/smarthalo/app/profile/ProfilePresenter;->updateSaveState()V

    return-void
.end method
