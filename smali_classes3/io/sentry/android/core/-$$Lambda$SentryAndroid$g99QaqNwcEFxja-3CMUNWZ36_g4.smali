.class public final synthetic Lio/sentry/android/core/-$$Lambda$SentryAndroid$g99QaqNwcEFxja-3CMUNWZ36_g4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/sentry/Sentry$OptionsConfiguration;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;

.field private final synthetic f$1:Lio/sentry/ILogger;

.field private final synthetic f$2:Lio/sentry/Sentry$OptionsConfiguration;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/Sentry$OptionsConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/-$$Lambda$SentryAndroid$g99QaqNwcEFxja-3CMUNWZ36_g4;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lio/sentry/android/core/-$$Lambda$SentryAndroid$g99QaqNwcEFxja-3CMUNWZ36_g4;->f$1:Lio/sentry/ILogger;

    iput-object p3, p0, Lio/sentry/android/core/-$$Lambda$SentryAndroid$g99QaqNwcEFxja-3CMUNWZ36_g4;->f$2:Lio/sentry/Sentry$OptionsConfiguration;

    return-void
.end method


# virtual methods
.method public final configure(Lio/sentry/SentryOptions;)V
    .locals 3

    iget-object v0, p0, Lio/sentry/android/core/-$$Lambda$SentryAndroid$g99QaqNwcEFxja-3CMUNWZ36_g4;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lio/sentry/android/core/-$$Lambda$SentryAndroid$g99QaqNwcEFxja-3CMUNWZ36_g4;->f$1:Lio/sentry/ILogger;

    iget-object v2, p0, Lio/sentry/android/core/-$$Lambda$SentryAndroid$g99QaqNwcEFxja-3CMUNWZ36_g4;->f$2:Lio/sentry/Sentry$OptionsConfiguration;

    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    invoke-static {v0, v1, v2, p1}, Lio/sentry/android/core/SentryAndroid;->lambda$init$1(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/Sentry$OptionsConfiguration;Lio/sentry/android/core/SentryAndroidOptions;)V

    return-void
.end method
