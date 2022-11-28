.class final Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$sendSentryReport$1;
.super Ljava/lang/Object;
.source "DebugAnalyticsController.kt"

# interfaces
.implements Lio/sentry/ScopeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->sendSentryReport(Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDebugAnalyticsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugAnalyticsController.kt\nbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$sendSentryReport$1\n*L\n1#1,284:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "scope",
        "Lio/sentry/Scope;",
        "kotlin.jvm.PlatformType",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $smartHaloOSCrash:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;

.field final synthetic this$0:Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$sendSentryReport$1;->this$0:Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;

    iput-object p2, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$sendSentryReport$1;->$smartHaloOSCrash:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lio/sentry/Scope;)V
    .locals 13

    .line 198
    iget-object v0, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$sendSentryReport$1;->this$0:Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;

    invoke-static {v0}, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->access$getDeviceStateController$p(Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;)Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;->getDeviceInformation()Lbike/smarthalo/sdk/models/DeviceInformation;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "nrfFirmware"

    .line 199
    iget-object v2, v0, Lbike/smarthalo/sdk/models/DeviceInformation;->nordicFirmwareVersion:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lio/sentry/Scope;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "nrfBootloader"

    .line 200
    iget-object v2, v0, Lbike/smarthalo/sdk/models/DeviceInformation;->nordicBootloaderVersion:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lio/sentry/Scope;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "stmFirmware"

    .line 201
    iget-object v2, v0, Lbike/smarthalo/sdk/models/DeviceInformation;->stmFirmwareVersion:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lio/sentry/Scope;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "stmBootloader"

    .line 202
    iget-object v0, v0, Lbike/smarthalo/sdk/models/DeviceInformation;->stmBootloaderVersion:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lio/sentry/Scope;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$sendSentryReport$1;->this$0:Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;

    invoke-static {v0}, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->access$getDeviceStateController$p(Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;)Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;->getDeviceState()Lbike/smarthalo/app/models/DeviceState;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "isCharging"

    .line 206
    iget-boolean v2, v0, Lbike/smarthalo/app/models/DeviceState;->isUSBPlugged:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lio/sentry/Scope;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "stateOfCharge"

    .line 207
    iget-object v2, v0, Lbike/smarthalo/app/models/DeviceState;->batteryLevel:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lio/sentry/Scope;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "temperature"

    .line 208
    iget-object v0, v0, Lbike/smarthalo/app/models/DeviceState;->temperatureLevel:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lio/sentry/Scope;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_1
    iget-object v0, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$sendSentryReport$1;->this$0:Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;

    invoke-static {v0}, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->access$getUserAuthLevelString(Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "auth"

    invoke-virtual {p1, v1, v0}, Lio/sentry/Scope;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_2
    iget-object v0, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$sendSentryReport$1;->this$0:Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->access$getStmLogFile(Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;Z)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v2, Lio/sentry/Attachment;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lio/sentry/Attachment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lio/sentry/Scope;->addAttachment(Lio/sentry/Attachment;)V

    .line 213
    :cond_3
    iget-object v0, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$sendSentryReport$1;->this$0:Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;

    invoke-static {v0, v1}, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->access$getBleLogsFile(Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;Z)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v2, Lio/sentry/Attachment;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lio/sentry/Attachment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lio/sentry/Scope;->addAttachment(Lio/sentry/Attachment;)V

    :cond_4
    const-string v0, "env"

    .line 214
    iget-object v2, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$sendSentryReport$1;->this$0:Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;

    invoke-static {v2}, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->access$getEnvironmentString(Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lio/sentry/Scope;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$sendSentryReport$1;->$smartHaloOSCrash:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;

    iget-object v0, v0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;->crashData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 217
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    const-string v2, "crash-data"

    .line 218
    invoke-virtual {v0, v2}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    .line 219
    iget-object v2, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$sendSentryReport$1;->$smartHaloOSCrash:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;

    iget-object v2, v2, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;->crashData:Ljava/util/List;

    const-string v3, "smartHaloOSCrash.crashData"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v2

    check-cast v4, Ljava/lang/Iterable;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3f

    const/4 v12, 0x0

    invoke-static/range {v4 .. v12}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/Breadcrumb;->setMessage(Ljava/lang/String;)V

    .line 220
    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-virtual {v0, v2}, Lio/sentry/Breadcrumb;->setLevel(Lio/sentry/SentryLevel;)V

    .line 221
    invoke-virtual {p1, v0}, Lio/sentry/Scope;->addBreadcrumb(Lio/sentry/Breadcrumb;)V

    .line 223
    :cond_5
    new-instance p1, Lio/sentry/SentryEvent;

    invoke-direct {p1}, Lio/sentry/SentryEvent;-><init>()V

    .line 225
    new-instance v0, Lio/sentry/protocol/Message;

    invoke-direct {v0}, Lio/sentry/protocol/Message;-><init>()V

    .line 226
    iget-object v2, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$sendSentryReport$1;->$smartHaloOSCrash:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;

    invoke-virtual {v2}, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/Message;->setMessage(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p1, v0}, Lio/sentry/SentryEvent;->setMessage(Lio/sentry/protocol/Message;)V

    .line 229
    sget-object v0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->Companion:Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$Companion;

    invoke-virtual {v0}, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$Companion;->getSMARTHALO_OS_PLATFORM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/SentryEvent;->setPlatform(Ljava/lang/String;)V

    .line 231
    new-instance v0, Lio/sentry/protocol/SentryException;

    invoke-direct {v0}, Lio/sentry/protocol/SentryException;-><init>()V

    .line 232
    iget-object v2, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$sendSentryReport$1;->$smartHaloOSCrash:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;

    iget-object v2, v2, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lio/sentry/protocol/SentryException;->setValue(Ljava/lang/String;)V

    .line 233
    iget-object v2, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$sendSentryReport$1;->$smartHaloOSCrash:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;

    iget-object v2, v2, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;->crashType:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    invoke-virtual {v2}, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/SentryException;->setType(Ljava/lang/String;)V

    .line 234
    new-instance v2, Lio/sentry/protocol/SentryStackFrame;

    invoke-direct {v2}, Lio/sentry/protocol/SentryStackFrame;-><init>()V

    .line 235
    iget-object v3, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$sendSentryReport$1;->$smartHaloOSCrash:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;

    iget-object v3, v3, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lio/sentry/protocol/SentryStackFrame;->setRawFunction(Ljava/lang/String;)V

    .line 236
    new-instance v3, Lio/sentry/protocol/SentryStackTrace;

    new-array v4, v1, [Lio/sentry/protocol/SentryStackFrame;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {v3, v2}, Lio/sentry/protocol/SentryStackTrace;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v3}, Lio/sentry/protocol/SentryException;->setStacktrace(Lio/sentry/protocol/SentryStackTrace;)V

    .line 237
    new-array v1, v1, [Lio/sentry/protocol/SentryException;

    aput-object v0, v1, v5

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Lio/sentry/SentryEvent;->setExceptions(Ljava/util/List;)V

    .line 239
    invoke-static {p1}, Lio/sentry/Sentry;->captureEvent(Lio/sentry/SentryEvent;)Lio/sentry/protocol/SentryId;

    move-result-object p1

    const-string v0, "Sentry.captureEvent(sentryEvent)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    sget-object v0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->Companion:Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$Companion;

    invoke-virtual {v0}, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Logging Sentry Crash "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$sendSentryReport$1;->$smartHaloOSCrash:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;

    iget-object v2, v2, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;->crashType:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;

    invoke-virtual {v2}, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash$CrashType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
