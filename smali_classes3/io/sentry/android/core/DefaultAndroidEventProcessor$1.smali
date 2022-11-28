.class synthetic Lio/sentry/android/core/DefaultAndroidEventProcessor$1;
.super Ljava/lang/Object;
.source "DefaultAndroidEventProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/DefaultAndroidEventProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$sentry$android$core$util$ConnectivityChecker$Status:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 324
    invoke-static {}, Lio/sentry/android/core/util/ConnectivityChecker$Status;->values()[Lio/sentry/android/core/util/ConnectivityChecker$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/sentry/android/core/DefaultAndroidEventProcessor$1;->$SwitchMap$io$sentry$android$core$util$ConnectivityChecker$Status:[I

    :try_start_0
    sget-object v0, Lio/sentry/android/core/DefaultAndroidEventProcessor$1;->$SwitchMap$io$sentry$android$core$util$ConnectivityChecker$Status:[I

    sget-object v1, Lio/sentry/android/core/util/ConnectivityChecker$Status;->NOT_CONNECTED:Lio/sentry/android/core/util/ConnectivityChecker$Status;

    invoke-virtual {v1}, Lio/sentry/android/core/util/ConnectivityChecker$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lio/sentry/android/core/DefaultAndroidEventProcessor$1;->$SwitchMap$io$sentry$android$core$util$ConnectivityChecker$Status:[I

    sget-object v1, Lio/sentry/android/core/util/ConnectivityChecker$Status;->CONNECTED:Lio/sentry/android/core/util/ConnectivityChecker$Status;

    invoke-virtual {v1}, Lio/sentry/android/core/util/ConnectivityChecker$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
