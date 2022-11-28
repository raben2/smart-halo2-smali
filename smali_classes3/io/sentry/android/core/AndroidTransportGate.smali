.class final Lio/sentry/android/core/AndroidTransportGate;
.super Ljava/lang/Object;
.source "AndroidTransportGate.java"

# interfaces
.implements Lio/sentry/transport/ITransportGate;


# instance fields
.field private final context:Landroid/content/Context;

.field private final logger:Lio/sentry/ILogger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lio/sentry/ILogger;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/sentry/ILogger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lio/sentry/android/core/AndroidTransportGate;->context:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Lio/sentry/android/core/AndroidTransportGate;->logger:Lio/sentry/ILogger;

    return-void
.end method


# virtual methods
.method public isConnected()Z
    .locals 2

    .line 22
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransportGate;->context:Landroid/content/Context;

    iget-object v1, p0, Lio/sentry/android/core/AndroidTransportGate;->logger:Lio/sentry/ILogger;

    invoke-static {v0, v1}, Lio/sentry/android/core/util/ConnectivityChecker;->getConnectionStatus(Landroid/content/Context;Lio/sentry/ILogger;)Lio/sentry/android/core/util/ConnectivityChecker$Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/android/core/AndroidTransportGate;->isConnected(Lio/sentry/android/core/util/ConnectivityChecker$Status;)Z

    move-result v0

    return v0
.end method

.method isConnected(Lio/sentry/android/core/util/ConnectivityChecker$Status;)Z
    .locals 1
    .param p1    # Lio/sentry/android/core/util/ConnectivityChecker$Status;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/TestOnly;
    .end annotation

    .line 29
    sget-object v0, Lio/sentry/android/core/AndroidTransportGate$1;->$SwitchMap$io$sentry$android$core$util$ConnectivityChecker$Status:[I

    invoke-virtual {p1}, Lio/sentry/android/core/util/ConnectivityChecker$Status;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
