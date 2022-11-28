.class public final synthetic Lio/sentry/android/core/-$$Lambda$AppLifecycleIntegration$q1qzdtzMh5E4OH5R-VItJ38UlZ8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lio/sentry/android/core/AppLifecycleIntegration;

.field private final synthetic f$1:Lio/sentry/IHub;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/AppLifecycleIntegration;Lio/sentry/IHub;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/-$$Lambda$AppLifecycleIntegration$q1qzdtzMh5E4OH5R-VItJ38UlZ8;->f$0:Lio/sentry/android/core/AppLifecycleIntegration;

    iput-object p2, p0, Lio/sentry/android/core/-$$Lambda$AppLifecycleIntegration$q1qzdtzMh5E4OH5R-VItJ38UlZ8;->f$1:Lio/sentry/IHub;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/sentry/android/core/-$$Lambda$AppLifecycleIntegration$q1qzdtzMh5E4OH5R-VItJ38UlZ8;->f$0:Lio/sentry/android/core/AppLifecycleIntegration;

    iget-object v1, p0, Lio/sentry/android/core/-$$Lambda$AppLifecycleIntegration$q1qzdtzMh5E4OH5R-VItJ38UlZ8;->f$1:Lio/sentry/IHub;

    invoke-static {v0, v1}, Lio/sentry/android/core/AppLifecycleIntegration;->lambda$register$0(Lio/sentry/android/core/AppLifecycleIntegration;Lio/sentry/IHub;)V

    return-void
.end method
