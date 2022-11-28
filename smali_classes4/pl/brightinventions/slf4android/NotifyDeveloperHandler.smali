.class public Lpl/brightinventions/slf4android/NotifyDeveloperHandler;
.super Ljava/util/logging/Handler;
.source "NotifyDeveloperHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/brightinventions/slf4android/NotifyDeveloperHandler$ShowDialogBecauseOfRecord;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NotifyDeveloperHandler"


# instance fields
.field private final activityState:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lpl/brightinventions/slf4android/ActivityStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private attachmentClassList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private dialog:Landroid/app/AlertDialog;

.field private final emailAddress:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private emailBody:Ljava/lang/String;

.field private emailSubject:Ljava/lang/String;

.field private filter:Ljava/util/logging/Filter;

.field private mailLoopHandler:Landroid/os/Handler;

.field private final shakeDetector:Lcom/squareup/seismic/ShakeDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/app/Application;Ljava/lang/Iterable;Lpl/brightinventions/slf4android/ActivityStateListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Lpl/brightinventions/slf4android/ActivityStateListener;",
            ")V"
        }
    .end annotation

    .line 38
    sget-object v0, Lpl/brightinventions/slf4android/LogLevel;->ERROR:Lpl/brightinventions/slf4android/LogLevel;

    invoke-direct {p0, p1, p2, v0, p3}, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;-><init>(Landroid/app/Application;Ljava/lang/Iterable;Lpl/brightinventions/slf4android/LogLevel;Lpl/brightinventions/slf4android/ActivityStateListener;)V

    return-void
.end method

