.class public Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrashReporter;
.super Ljava/lang/Object;
.source "SmartHaloOSCrashReporter.java"

# interfaces
.implements Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrashReporterContract;


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartHaloOSCrashReporter"


# instance fields
.field private bleNotificationSource:Lbike/smarthalo/sdk/bluetooth/bleNotifications/BleNotificationSourceContract;

.field private bleNotificationSubscription:Lio/reactivex/disposables/Disposable;

.field private currentCrash:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;

.field private debugLogger:Lbike/smarthalo/sdk/helpers/DebugLoggerContract;

.field private smartHaloOSCrashSource:Lio/reactivex/processors/FlowableProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/FlowableProcessor<",
            "Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lbike/smarthalo/sdk/bluetooth/bleNotifications/BleNotificationSourceContract;Lbike/smarthalo/sdk/helpers/DebugLoggerContract;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Lio/reactivex/processors/PublishProcessor;->create()Lio/reactivex/processors/PublishProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/processors/PublishProcessor;->toSerialized()Lio/reactivex/processors/FlowableProcessor;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrashReporter;->smartHaloOSCrashSource:Lio/reactivex/processors/FlowableProcessor;

    .line 24
    iput-object p2, p0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrashReporter;->debugLogger:Lbike/smarthalo/sdk/helpers/DebugLoggerContract;

    .line 27
    invoke-interface {p1}, Lbike/smarthalo/sdk/bluetooth/bleNotifications/BleNotificationSourceContract;->observeStmLogs()Lio/reactivex/Flowable;

    move-result-object p1

    new-instance p2, Lbike/smarthalo/sdk/stmUtils/-$$Lambda$SmartHaloOSCrashReporter$9aeqqKAnp3WUlPZy0KqLIXGWs_k;

    invoke-direct {p2, p0}, Lbike/smarthalo/sdk/stmUtils/-$$Lambda$SmartHaloOSCrashReporter$9aeqqKAnp3WUlPZy0KqLIXGWs_k;-><init>(Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrashReporter;)V

    .line 28
    invoke-virtual {p1, p2}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrashReporter;->bleNotificationSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private buildSHOSCrashLog(Ljava/lang/String;)V
    .locals 3

    .line 32
    invoke-static {p1}, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;->build(Ljava/lang/String;)Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 34
    iget-object v0, p1, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;->crashType:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    sget-object v1, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;->CrashDataPart:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    if-ne v0, v1, :cond_0

    .line 35
    iget-object v0, p0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrashReporter;->currentCrash:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;

    iget-object v0, v0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;->crashData:Ljava/util/List;

    iget-object p1, p1, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;->id:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p1, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;->crashType:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    sget-object v1, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;->Other:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    if-eq v0, v1, :cond_1

    .line 37
    iput-object p1, p0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrashReporter;->currentCrash:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;

    .line 40
    :cond_1
    :goto_0
    iget-object p1, p0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrashReporter;->currentCrash:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;->isValid()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 41
    iget-object p1, p0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrashReporter;->smartHaloOSCrashSource:Lio/reactivex/processors/FlowableProcessor;

    iget-object v0, p0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrashReporter;->currentCrash:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;

    invoke-virtual {p1, v0}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    .line 42
    iget-object p1, p0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrashReporter;->debugLogger:Lbike/smarthalo/sdk/helpers/DebugLoggerContract;

    sget-object v0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrashReporter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STM Crash : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrashReporter;->currentCrash:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;

    iget-object v2, v2, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;->crashType:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    invoke-virtual {v2}, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lbike/smarthalo/sdk/helpers/DebugLoggerContract;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrashReporter;->currentCrash:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;

    :cond_2
    return-void
.end method

.method public static synthetic lambda$9aeqqKAnp3WUlPZy0KqLIXGWs_k(Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrashReporter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrashReporter;->buildSHOSCrashLog(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 50
    iget-object v0, p0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrashReporter;->bleNotificationSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 51
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrashReporter;->bleNotificationSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public observeSmartHaloOSCrash()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrashReporter;->smartHaloOSCrashSource:Lio/reactivex/processors/FlowableProcessor;

    return-object v0
.end method
