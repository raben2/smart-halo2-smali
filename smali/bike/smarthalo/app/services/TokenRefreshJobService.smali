.class public Lbike/smarthalo/app/services/TokenRefreshJobService;
.super Landroid/app/job/JobService;
.source "TokenRefreshJobService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TokenRefreshJobService"

.field public static final TOKEN_REFRESH_JOB_ID:I = 0x8

.field public static final TOKEN_REFRESH_PERIOD:J = 0x36ee80L


# instance fields
.field authenticationManager:Lbike/smarthalo/app/managers/contracts/AuthenticationContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private tokenRefreshSubscription:Lio/reactivex/disposables/Disposable;

.field userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method private clearSubscription()V
    .locals 1

    .line 39
    iget-object v0, p0, Lbike/smarthalo/app/services/TokenRefreshJobService;->tokenRefreshSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 40
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lbike/smarthalo/app/services/TokenRefreshJobService;->tokenRefreshSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private handleResult(Lbike/smarthalo/app/models/TokenRefreshState;Landroid/app/job/JobParameters;)V
    .locals 2

    .line 71
    sget-object v0, Lbike/smarthalo/app/models/TokenRefreshState;->NetworkError:Lbike/smarthalo/app/models/TokenRefreshState;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 72
    invoke-virtual {p0, p2, p1}, Lbike/smarthalo/app/services/TokenRefreshJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    goto :goto_0

    .line 73
    :cond_0
    sget-object v0, Lbike/smarthalo/app/models/TokenRefreshState;->ForbiddenTokenError:Lbike/smarthalo/app/models/TokenRefreshState;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    const-string p1, "FORBIDDEN_ERROR_ON_TOKEN_REFRESH"

    .line 74
    invoke-static {p0, p1}, Lbike/smarthalo/app/analytics/AnalyticsHelper;->sendAnalyticsEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, p2, v1}, Lbike/smarthalo/app/services/TokenRefreshJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 76
    iget-object p1, p0, Lbike/smarthalo/app/services/TokenRefreshJobService;->authenticationManager:Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    invoke-interface {p1}, Lbike/smarthalo/app/managers/contracts/AuthenticationContract;->logout()V

    goto :goto_0

    .line 77
    :cond_1
    sget-object v0, Lbike/smarthalo/app/models/TokenRefreshState;->NullTokensError:Lbike/smarthalo/app/models/TokenRefreshState;

    if-ne p1, v0, :cond_2

    .line 78
    invoke-virtual {p0, p2, v1}, Lbike/smarthalo/app/services/TokenRefreshJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 79
    iget-object p1, p0, Lbike/smarthalo/app/services/TokenRefreshJobService;->authenticationManager:Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    invoke-interface {p1}, Lbike/smarthalo/app/managers/contracts/AuthenticationContract;->logout()V

    goto :goto_0

    .line 80
    :cond_2
    sget-object v0, Lbike/smarthalo/app/models/TokenRefreshState;->NoNeedToRefresh:Lbike/smarthalo/app/models/TokenRefreshState;

    if-ne p1, v0, :cond_3

    .line 81
    invoke-virtual {p0, p2, v1}, Lbike/smarthalo/app/services/TokenRefreshJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    goto :goto_0

    .line 82
    :cond_3
    sget-object v0, Lbike/smarthalo/app/models/TokenRefreshState;->Success:Lbike/smarthalo/app/models/TokenRefreshState;

    if-ne p1, v0, :cond_4

    .line 83
    invoke-virtual {p0, p2, v1}, Lbike/smarthalo/app/services/TokenRefreshJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static synthetic lambda$onStartJob$0(Lbike/smarthalo/app/services/TokenRefreshJobService;Landroid/app/job/JobParameters;Lbike/smarthalo/app/models/TokenRefreshState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 59
    invoke-direct {p0, p2, p1}, Lbike/smarthalo/app/services/TokenRefreshJobService;->handleResult(Lbike/smarthalo/app/models/TokenRefreshState;Landroid/app/job/JobParameters;)V

    return-void
.end method

.method public static synthetic lambda$onStartJob$1(Lbike/smarthalo/app/services/TokenRefreshJobService;Landroid/app/job/JobParameters;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p2, 0x0

    .line 60
    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/app/services/TokenRefreshJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    .line 47
    invoke-static {p0}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getCoreComponent(Landroid/content/Context;)Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;->inject(Lbike/smarthalo/app/services/TokenRefreshJobService;)V

    .line 49
    iget-object v0, p0, Lbike/smarthalo/app/services/TokenRefreshJobService;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    invoke-direct {p0}, Lbike/smarthalo/app/services/TokenRefreshJobService;->clearSubscription()V

    .line 54
    iget-object v0, p0, Lbike/smarthalo/app/services/TokenRefreshJobService;->authenticationManager:Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    .line 55
    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/AuthenticationContract;->launchTokenRefreshFlow()Lio/reactivex/Single;

    move-result-object v0

    .line 56
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 57
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/services/-$$Lambda$TokenRefreshJobService$wrYr9XEkSscDYvdSukvjYhN9qk8;

    invoke-direct {v1, p0, p1}, Lbike/smarthalo/app/services/-$$Lambda$TokenRefreshJobService$wrYr9XEkSscDYvdSukvjYhN9qk8;-><init>(Lbike/smarthalo/app/services/TokenRefreshJobService;Landroid/app/job/JobParameters;)V

    new-instance v2, Lbike/smarthalo/app/services/-$$Lambda$TokenRefreshJobService$-4Hdv1CtkjLrLdaXe7sQwfvkaIU;

    invoke-direct {v2, p0, p1}, Lbike/smarthalo/app/services/-$$Lambda$TokenRefreshJobService$-4Hdv1CtkjLrLdaXe7sQwfvkaIU;-><init>(Lbike/smarthalo/app/services/TokenRefreshJobService;Landroid/app/job/JobParameters;)V

    .line 58
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/services/TokenRefreshJobService;->tokenRefreshSubscription:Lio/reactivex/disposables/Disposable;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, p1, v0}, Lbike/smarthalo/app/services/TokenRefreshJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 89
    invoke-direct {p0}, Lbike/smarthalo/app/services/TokenRefreshJobService;->clearSubscription()V

    const/4 p1, 0x0

    return p1
.end method