.method constructor <init>(Landroid/app/Application;Ljava/lang/Iterable;Lpl/brightinventions/slf4android/LogLevel;Lpl/brightinventions/slf4android/ActivityStateListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Lpl/brightinventions/slf4android/LogLevel;",
            "Lpl/brightinventions/slf4android/ActivityStateListener;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->mailLoopHandler:Landroid/os/Handler;

    .line 42
    iput-object p1, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->context:Landroid/content/Context;

    .line 43
    invoke-static {p2}, Lpl/brightinventions/slf4android/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->emailAddress:Ljava/util/List;

    .line 44
    new-instance p2, Lpl/brightinventions/slf4android/AtLeastFilter;

    invoke-direct {p2, p3}, Lpl/brightinventions/slf4android/AtLeastFilter;-><init>(Lpl/brightinventions/slf4android/LogLevel;)V

    iput-object p2, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->filter:Ljava/util/logging/Filter;

    .line 45
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->activityState:Ljava/lang/ref/WeakReference;

    .line 46
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->attachmentClassList:Ljava/util/ArrayList;

    .line 47
    new-instance p2, Lcom/squareup/seismic/ShakeDetector;

    new-instance p3, Lpl/brightinventions/slf4android/NotifyDeveloperHandler$1;

    invoke-direct {p3, p0}, Lpl/brightinventions/slf4android/NotifyDeveloperHandler$1;-><init>(Lpl/brightinventions/slf4android/NotifyDeveloperHandler;)V

    invoke-direct {p2, p3}, Lcom/squareup/seismic/ShakeDetector;-><init>(Lcom/squareup/seismic/ShakeDetector$Listener;)V

    iput-object p2, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->shakeDetector:Lcom/squareup/seismic/ShakeDetector;

    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget p3, Lpl/brightinventions/slf4android/R$string;->slf4android_email_subject:I

    invoke-virtual {p1, p3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->emailSubject:Ljava/lang/String;

    .line 63
    sget p2, Lpl/brightinventions/slf4android/R$string;->slf4android_email_extra_text:I

    invoke-virtual {p1, p2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->emailBody:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lpl/brightinventions/slf4android/NotifyDeveloperHandler;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 24
    iget-object p0, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->activityState:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$100(Lpl/brightinventions/slf4android/NotifyDeveloperHandler;Ljava/util/logging/LogRecord;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->beginPublishOnMainThread(Ljava/util/logging/LogRecord;)V

    return-void
.end method

.method static synthetic access$1000(Lpl/brightinventions/slf4android/NotifyDeveloperHandler;)Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lpl/brightinventions/slf4android/NotifyDeveloperHandler;)Z
    .locals 0

    .line 24
    invoke-direct {p0}, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->isQuestionPending()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lpl/brightinventions/slf4android/NotifyDeveloperHandler;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->destroyDialog()V

    return-void
.end method

.method static synthetic access$502(Lpl/brightinventions/slf4android/NotifyDeveloperHandler;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 24
    iput-object p1, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->dialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$600(Lpl/brightinventions/slf4android/NotifyDeveloperHandler;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->emailAddress:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lpl/brightinventions/slf4android/NotifyDeveloperHandler;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->emailSubject:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lpl/brightinventions/slf4android/NotifyDeveloperHandler;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->emailBody:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lpl/brightinventions/slf4android/NotifyDeveloperHandler;)Ljava/util/ArrayList;
    .locals 0

    .line 24
    invoke-direct {p0}, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->getAttachmentClassList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private beginPublishOnMainThread(Ljava/util/logging/LogRecord;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->mailLoopHandler:Landroid/os/Handler;

    new-instance v1, Lpl/brightinventions/slf4android/NotifyDeveloperHandler$ShowDialogBecauseOfRecord;

    invoke-static {p1}, Lpl/brightinventions/slf4android/LogRecord;->fromRecord(Ljava/util/logging/LogRecord;)Lpl/brightinventions/slf4android/LogRecord;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lpl/brightinventions/slf4android/NotifyDeveloperHandler$ShowDialogBecauseOfRecord;-><init>(Lpl/brightinventions/slf4android/NotifyDeveloperHandler;Lpl/brightinventions/slf4android/LogRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private destroyDialog()V
    .locals 1

    .line 106
    iget-object v0, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->dialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private getAttachmentClassList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->attachmentClassList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private isQuestionPending()Z
    .locals 1

    .line 102
    iget-object v0, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public addAttachmentClass(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/AsyncTask<",
            "Landroid/content/Context;",
            "Ljava/lang/Void;",
            "Ljava/io/File;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 117
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    iget-object v0, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->attachmentClassList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 119
    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t create attachment factory from class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 114
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "attachmentClass must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 2

    .line 83
    iget-object v0, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->mailLoopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 87
    :cond_0
    iget-object v0, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->shakeDetector:Lcom/squareup/seismic/ShakeDetector;

    invoke-virtual {v0}, Lcom/squareup/seismic/ShakeDetector;->stop()V

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public notifyWhenDeviceIsShaken()V
    .locals 2

    .line 125
    iget-object v0, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->activityState:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->context:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 128
    sget-object v0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->TAG:Ljava/lang/String;

    const-string v1, "Sensor manager is null will not install shake reporter"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 130
    :cond_0
    iget-object v1, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->shakeDetector:Lcom/squareup/seismic/ShakeDetector;

    invoke-virtual {v1, v0}, Lcom/squareup/seismic/ShakeDetector;->start(Landroid/hardware/SensorManager;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 131
    sget-object v0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->TAG:Ljava/lang/String;

    const-string v1, "Failed to start shake detector"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 135
    :cond_1
    sget-object v0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->TAG:Ljava/lang/String;

    const-string v1, "Will not notify on shake - can\'t detect if app is in foreground (API < 14)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->filter:Ljava/util/logging/Filter;

    invoke-interface {v0, p1}, Ljava/util/logging/Filter;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-direct {p0, p1}, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->beginPublishOnMainThread(Ljava/util/logging/LogRecord;)V

    :cond_0
    return-void
.end method

.method public setFilter(Ljava/util/logging/Filter;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 78
    iput-object p1, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->filter:Ljava/util/logging/Filter;

    return-void

    .line 76
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Filter must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMinLogLevel(Lpl/brightinventions/slf4android/LogLevel;)V
    .locals 1

    .line 71
    new-instance v0, Lpl/brightinventions/slf4android/AtLeastFilter;

    invoke-direct {v0, p1}, Lpl/brightinventions/slf4android/AtLeastFilter;-><init>(Lpl/brightinventions/slf4android/LogLevel;)V

    invoke-virtual {p0, v0}, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->setFilter(Ljava/util/logging/Filter;)V

    return-void
.end method

.method public shouldClearLogcatAfterSuccessfulRead(Z)Lpl/brightinventions/slf4android/NotifyDeveloperHandler;
    .locals 1

    .line 159
    invoke-static {}, Lpl/brightinventions/slf4android/ReadLogcatEntriesAsyncTask;->getConfiguration()Lpl/brightinventions/slf4android/LogcatReadingConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lpl/brightinventions/slf4android/LogcatReadingConfiguration;->clearLogcat(Z)Lpl/brightinventions/slf4android/LogcatReadingConfiguration;

    return-object p0
.end method

.method public withBody(Ljava/lang/String;)Lpl/brightinventions/slf4android/NotifyDeveloperHandler;
    .locals 0

    .line 150
    iput-object p1, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->emailBody:Ljava/lang/String;

    return-object p0
.end method

.method public withSubject(Ljava/lang/String;)Lpl/brightinventions/slf4android/NotifyDeveloperHandler;
    .locals 0

    .line 145
    iput-object p1, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->emailSubject:Ljava/lang/String;

    return-object p0
.end method
