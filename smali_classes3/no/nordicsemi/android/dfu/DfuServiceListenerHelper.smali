.class public Lno/nordicsemi/android/dfu/DfuServiceListenerHelper;
.super Ljava/lang/Object;
.source "DfuServiceListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;,
        Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;
    }
.end annotation


# static fields
.field private static mLogBroadcastReceiver:Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;

.field private static mProgressBroadcastReceiver:Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 52
    invoke-static {p0}, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper;->getIncrementedAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getIncrementedAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0xf

    const/4 v1, 0x0

    .line 392
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 393
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 394
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%02X"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/16 v6, 0x10

    invoke-static {p0, v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr p0, v4

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v1

    invoke-static {v0, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static registerLogListener(Landroid/content/Context;Lno/nordicsemi/android/dfu/DfuLogListener;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lno/nordicsemi/android/dfu/DfuLogListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 344
    sget-object v0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper;->mLogBroadcastReceiver:Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;

    if-nez v0, :cond_0

    .line 345
    new-instance v0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;-><init>(Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$1;)V

    sput-object v0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper;->mLogBroadcastReceiver:Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;

    .line 347
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "no.nordicsemi.android.dfu.broadcast.BROADCAST_LOG"

    .line 348
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 349
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    sget-object v1, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper;->mLogBroadcastReceiver:Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 351
    :cond_0
    sget-object p0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper;->mLogBroadcastReceiver:Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;

    invoke-static {p0, p1}, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;->access$600(Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;Lno/nordicsemi/android/dfu/DfuLogListener;)V

    return-void
.end method

.method public static registerLogListener(Landroid/content/Context;Lno/nordicsemi/android/dfu/DfuLogListener;Ljava/lang/String;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lno/nordicsemi/android/dfu/DfuLogListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 364
    sget-object v0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper;->mLogBroadcastReceiver:Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;

    if-nez v0, :cond_0

    .line 365
    new-instance v0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;-><init>(Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$1;)V

    sput-object v0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper;->mLogBroadcastReceiver:Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;

    .line 367
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "no.nordicsemi.android.dfu.broadcast.BROADCAST_LOG"

    .line 368
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 369
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    sget-object v1, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper;->mLogBroadcastReceiver:Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 371
    :cond_0
    sget-object p0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper;->mLogBroadcastReceiver:Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;

    invoke-static {p0, p2, p1}, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;->access$700(Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;Ljava/lang/String;Lno/nordicsemi/android/dfu/DfuLogListener;)V

    return-void
.end method

.method public static registerProgressListener(Landroid/content/Context;Lno/nordicsemi/android/dfu/DfuProgressListener;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lno/nordicsemi/android/dfu/DfuProgressListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 288
    sget-object v0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper;->mProgressBroadcastReceiver:Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;

    if-nez v0, :cond_0

    .line 289
    new-instance v0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;-><init>(Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$1;)V

    sput-object v0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper;->mProgressBroadcastReceiver:Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;

    .line 291
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "no.nordicsemi.android.dfu.broadcast.BROADCAST_PROGRESS"

    .line 292
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "no.nordicsemi.android.dfu.broadcast.BROADCAST_ERROR"

    .line 293
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    sget-object v1, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper;->mProgressBroadcastReceiver:Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;

    invoke-virtual {p0, v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 296
    :cond_0
    sget-object p0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper;->mProgressBroadcastReceiver:Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;

    invoke-static {p0, p1}, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;->access$200(Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;Lno/nordicsemi/android/dfu/DfuProgressListener;)V

    return-void
.end method

.method public static registerProgressListener(Landroid/content/Context;Lno/nordicsemi/android/dfu/DfuProgressListener;Ljava/lang/String;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lno/nordicsemi/android/dfu/DfuProgressListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 309
    sget-object v0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper;->mProgressBroadcastReceiver:Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;-><init>(Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$1;)V

    sput-object v0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper;->mProgressBroadcastReceiver:Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;

    .line 312
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "no.nordicsemi.android.dfu.broadcast.BROADCAST_PROGRESS"

    .line 313
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "no.nordicsemi.android.dfu.broadcast.BROADCAST_ERROR"

    .line 314
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    sget-object v1, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper;->mProgressBroadcastReceiver:Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;

    invoke-virtual {p0, v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 317
    :cond_0
    sget-object p0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper;->mProgressBroadcastReceiver:Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;

    invoke-static {p0, p2, p1}, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;->access$300(Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;Ljava/lang/String;Lno/nordicsemi/android/dfu/DfuProgressListener;)V

    return-void
.end method

.method public static unregisterLogListener(Landroid/content/Context;Lno/nordicsemi/android/dfu/DfuLogListener;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lno/nordicsemi/android/dfu/DfuLogListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 381
    sget-object v0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper;->mLogBroadcastReceiver:Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 382
    invoke-static {v0, p1}, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;->access$800(Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;Lno/nordicsemi/android/dfu/DfuLogListener;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 385
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    sget-object p1, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper;->mLogBroadcastReceiver:Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;

    invoke-virtual {p0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p0, 0x0

    .line 386
    sput-object p0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper;->mLogBroadcastReceiver:Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$LogBroadcastReceiver;

    :cond_0
    return-void
.end method

.method public static unregisterProgressListener(Landroid/content/Context;Lno/nordicsemi/android/dfu/DfuProgressListener;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lno/nordicsemi/android/dfu/DfuProgressListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 327
    sget-object v0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper;->mProgressBroadcastReceiver:Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;

    if-eqz v0, :cond_0

    .line 328
    invoke-static {v0, p1}, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;->access$400(Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;Lno/nordicsemi/android/dfu/DfuProgressListener;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 331
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    sget-object p1, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper;->mProgressBroadcastReceiver:Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;

    invoke-virtual {p0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p0, 0x0

    .line 332
    sput-object p0, Lno/nordicsemi/android/dfu/DfuServiceListenerHelper;->mProgressBroadcastReceiver:Lno/nordicsemi/android/dfu/DfuServiceListenerHelper$ProgressBroadcastsReceiver;

    :cond_0
    return-void
.end method
